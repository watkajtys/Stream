class Image
  include Mongoid::Document

  field :title
  field :description
  field :url

  validates_presence_of :url
  embeds_many :images
end
