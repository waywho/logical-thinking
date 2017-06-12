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

end
