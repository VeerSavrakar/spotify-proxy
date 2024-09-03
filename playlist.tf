resource "spotify_playlist" "punjabi" {
  name        = "punjabi"
  description = "My playlist is so awesome"
  public      = false

  tracks = [
    "1eZefeDb8uOsjvcbl1fJrG"
  ]
}

data "spotify_search_track" "name" {
  artist = "Diljit Dosanjh"
}
resource "spotify_playlist" "boolywood" {
  name="mood swag"
  tracks = [ data.spotify_search_track.name.tracks[0].id,
   data.spotify_search_track.name.tracks[1].id,
   data.spotify_search_track.name.tracks[2].id]
}