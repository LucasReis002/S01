function filtrarMaiores(tabela, limite)
    local tabelanova = {}
    for i = 1, #tabela do
        if tabela[i] > limite then
            table.insert(tabelanova, tabela[i])
        end   
    end
    return tabelanova 
end

print("Digite a quantidade de elementos (N): ")
local n = tonumber(io.read())

local tabela = {}
for i = 1, n do
        print("Digite o elemento "..i..": ")
        local num = tonumber(io.read())
        table.insert(tabela, num)
end

print("Digite o valor limite (K): ")
local k = tonumber(io.read())
local tabela2 = filtrarMaiores(tabela, k)
print("--- Elementos maiores que 10 ---")
for i = 1, #tabela2 do
    print(tabela2[i])
end