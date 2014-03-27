class LineDetail
  include Mongoid::Document
  field :title, type: String
  field :description, type: String
  field :_id, type: String

  belongs_to  :line
  belongs_to  :country

  has_many :phases
  scope :lang, ->(lang) {where(:country => lang)}



end
