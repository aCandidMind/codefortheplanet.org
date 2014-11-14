# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

name = "A Scalable and Efficient Protocol for Anonymous Communication"
Recipe.create(
  name: name,
  description: '<em>The following is a description taken from <a href="https://www.findpaperswelove.com">findpaperswelove.com</a></em>.
  Anonymity is increasingly important for networked applications amidst concerns over censorship and privacy.
  In this paper, we describe Herbivore, a peer-to-peer, scalable, tamper-resilient communication system that
  provides provable anonymity and privacy. Building on dining cryptographer networks, Herbivore scales by
  partitioning the network into anonymizing cliques. Adversaries able  to monitor all network traffic cannot
  deduce the identity of a sender or receiver beyond an anonymizing clique. In addition to strong anonymity,
  Herbivore simultaneously provides high efficiency and scalability, distinguishing it from other anonymous
  communication protocols. Performance measurements from a prototype implementation show that the system can
  achieve high bandwidths and low latencies when deployed over the Internet.',
  tech: ["Distributed Systems", "Scalability", "Cryptography"],
  purposes: ["Privacy", "Civic Tech"],
) unless Recipe.exists?(name: name)

name = "Android port of an iOS app for children that enables them to acoustically experience foreign languages"
Recipe.create(
  name: name,
  description: "There's an existing iOS app which enables children to acoustically experience foreign languages
  supporting the understanding among nations and get a sensibility for their multi-cultural peers.

  Because of the positive feedback the app should now be ported to Android as well. Please get in touch if
  you're interested.",
  tech: ["Sound", "App Development"],
  purposes: ["Child Development", "Integration", "Understanding Among Nations"]
) unless Recipe.exists?(name: name)

name = "Spotter & Finder (Geolocation) app for toilets for the disabled"
Recipe.create(
  name: name,
  description: "The app itself will enable users to enter toilets for the disabled into a database. This database
  and its Web API have to be developed as well. A user wanting to enter a toilet is supported with a 'Find Me' button.
  In the end its at least preferrable that the user enters the actual address and further details on how to find the
  toilet. For initial data there are some offline databases that can be imported into the database that was developed
  for the app.",
  tech: ["Geolocation", "Open Data", "App Development", "APIs"],
  purposes: ["Coping With Everyday Life", "Civic Tech"]
) unless Recipe.exists?(name: name)

name = "Assessing the cleanliness of local restaurants with open data"
Recipe.create(
  name: name,
  description: 'Develop a geolocation app - be it mobile or for the web - which makes it very easy and fast
  (because if it takes too many steps it won\'t be used) to get public health reports for restaurants near the user.

  One option is to show a map with pins and a list with restaurants sorted by distance. Clicking a pin or name
  in the list displays the report for that specific restaurant.

  Have a look at the <a href="https://github.com/Code4HR/open-health-inspection-app">Open Health Inspection App</a>
  on GitHub for an example project. If you know of any data sources for public health reports please edit this
  recipe and add them below.',
  tech: ["Open Data", "Geolocation", "App Development", "Web Development"],
  purposes: ["Stopping Diseases", "Enlightenment & Awareness"]
) unless Recipe.exists?(name: name)

# Recipe.create(
#   name: "",
#   description: "",
#   tech: [""],
#   purposes: [""],
# )