# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Recipe.create(
  name: "Open Health Inspection allows assessing the cleanliness of local restaurants",
  description: "asd",
  tech: ["Open Data", "App Development"],
  purposes: ["Enlightenment & Awareness"]
)
Recipe.create(
  name: "A Scalable and Efficient Protocol for Anonymous Communication",
  description: "Anonymity is increasingly important for networked applications amidst concerns over cen-
  sorship and privacy. In this paper, we describe Herbivore, a peer-to-peer, scalable, tamper-resilient
  communication system that provides provable anonymity and privacy. Building on dining cryptogra-
  pher networks, Herbivore scales by partitioning the network into anonymizing cliques. Adversaries able
  to monitor all network traffic cannot deduce the identity of a sender or receiver beyond an anonymiz-
  ing clique. In addition to strong anonymity, Herbivore simultaneously provides high efficiency and
  scalability, distinguishing it from other anonymous communication protocols. Performance measure-
  ments from a prototype implementation show that the system can achieve high bandwidths and low
  latencies when deployed over the Internet.",
  tech: ["Distributed Systems", "Scalability"],
  purposes: ["Civic Tech"]
)
