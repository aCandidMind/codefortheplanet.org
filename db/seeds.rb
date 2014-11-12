# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

Recipe.create(
  name: "A Scalable and Efficient Protocol for Anonymous Communication",
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
)

Recipe.create(
  name: "Android port of an iOS app for children that makes them acoustically experience foreign languages",
  description: "There's an existing iOS app which enables children to acoustically experience foreign languages
  supporting the understanding among nations and get a sensibility for their multi-cultural peers.

  Because of the positive feedback the app should now be ported to Android as well. Please get in touch if
  you're interested.",
  tech: ["Sound", "App Development"],
  purposes: ["Child Development", "Integration", "Understanding Among Nations"]
)

Recipe.create(
  name: "Assessing the cleanliness of local restaurants with open data",
  description: 'Develop a geolocation app - be it mobile or for the web - which makes it very easy and fast
  (because if it takes too many steps it won\'t be used) to get public health reports for restaurants near the user.

  One option is to show a map with pins and a list with restaurants sorted by distance. Clicking a pin or name
  in the list displays the report for that specific restaurant.

  Have a look at the <a href="https://github.com/Code4HR/open-health-inspection-app">Open Health Inspection App</a>
  on GitHub for an example project. If you know of any data sources for public health reports please edit this
  recipe and add them below.',
  tech: ["Open Data", "Geolocation", "App Development", "Web Development"],
  purposes: ["Stopping Diseases", "Enlightenment & Awareness"]
)

# Recipe.create(
#   name: "",
#   description: "",
#   tech: [""],
#   purposes: [""],
# )