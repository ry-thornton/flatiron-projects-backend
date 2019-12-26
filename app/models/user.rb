class User < ApplicationRecord
    has_many :projects, through: :posts
end
