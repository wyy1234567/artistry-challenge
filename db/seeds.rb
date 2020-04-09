Artist.destroy_all 
Instrument.destroy_all
Post.destroy_all


Artist.create(name: "Michael Jackson", age: rand(50), title: "King of Pop")
Artist.create(name: "Stevie Wonder", age: rand(50), title: "Little Stevie Wonder")
Artist.create(name: "Elvis Presley", age: rand(50), title: "the King")
Artist.create(name: "Whitney Houston", age: rand(50), title: "The Voice")
Artist.create(name: "Beyoncé", age: rand(50), title: "Destiny's Child")

Instrument.create(name: "Guitar", classification: "Strings")
Instrument.create(name: "Violin", classification: "Strings")
Instrument.create(name: "Flute", classification: "Woodwind")
Instrument.create(name: "Xylophone", classification: "Percussion")

Post.create(name: "1P", artist: Artist.first, instrument: Instrument.last)
Post.create(name: "2p", artist: Artist.second, instrument: Instrument.first)
Post.create(name: "3p", artist: Artist.third, instrument: Instrument.second)
Post.create(name: "4p", artist: Artist.fourth, instrument: Instrument.third)
Post.create(name: "5p", artist: Artist.last, instrument: Instrument.first)
