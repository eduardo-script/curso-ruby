require_relative "./conta_corrente"
require_relative "./pessoa_fisica"
require_relative "./pessoa_juridica"

maria = PessoaFisica.new("Maria Cardorso", "123.456.789-00")
empresa = PessoaJuridica.new("Empresa Exemplo", "12.345.678/0001-00")

maria.exibir_dados
empresa.exibir_dados

conta_maria = ContaCorrente.new 1, maria
conta_empresa = ContaCorrente.new 2, empresa

conta_maria.exibir_dados_conta
conta_empresa.exibir_dados_conta


