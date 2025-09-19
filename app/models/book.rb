class Book < ApplicationRecord
validates :title, presence: true,length: {maximum: 100}
validates :color_code, presence: true
validates :comment, presence: true,length: {maximum: 30}
end