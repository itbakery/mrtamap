class Station
  include Mongoid::Document
  field :code, type: String

  field :_id, type: String
  belongs_to :phase
  has_many :station_details
end
