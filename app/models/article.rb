class Article < ActiveRecord::Base
  validates :title, :content, :user, presence: true

  belongs_to :user

  scope :published, -> { where(status: 'published') }

  def published?
    status == "published"
  end
end
