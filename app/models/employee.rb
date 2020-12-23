class Employee < ApplicationRecord
    has_one_attached :file

    validates :email, :uniqueness => { :case_sensitive => false }
    #validates :file, allow_blank: true, blob: { content_type: ['image/jpg', 'image/jpeg', 'image/png'], size_range: 1..3.megabytes }
    validate :check_image_type

    private
        def check_image_type
            if file.attached? && !file.content_type.in?(%w(image/png image/jpg image/jpeg))
                errors.add(:file,"must be jpg or png file")
            end
        end

end
