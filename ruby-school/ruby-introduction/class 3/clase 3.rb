#import
require 'date'

#clases
class Person
	#atributos	
	attr_reader :nombre, :fecha_nacimiento
	attr_accessor :genero

	#constructor
	def initialize(nombre, fecha_nacimiento)
		@nombre = nombre
		@fecha_nacimiento = Date.parse(fecha_nacimiento)
		@ahorro = 0
	end

	#acciones(metodos)
	def saludar
		puts "Hola mi nombre es {nombre}, mucho gusto"
	end

	def obtener_edad_actual
		puts "{fecha_nacimiento}"
	end

	def obtener_paga
		puts '$$$$$'
	end
end


