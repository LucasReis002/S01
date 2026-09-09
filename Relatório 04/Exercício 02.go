package main
import "fmt"

func main() {

	var venda1 int
	fmt.Print("Digite as vendas do 1º trimestre: ")
  	fmt.Scanln(&venda1)
	var venda2 int
	fmt.Print("\nDigite as vendas do 2º trimestre: ")
  	fmt.Scanln(&venda2)
	var venda3 int
	fmt.Print("\nDigite as vendas do 3º trimestre: ")
  	fmt.Scanln(&venda3)
	var soma int = venda1+venda2+venda3

	if soma < 100 {
      fmt.Println("\nMeta mínima anual não atingida!")
  	} else {
		switch {
		case soma > 249:
			fmt.Println("\nCategoria Top Seller")
		case soma < 180:
			fmt.Println("\nCategoria Pleno")
		default:
			fmt.Println("\nCategoria Sênior")
  		}
  	}
}