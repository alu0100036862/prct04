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
  def sumar(otra)


  end

  # Operación de producto de matrices  
  def multiplicar(otra)


  end

end

