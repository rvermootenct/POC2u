class Student < ApplicationRecord
    validates :first_name, length: {minimum: 3, maximum: 20}
    validates :last_name, length: {minimum: 3, maximum: 20}
    validates :email, email: true
    validates :phone_number, length: {minimum: 9, maximum: 14}
end
