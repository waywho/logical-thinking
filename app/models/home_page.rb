class HomePage < Fae::StaticPage

  @slug = 'home'

  # required to set the has_one associations, Fae::StaticPage will build these associations dynamically
  def self.fae_fields
    {
      hero_text: { type: Fae::TextField },
      hero_image: { type: Fae::Image },
      meta_description: { type: Fae::TextField },
      body: { type: Fae::TextArea },
      home_gallery_images: { type: Fae::Image }
    }
  end

  has_fae_image :hero_image
  has_many :home_gallery_images, -> { where(attached_as: 'home_gallery_images') },
    as: :imageable,
    class_name: '::Fae::Image',
    dependent: :destroy
  accepts_nested_attributes_for :home_gallery_images, allow_destroy: true

end
