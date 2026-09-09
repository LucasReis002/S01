package main
import "fmt"
func gerarEscalaPlantao(n int){
	fmt.Print("\n--- Escala de Plantão Técnico ---")
	i := 1
	dia := 1
  	for i < n+1 {
		fmt.Printf("\nPlantão %d: Dia %d do mês", i, dia)
		i++
		dia = dia + 4
  	}
}
func main() {

	var n int
	fmt.Print("Digite a quantidade de plantões necessários: ")
  	fmt.Scanln(&n)
	gerarEscalaPlantao(n)
}