require 'sqlite3'
require 'singleton'

class TwitterDBConnection < SQLite3::Database
  include singleton

  def initialize
    super('twitter.db')
    self.type_translation = true
    self.results_as_hash = true

  end
end