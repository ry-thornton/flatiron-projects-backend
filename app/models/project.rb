class Project < ApplicationRecord
    has_one :user, through: :post
end
