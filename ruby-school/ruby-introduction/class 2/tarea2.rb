#ejercicio 1: metodo map
# Éste es un arreglo con porcentajes, conviertelo a que sean numeros enteros.
# NOTE: Se resuelve en UNA linea
# NOTE: el método .each no te va a servir porque regresa el mismo arreglo que
# se le pasa como parámetro (lo puedes intentar si gustas).
# Investiga el método .map
porcentajes = [0.1, 0.21, 0.23, 0.94]
#porcentajes.map { |n| puts (n * 100).to_i.to_s + '%'}
#porcentajes.each { |n| puts (n * 100).to_i.to_s + '%'}
porcentajes.map! { |n| (n * 100).to_i.to_s + '%'}
# Resultado esperado:
# 10
# 21
# 23
# 94

# Si le quieres aumentar un poco la complejidad, trata de llegar a:
# 10%
# 21%
# 23%
# 94%
puts 'resultado ejercicio 1:'
puts porcentajes
puts '======'




#ejercicio 2: accessors
# El nombre, año y producción pueden ser leidos y modificados.
# La fecha de creación sólo puede ser leída.
class Movie
	attr_accessor :name, :year, :production
	attr_reader :created_at
 	def initialize(name, options={})
	    @name = name
	    @year = options[:year]
	    @production = options[:production]
	    @created_at = Time.now
	end

  def build_message
    "La pelicula #{name} fue estrenada en #{year} por #{production}."
  end
end

movie_1 = Movie.new("Thor", options = {year: 2017, production: 'Disney'})
movie_1.year = 2011
movie_1.production = 'Marvel Studios'

# Resultado esperado:
# La película Thor fue estrenada en 2011 por Marvel Studios.
puts movie_1.build_message

movie_2 = Movie.new("Inception", options = {year: 2010, production: 'WB'})

# Descomenta la línea con created_at, cuando corras la aplicación debe fallar.
# Después de verificar que falla, coméntala de nuevo.

#movie_2.created_at = '2016-06-02'
# Resultado esperado:
# La película Inception fue estrenada en 2010 por WB.
puts movie_2.build_message
puts '======'




#ejercicio 3:
# Crea una función llamada verificar_bloque
# Revisa si recibe un bloque, en caso de recibirlo, manda a llamar tu bloque.
# En caso de no recibirlo imprime "Yo no tengo un bloque".


# escribe tu funcion
def verificar_bloque
	block_given? ? yield : (puts 'Yo no tengo un bloque')
end

verificar_bloque { puts "Ya llegué amá" }
verificar_bloque

puts '======'

# Ahora crea una función muy similar que reciba dos
# parámetros: "accion" y un proc (llámalo como gustes).
# Si la acción es di_hola, manda llamar al bloque.
# Si no lo es, imprime "Suerte para la proxima"


# escribe tu funcion
def verificar_accion(accion,&proc)
	accion == :di_hola ? proc.call : (puts 'Suerte para la proxima')
end



verificar_accion(:di_hola) { puts "Hola a todos" }
verificar_accion(:di_adios) { puts "Ahorita no joven" }
puts '======'

# El resultado esperado es:
# Ya llegué amá
# Yo no tengo un bloque
# ======
# Hola a todos
# Suerte para la proxima







#ejercicio 4: arrays
puts 'Crea un arreglo e imprime, después agrega un elemento y vuelve a imprimir,
      despues imprime el ultimo elemento de tu arreglo.'

# Declara tu primer arreglo aqui
myArray = [1,2,3,4,5]

puts "Arreglo original"
puts myArray

# Agrega un dato a tu arreglo

puts "Arreglo con nuevo elemento"
puts myArray << 6

puts "Ultimo elemento del arreglo"
puts myArray[-1]
puts '======'





#ejercicio 5: arrays iteration
puts "Utiliza el metodo each para sacar el promedio de las calificaciones"
# HINT: Declara una variable antes, para sumar ahí el valor de cada iteración.

calificaciones = [10, 8, 9, 5, 8, 10, 8]
sum = 0.0
calificaciones.each do |i|
	sum = sum + i;
end

# HINT: Existe un metodo para saber el tamaño de un objeto, buscalo!
# El promedio debe ser similar a 8.28, tiene que llevar decimales.
puts sum / calificaciones.length
