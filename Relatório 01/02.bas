Dim senha As Integer = 4321
Dim pin As Integer
Dim i As Integer = 0

While i = 0
    Input pin
    If pin = senha Then
        Print "Transacao autorizada!"
        i = 1
    Else
        Print "PIN invalido. Tente novamente."
    End If
Wend

Sleep