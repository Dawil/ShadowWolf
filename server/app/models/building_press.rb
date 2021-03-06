class BuildingPress
  include Mongoid::Document
  include Mongoid::Timestamps

  embeds_many :campaigns

  accepts_nested_attributes_for :campaigns

  embeds_many :attentions, class_name: 'BuildingAttention'

  accepts_nested_attributes_for :attentions

  embedded_in :building, inverse_of: :presses

end
