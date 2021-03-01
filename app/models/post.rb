class Post < ApplicationRecord
  belongs_to :user

  has_many_attached :images
  validate :image_type
     
    def thumbnail input
      return self.images[input].variant(resize: '80x80').processed
    end
    def preview input
      return self.images[input].variant(resize: '500x500').processed
    end

    private 
    def image_type 
      if images.attached? == false
        errors.add(:images, "mankajo slike")
      end
      images.each do |image|
        if !image.content_type.in?(%('image/jpeg image/png))
          errors.add(:images, 'Samo slike so dovoljene') 
        end
    end
  end
end