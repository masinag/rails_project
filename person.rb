class Person

	attr_accessor :name

	def initialize
		@name = 'AAA'
	end

	def to_s
		"Hi, my name is #{@name}."
	end
end
