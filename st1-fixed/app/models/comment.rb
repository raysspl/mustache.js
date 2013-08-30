class Comment
	include MongoMapper::Document

	key :commenter, String
	key :body, String

  belongs_to :post
end
