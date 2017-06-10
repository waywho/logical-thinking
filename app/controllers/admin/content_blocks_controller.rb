module Admin
  class ContentBlocksController < Fae::StaticPagesController

    private

    def fae_pages
      [HomePage, AboutUsPage, WhatWeDoPage, ContactUsPage]
    end

    # def build_assets
    #     @item.build_home_gallery_images if @item.home_gallery_images.blank?
    # end
  end
end
