class String
	def titlelize
		self.split(" ").map { |s| s.capitalize}.join(" ")
	end	

end