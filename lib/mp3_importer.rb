
require 'pry'
class MP3Importer

  #attr_reader :files
  attr_accessor :path, :files

  def initialize(filepath)
    #self.files = Dir.entries(filepath)
    self.path = filepath
    files_with_roots = Dir.entries(self.path).collect {|file| file.split('/').last}
    self.files = files_with_roots.slice(2,files_with_roots.size)
  end


  def import
    #binding.pry
    self.files.collect {|song_file| Song.new_by_filename(song_file) }
  end

end
