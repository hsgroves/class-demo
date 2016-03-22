class Post < ActiveRecord::Base
    attr_accessor :tag_titles
    
    # adding a comment!
    belongs_to :user
    has_many :categorizations
    has_many :tags, through: :categorizations
    
    validates :user, presence: true
    validates :title, presence: true
    validates :body, presence: true
end
