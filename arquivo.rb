require('./AnalisadorLinha')

arq = File.new("teste.txt","r")
linhas = File.readlines(arq) 

cont = 1
for l in linhas do
    analizadorLinha = AnalisadorLinha.new(cont,l)
    analizadorLinha.analise
    cont+=1
    print analizadorLinha.to_str
end


