class Supplier < ActiveRecord::Base
  has_many :branches
  has_many :tariffs
end
