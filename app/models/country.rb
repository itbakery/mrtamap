class Country
  include Mongoid::Document
  field :name, type: String
  field :language, type: String
  field :_id, type: String
  
 
  has_many :line_details
end
