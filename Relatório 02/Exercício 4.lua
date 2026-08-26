function calcularMedia(a, b)
    local media = (a+b)/2
    return media 
end

function encontrarMaior(a, b)
    if a > b then
        return a
    else
        return b
    end  
end

function calcularDiferencaAbsoluta(a, b)
    local diferenca = (a-b)
    if diferenca < 0 then
        diferenca = diferenca * -1
    end  
    return diferenca
end

function analisarNumeros(n1, n2, operacao)
    local resultado = "-"
    if operacao == "media" then
        resultado = calcularMedia(n1, n2)
    else 
        if operacao == "maior" then
            resultado = encontrarMaior(n1, n2)
        else
            if operacao == "diferenca" then
                resultado = calcularDiferencaAbsoluta(n1, n2)
            else
                print("Operação inválida!")
            end
        end 
    end 
    return resultado
end

print("Digite o primeiro número: ")
local n1 = tonumber(io.read())
print("Digite o segundo número: ")
local n2 = tonumber(io.read())
print("Digite a operação (media, maior ou diferenca): ")
local operacao = io.read()

local resultado = analisarNumeros(n1, n2, operacao)

if resultado == "-" then
    
else
	print("Resultado: " .. resultado)
end 