class Message < ApplicationRecord
  include Fae::BaseModelConcern
  validates :name, presence: true
  validates :email, presence: true
  validates :body, presence: true


  def fae_display_field
    name
  end


end
