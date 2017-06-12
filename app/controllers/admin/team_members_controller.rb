module Admin
  class TeamMembersController < Fae::BaseController

    private

    def build_assets
      @item.build_head_shot if @item.head_shot.blank?
    end

  end
end
