# Description:
#   hubot cute bomb N
#   Receives a picture of: Tarsius, Fennec
#
# Commands:
#   hubot cute bomb 1
#   hubot cute bomb 2
#   hubot cute bomb N
#
# Author:
#   sagasu

cuteLinks = [
  "http://pin.primate.wisc.edu/fs/sheets/images/600lg.jpg",
  "https://upload.wikimedia.org/wikipedia/commons/c/cb/Tarsius_tarsier_Tandurusa_zoo.JPG",
  "https://alamendah.files.wordpress.com/2011/10/tarsius-siau-tarsius-tumpara.jpg",
  "http://www.tarsiusproject.org/wp-content/uploads/IMG_1396.jpg",
  "https://c2.staticflickr.com/2/1229/529768443_8de44f1c7a.jpg",
  "https://safasc.files.wordpress.com/2011/01/tarsius3.jpg",
  "https://s-media-cache-ak0.pinimg.com/236x/5d/49/f3/5d49f3503a461acae5ff007f4769cecd.jpg",
  "https://s-media-cache-ak0.pinimg.com/236x/6d/45/24/6d4524a629f0ddee5c628418dcacaced.jpg",
  "https://images6.alphacoders.com/428/428756.jpg",
  "https://s-media-cache-ak0.pinimg.com/736x/81/f5/2f/81f52fcc78b8e660827cf0a40ababc35.jpg",
  "http://fennecfoxes.net/wp-content/uploads/Animals_Wolves_and_Foxes_Fennec_Foxes_031090_.jpg",
  "http://cdn.pcwallart.com/images/fennec-fox-wallpaper-2.jpg"
]

module.exports = (robot) ->
  robot.respond /cute bomb( (\d+))?/i, (msg) ->
    count = msg.match[2] || 5
    elements = [1..count]
    Math.floor(Math.random() * cuteLinks.length)
    msg.send cuteLinks[Math.floor(Math.random() * cuteLinks.length)] for element in elements
