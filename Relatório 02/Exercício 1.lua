function gerarTabelaPotencias(inicio, fim, base)
    local num = base
    for i = inicio, fim do
        num = num * base
        print(base .. "^"..i.."="..num)
    end
end

print("Digite o expoente inicial (M): ")
local m = tonumber(io.read())
print("Digite o expoente final (N): ")
local n = tonumber(io.read())
print("Digite a base: ")
local b = tonumber(io.read())

gerarTabelaPotencias(m, n, b)