module Spree
  Product.class_eval do
    attr_accessor :artist
    validates :artist, presence: true

    has_many :tracks,
      -> { order("#{::Spree::Track.quoted_table_name}.position ASC") },
      class_name: 'Spree::Track'



  end
end