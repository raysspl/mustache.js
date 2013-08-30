class Post
	include MongoMapper::Document

	key :title, String 
	key :text, String

	has_many :comments, dependent: :destroy
	validates :title, presence: true,
						length: { minimum: 5 }	
	
end

