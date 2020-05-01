class Enquiry < ApplicationRecord
    validates :name, presence: true

    validates :enquiry_messages, presence: true, length: {minimum: 3}
end
