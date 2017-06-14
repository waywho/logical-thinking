module Admin
  class ThoughtsController < Fae::BaseController

    private

    def build_assets
      @item.build_hero_image if @item.hero_image.blank?
      @item.build_pdf if @item.pdf.blank?
      @item.thought_images.build if @item.thought_images.blank?
    end

  end
end
