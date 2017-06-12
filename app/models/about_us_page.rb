class AboutUsPage < Fae::StaticPage

  @slug = 'about_us'

  # required to set the has_one associations, Fae::StaticPage will build these associations dynamically
  def self.fae_fields
    {
      meta_description: { type: Fae::TextField },
      hero_image: { type: Fae::Image },
      hero_text: { type: Fae::TextField },
      introduction: { type: Fae::TextArea },
      body: { type: Fae::TextArea }
    }
  end

end
