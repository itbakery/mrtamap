class Line
  include Mongoid::Document
  field :code, type: String
  field :_id, type: String
  has_many :line_details
  has_many :phases
  mount_uploader :icon,  IconUploader
end
