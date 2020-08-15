class NumerosMagicos

  # verifica se o número é primo
	def numero_primo(num)
  	raiz_quadrada = Math.sqrt(num.to_i)

  	#regex para verificar se a raiz quadrada é exata
	 	reg = /^[+]?(?:9|[1-9]\d*)(?:\.(?:\d*[0]|0))?$/

    # elimina raiz gradrada não exata
		if raiz_quadrada.to_s.match(reg)
	 		#se for um número primo retorna true
	 		if raiz_quadrada % 2 == 0
				return false
			else
				return true
			end
		end	 	
	end

	#método que recebe uma lista de intervalos, e encontra os números mágicos primos e soma a quantidade
  def soma_qtd_numeros_magicos(lista_de_intervalos)
    qtd_numeros_magicos = 0

    #verifica se o array não está vazio
    if !lista_de_intervalos.empty?
      lista_de_intervalos.each do |lista|
        intervalo_A = lista[0].to_i
        intervalo_B = lista[1].to_i

        # percorre o intervalo
        while intervalo_A <= intervalo_B
          if numero_primo(intervalo_A)
            qtd_numeros_magicos += 1
          end
          intervalo_A += 1
        end
      end

      #puts "Quantidade de Numeros Magicos: #{qtd_numeros_magicos}"
      return "Quantidade de Numeros Magicos: #{qtd_numeros_magicos}"
    end

    return "Lista de intervalos vazia"
  end

	# receber uma lista de intervalos
	def executa(lista_intervalos)
		soma_qtd_numeros_magicos(lista_intervalos)
	end

end

#run = NumerosMagicos.new
#intervalos = [[8,27],[49,49]]
#run.executa(intervalos)