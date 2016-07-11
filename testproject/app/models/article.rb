class Article < ActiveRecord::Base
  validates :title, :body, :category, presence:true
  validates :title, uniqueness: true
  validates :category, inclusion: { in: %w(sport technology nature), message: "%{value} is not a valid category" }

  validates :body, contains_stupid_words: false

  def contains_stupid_words(item)
    if (not item.nil?) and item.include? "stupid" then
      errors.add(:item, "can't contains the word stupid")
      return true
    else
      return false
    end
  end

end
