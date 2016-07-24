class Article < ActiveRecord::Base
  validates :title, :body, :category, presence: true
  validates :category, inclusion: {in: %w(sport technology nature),
                                   message: "%{value} is not a valid category"}
  validate :body_cannot_contain_stupid_words

  def body_cannot_contain_stupid_words
    if not body.nil? and body.include? "stupid" then
      errors.add(:body, "can't contain the word stupid")
      return false
    else
      return true
    end
  end
end
