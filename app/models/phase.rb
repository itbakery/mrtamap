class Phase
  include Mongoid::Document
  field :code, type: String
  field :_id, type: String
  belongs_to :line
  has_many   :stations
  has_many :phase_details
  def getdetails(lang)
    phase_details.where(:country => lang)
  end

end
