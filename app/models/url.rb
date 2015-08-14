class Url < ActiveRecord::Base
  belongs_to :User

  def self.shorten_it(url)
    last_id = Url.last.id
    return "#{last_id + 1}"
  end
end
