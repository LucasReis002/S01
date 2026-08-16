Dim peso As Integer
Dim agua As Integer
Dim meta As Integer
Print "---  META DE AGUA ---"
Input "QUAL O SEU PESO? ", peso
Input "QUAL A QUNATIDADE QUE VOCÊ JÁ BEBEU? ", agua

meta = peso * 35

If agua >= meta Then
    Print "Meta atingida!"
Else
    Print "Meta nao atingida"
End If
Sleep