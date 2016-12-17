class Tariff < ActiveRecord::Base
  belongs_to :service
  belongs_to :supplier
end
