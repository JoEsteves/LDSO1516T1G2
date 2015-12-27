class Vote < ActiveRecord::Base
	belongs_to :user, counter_cache: true
	belongs_to :ticket, counter_cache: true
end
