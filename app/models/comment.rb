class Comment < ApplicationRecord
	belongs_to :announcement, optional: true
   	belongs_to :commentable, polymorphic: true
end
