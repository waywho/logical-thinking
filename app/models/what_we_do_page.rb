class WhatWeDoPage < Fae::StaticPage

  @slug = 'what_we_do'

  # required to set the has_one associations, Fae::StaticPage will build these associations dynamically
  def self.fae_fields
    {
      meta_description: { type: Fae::TextField },
      introduction: { type: Fae::TextArea },
      body: { type: Fae::TextArea },
      header_image: { type: Fae::Image }
    }
  end

end
