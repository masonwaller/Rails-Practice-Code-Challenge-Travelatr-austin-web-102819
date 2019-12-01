class Blogger < ApplicationRecord
    has_many :posts
    has_many :destinations, through: :posts
    validates :name, presence: true, uniqueness: true
    validates :age, numericality: {greater_than: 0}
    validates :bio, presence: true, length: {minimum: 30}
    

end
