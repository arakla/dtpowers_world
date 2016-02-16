class Article < ActiveRecord::Base
  #Validations
   validates_presence_of :title, :content
    
   #Scopes
   scope :active,        -> { where(active: true) }
   scope :alphabetical,  -> { order(:title) }

end
