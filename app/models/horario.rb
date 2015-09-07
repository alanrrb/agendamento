class Horario < ActiveRecord::Base
	belongs_to :usuario

	validates_uniqueness_of :horario, scope: :dia
end
