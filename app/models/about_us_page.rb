class AboutUsPage < Fae::StaticPage

  @slug = 'about_us'

  # required to set the has_one associations, Fae::StaticPage will build these associations dynamically
  def self.fae_fields
    {
      hero_image: { type: Fae::Image },
      hero_text: { type: Fae::TextField },
      introduction: { type: Fae::TextArea },
      meta_description: { type: Fae::TextArea },
      body: { type: Fae::TextArea }
    }
  end
    has_fae_image :hero_image
end
