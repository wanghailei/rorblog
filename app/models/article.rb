class Article < ApplicationRecord 
        
        include Visible

        has_rich_text :body
        has_many :comments, dependent: :destroy

	validates :title, presence: true
	validates :body, presence: true, length: { minimum: 10 }
end
