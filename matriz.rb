!# /usr/local/rvm/rubies/ruby-2.0.0-p247/bin/ruby
# matriz.rb

# Definición de la clase
class Matriz
  
  # Inicialización
  def initialize(matriz)
    @matriz = matriz
    @filas = matriz[0].size
    @columnas = matriz[0].size

  end
  
  # Atributos
  attr_reader :matriz, :filas, :columnas
  
  # Mostrar matriz
  def mostrar_matriz

    matriz.each do | fila |
        puts fila.to_s + "  "
    end

  end
 
  # Operación de suma de matrices
  def sumar(matrizB)

    matRes = Array.new(matriz.size - 1)

    for fil in 0...matriz.size
       matRes[fil] = Array.new(matriz[fil].size - 1)
        for col in 0...matriz[fil].size
            matRes[fil][col] = matriz[fil][col] + matrizB.matriz[fil][col]

        end

    end
     Matriz.new(matRes)

  end

  # Operación de producto de matrices  
  def multiplicar(matrizB)

    matRes = Array.new(matriz.size - 1,0)

    for fil in 0...matriz[0].size 

	matRes[fil] = Array.new(matrizB.matriz.size,0)

	for col in 0...matrizB.matriz.size

	    for pos in 0...matriz.size

		prod = matriz[fil][pos] * matrizB.matriz[pos][col]
		matRes[fil][col] = matRes[fil][col] + prod

	    end
	
	end

    end

    Matriz.new(matRes)

  end

end

