class Order < ActiveRecord::Base
 has_many :orders_items
 has_many :items, :through => :orders_items
 belongs_to :user
 
end
