class Car
	#attr_accessor :engine_info, :engine_price, :wheel_info, :wheel_price
	def self.features(*args)
		args.each do |feature|
			attr_accessor :"#{feature}_info",:"#{feature}_price"
		end
	end

	features :engine, :wheel
end