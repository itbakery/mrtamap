class Line
  include Mongoid::Document
  field :code, type: String
  field :_id, type: String
  has_many :line_details
  has_many :phases
  has_many :stations
  mount_uploader :icon,  IconUploader
  scope :selected, ->(line) {where(:id => line)}

  def getdetails(lang)
    line_details.where(:country => lang)
  end
end
