class PhaseDetail
  include Mongoid::Document
  field :no, type: Integer
  field :title, type: String
  field :distance, type: String
  field :status, type: String
  field :description, type: String
  field :_id, type: String

  belongs_to :phase
  belongs_to :country
  scope :lang, ->(lang) {where(:country => lang)}
end
