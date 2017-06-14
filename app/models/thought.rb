class Thought < ApplicationRecord
  include Fae::BaseModelConcern

  def fae_display_field
    title
  end

  has_fae_file :pdf

  has_fae_image :hero_image

  has_many :thought_images, -> { where(attached_as: 'thought_images') },
  as: :imageable,
  class_name: '::Fae::Image',
  dependent: :destroy

    accepts_nested_attributes_for :thought_images, allow_destroy: true


  belongs_to :thought_category
end
