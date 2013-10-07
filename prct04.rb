!# /usr/local/rvm/rubies/ruby-2.0.0-p247/bin/ruby
require './matriz.rb'

#################################################################
###################### MÉTODOS y FUNCIONES ######################
#################################################################

# Convertir en array
def mapmap(a)
 a.map { |r|
    r.map { |e|
      yield e
    }
  }

end

# Convertir matriz en matriz
def to_m(a)

  a = a.split(/\n/)
  a = a.map { |r| r.split(/\s+/) }
  a = mapmap(a) { |x| x.to_f } 

end

# Lectura de matrices desde fichero
def read_matrices(fn)

  text = File.open(fn).read
  a, b = text.split(/\n\n+/)
  a = to_m(a) 
  b = to_m(b)
  [a, b]

end

#################################################################

puts "=============================================="
puts "Prueba: sumar y multiplicar dos matrices a y b"
puts "=============================================="

puts 

fichero = ARGV[0]
matrizA, matrizB = read_matrices(fichero)

matA = Matriz.new(matrizA)
matB = Matriz.new(matrizB)

puts "Matriz A:"
matA.mostrar_matriz()
puts
puts "Matriz B:"
matB.mostrar_matriz()
puts
puts "SUMA (A+B) :"
(matA.sumar(matB)).mostrar_matriz
puts
puts "PRODUCTO (A*B) :"
(matA.multiplicar(matB)).mostrar_matriz
puts

puts "=============================================="
puts "fin"
puts "=============================================="
