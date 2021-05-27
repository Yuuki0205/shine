class Text < ApplicationRecord
  with_options presence: true do
    validates :one
    validates :two
    validates :three
    validates :four 
    validates :five
    validates :six
    validates :seven
    validates :eight
    validates :nine 
    validates :ten 
  end


  belongs_to :user
end


