!# /usr/local/rvm/rubies/ruby-2.0.0-p247/bin/ruby


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

# Mostrar matriz
def mostrar_matriz(matriz)

  matriz.each do | fila |
    puts fila.to_s + "  "
  end

end

#################################################################

puts "=============================================="
puts "Prueba: sumar y multiplicar dos matrices a y b"
puts "=============================================="

puts 

fichero = ARGV[0]
matrizA, matrizB = read_matrices(fichero)

puts "Matriz A:"
mostrar_matriz(matrizA)
puts
puts "Matriz B:"
mostrar_matriz(matrizB)

puts

puts "=============================================="
puts "fin"
puts "=============================================="
