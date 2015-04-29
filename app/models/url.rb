class Url < ActiveRecord::Base
  # Remember to create a migration!

  belongs_to :users

  def self.shorten_it(url)
    last_id = Url.last.id
    return "#{last_id + 1}"
  end
end
