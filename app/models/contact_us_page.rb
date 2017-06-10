class ContactUsPage < Fae::StaticPage

  @slug = 'contact_us'

  # required to set the has_one associations, Fae::StaticPage will build these associations dynamically
  def self.fae_fields
    {
      meta_description: { type: Fae::TextField },
      introduction: { type: Fae::TextArea }
    }
  end

end
