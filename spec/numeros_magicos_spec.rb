require 'numeros_magicos'

describe NumerosMagicos do
	subject(:test_method) {described_class.new()}

	it 'valida o metodo executa' do
		result = test_method.executa([[8,27],[49,49]])
		expect(result).to eq("Quantidade de Numeros Magicos: 3")
	end

	it 'intervalo valido' do
		result = test_method.soma_qtd_numeros_magicos([[8,27]])
		expect(result).to eq("Quantidade de Numeros Magicos: 2")
	end

	it 'array vazio' do
		result = test_method.soma_qtd_numeros_magicos([])
		expect(result).to eq("Lista de intervalos vazia")
	end

	it 'numero primo' do
		result = test_method.numero_primo(9)
		expect(result).to eq(true)
	end

	it 'numero nao primo' do
		result = test_method.numero_primo(16)
		expect(result).to eq(false)
	end
end