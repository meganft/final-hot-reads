class Read < ActiveRecord::Base

  def self.top_ten
    where(created_at: (Time.now - 24.hours)..Time.now)
    .group(:url)
    .count.sort_by { |key, val| val }.reverse[0..9]
  end

end
