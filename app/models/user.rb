class User < ApplicationRecord
    # belongs_to :role
    # has_many :borrowed_book
    has_secure_password
    # validates_presence_of :email
    # validates_uniqueness_of :email
end
