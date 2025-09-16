class Book < ApplicationRecord
validates :title, presence: true,length: {maximum: 100}
validates :color_code, presence: true
validates :comment, length: {maximum: 20}, allow_blank: true
end