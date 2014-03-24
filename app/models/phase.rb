class Phase
  include Mongoid::Document
  field :code, type: String
  field :_id, type: String
  belongs_to :line
  has_many :phase_details
end
