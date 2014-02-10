class Product
  include Mongoid::Document
  include Mongoid::Timestamps #created_at, updated_at
  include Mongoid::Paranoia #soft delete
  include Mongoid::Versioning

  field :name, type: String
  field :price, type: BigDecimal
  field :released_on, type: Date

  attr_accessible :name, :price, :released_on

  validates :name, presence: true

  # has_many :reviews #in separate document
  embeds_many :reviews #in parent's document
end
