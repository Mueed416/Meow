# Load playlist safely
playlist_source = playlist.safe("playlist.m3u")

# Fallback to a silent track if playlist fails
fallback_source = single("https://files.catbox.moe/98ueta.mp3")

# Combine so stream never stops
final_stream = fallback([playlist_source, fallback_source])

# Stream to Icecast
output.icecast(%mp3,
  host = "uk20freenew.listen2myradio.com",
  port = 37611,
  password = "MueedShah777",
  mount = "/stream",
  name = "My AutoDJ",
  description = "Streaming via Liquidsoap",
  genre = "Music"
, final_stream)
