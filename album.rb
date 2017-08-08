class Album

  attr_reader :id, :title, :artists, :tracks
  attr_writer :tracks

  def initialize(id, title, artists)
    @id = id
    @title = title
    @artists = artists
    @tracks = []
    duration_min = 0
  end

  def duration_min
    total_ms = 0
    @tracks.each do |track|
      total_ms += track.duration_ms
    end
    total_min = ((total_ms / 1000) / 60) % 60
    total_min
  end

  def summary
    puts ""
    summary_string = "Name: #{@title}\n"
    summary_string +=  "Artist(s) #{@artists}\n"
    summary_string += "Duration (min.): #{duration_min}\n"
    summary_string += "Tracks:\n"
    @tracks.each do |track|
      summary_string += "- " + track.title + "\n"
    end
    summary_string
  end
end
