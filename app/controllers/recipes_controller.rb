class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :edit, :update, :destroy]
  before_action :get_preset_tags, only: [:new, :edit]

  # GET /recipes
  # GET /recipes.json
  def index
    # list recipes grouped by tag
    #TODO Building a presenter here, would clean up the view. See issue #2.
    # Get tags, join them with their taggings & taggables to prevent n+1 queries.
    @taxonomy = (params[:taxonomy] || :tech).to_sym
    unless @taxonomy.in?(Recipe.rocket_tag.contexts)
      render nothing: true, status: 400 and return
    end
    @tags = Recipe.tags(on: @taxonomy).includes(taggings: :taggable)
  end

  # GET /recipes/1
  # GET /recipes/1.json
  def show
  end

  # GET /recipes/new
  def new
    @recipe = Recipe.new
    @recipe.contacts.build
  end

  # GET /recipes/1/edit
  def edit
    @recipe.contacts.build if @recipe.contacts.empty?
  end

  # POST /recipes
  # POST /recipes.json
  def create
    @recipe = Recipe.new(recipe_params)

    respond_to do |format|
      if @recipe.save
        format.html { redirect_to @recipe, notice: 'Recipe was successfully created.' }
        format.json { render :show, status: :created, location: @recipe }
      else
        format.html {
          get_preset_tags
          @recipe.contacts.build if @recipe.contacts.empty?
          render :new
        }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recipes/1
  # PATCH/PUT /recipes/1.json
  def update
    respond_to do |format|
      if @recipe.update(recipe_params)
        format.html { redirect_to @recipe, notice: 'Recipe was successfully updated.' }
        format.json { render :show, status: :ok, location: @recipe }
      else
        format.html {
          get_preset_tags
          @recipe.contacts.build if @recipe.contacts.empty?
          render :edit
        }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recipes/1
  # DELETE /recipes/1.json
  def destroy
    @recipe.destroy
    respond_to do |format|
      format.html { redirect_to recipes_url, notice: 'Recipe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  protected

    # Use callbacks to share common setup or constraints between actions.
    def set_recipe
      @recipe = Recipe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recipe_params
      contacts_attributes = {contacts_attributes: [
        :id, :name, :website, :email, :telephone, :twitter_handle, :facebook_name, :google_plus_name, :street, :country
      ]}

      result = params.require(:recipe).permit(:name, :description, :tech, :purposes, contacts_attributes)

      # split tag strings on comma for all tag contexts
      Recipe.rocket_tag.contexts.each do |context|
        tag_string = result[context]
        if tag_string.present?
          result[context] = tag_string.split(',')
        end
      end

      result
    end

    def get_preset_tags
      @tech_tags = Recipe.tags(on:  :tech).where(preset: true)
      @purpose_tags = Recipe.tags(on:  :purposes).where(preset: true)
    end
end
