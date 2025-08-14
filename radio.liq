# Set the playlist
playlist = playlist("playlist.m3u")

# Stream to Icecast server
output.icecast(%mp3,
  host = "uk20freenew.listen2myradio.com",
  port = 37611,
  password = "MueedShah777",
  mount = "/stream",
  name = "My AutoDJ",
  description = "Streaming via Liquidsoap",
  genre = "Music"
, playlist)
