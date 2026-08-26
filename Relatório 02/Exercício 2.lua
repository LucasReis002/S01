function contarOcorrencias(tabela, alvo)
    local cont = 0
    for i = 1, #tabela do
        if tabela[i] == alvo then
            cont = cont + 1;
        end   
    end
    return cont 
end

print("Digite a quantidade de elementos (N): ")
local n = tonumber(io.read())

local tabela = {}
for i = 1, n do
        print("Digite o elemento "..i..": ")
        local num = tonumber(io.read())
        table.insert(tabela, num)
end

print("Digite o número X a ser buscado: ")
local alvo = tonumber(io.read())
local cont = contarOcorrencias(tabela, alvo, b)
print("O número "..alvo.." aparece "..cont.." vez(es) na tabela.")