class TeamMember < ApplicationRecord
  include Fae::BaseModelConcern

  def fae_display_field
    name
  end

  has_fae_image :head_shot


  acts_as_list add_new_at: :top
  default_scope { order(:position) }

end
