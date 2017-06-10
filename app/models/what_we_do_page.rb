class WhatWeDoPage < Fae::StaticPage

  @slug = 'what_we_do'

  # required to set the has_one associations, Fae::StaticPage will build these associations dynamically
  def self.fae_fields
    {
      introduction: { type: Fae::TextArea },
      body: { type: Fae::TextArea },
      header_image: { type: Fae::Image },
      meta_description: { type: Fae::TextField }
    }
  end

  has_fae_image :header_image

end
