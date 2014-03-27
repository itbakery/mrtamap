class StationDetail
  include Mongoid::Document
  field :code, type: String
  field :title, type: String
  field :latitude, type: String
  field :longitude, type: String
  field :address, type: String
  field :description, type: String

  field :_id, type: String
  belongs_to :line
  belongs_to :phase
  belongs_to :station
  belongs_to :country
  scope :lang, ->(lang) {where(:country => lang)}
end
