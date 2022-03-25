class AnalisadorLinha
    attr_accessor :numeroLinha, :conteudo, :palavrasFrequentes, :totalRepeticao

    #construtor
    def initialize(numeroLinha, conteudo)
        @numeroLinha=numeroLinha
        @conteudo=conteudo
        @palavrasFrequentes= []
    end

    def analise
        a= conteudo.split
        array = []
        repeteLinha= []

        for palavra in a do
            hash = Hash.new
            hash[:palavra] = palavra
            hash[:linha] = @numero_linha
            @totalRepeticao= a.count(palavra)
            array.push(hash)
        end
  
        maior = 0
        array.each {|h| repeteLinha.push(h[:repetir]) 
            maior = repeteLinha.max }
        
         
        array.each{|h| if h[:repetir] == maior && !@palavrasFrequentes.include?(h[:palavra])
            @palavrasFrequentes.push(h[:palavra])end }
        
    def to_str
        return "\nConteudo da linha #{@numeroLinha}: #{@conteudo} \n Número de repetições: #{@totalRepeticao} e palavras frequentes: #{@palavrasFrequentes}\n  " 
    end
end
end



