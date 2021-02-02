class User < ApplicationRecord
    has_many :scores
    has_many :words, through: :scores
end
