def imprime_pls
	if block_given?
		yield
	else
		puts "no es un block"
	end
end

imprime_pls {puts "the cake is a lie"}

def imprime_pls(&this_is_proc)
	puts block_given?
	this_is_proc.call
end

imprime_pls {puts "esto es un proc"}

procs = Proc.new { |x|  puts x}
procs.call(2)
procs.call(2,3,21)

lam = lambda { |x| puts x}
lam.call(2)

def imprime_pls
	if block_given?
		yield
	elsif :a == :a
		puts "no es un block"
	end
end
imprime_pls {puts "the cake is a lie"}

def imprime_pls
	yield if block_given?
end
imprime_pls {puts "the cake is a lie"}


def imprime_pls
	yield if !block_given?
end
imprime_pls {puts "the cake is a lie"}



def imprime_pls
	yield unless block_given?
end
imprime_pls {puts "the cake is a lie"}

