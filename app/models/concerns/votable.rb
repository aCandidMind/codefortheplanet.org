module Votable
  def upvote!
    self.votes += 1
    save!
  end

  def downvote!
    self.votes -= 1
    save!
  end
end