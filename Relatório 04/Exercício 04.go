package main
import "fmt"
 func validarIngresso(setor string, codigo int) bool{
	if setor == "VIP" &&  codigo == 2026{
      return true
  } else {
      return false
  }
}
func main() {

	for {
		var setor string
		var codigo int
    	fmt.Print("\nDigite o setor do ingresso: ")
  		fmt.Scanln(&setor)
    	fmt.Print("\nDigite o código do ingresso: ")
  		fmt.Scanln(&codigo)
		result := validarIngresso(setor, codigo)
		if result == true{
			fmt.Print("\nAcesso liberado à área VIP!")
		}else{
			fmt.Print("\nIngresso ou setor inválido. Tente novamente.")
		}
  	}
}