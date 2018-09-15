import transportes.*
import deposito.*

object knightRider {

	var puntos = 0
	method peso() = 500

	method nivelDePeligrosidad() {
		puntos = 10
	}

}
object bumblebee {
   
	var property forma = auto

	method peso() = 800

	method nivelDePeligrosidad(tipo) {
		return tipo.puntos()
	}

}

object auto {

	method puntos() = 15

}

object robot {

	method puntos() = 30

}

object paqueteLadrillos {

	var puntos = 2
	var property cantladrillos =1
	var pesoladrillo = 2


	method peso() = cantladrillos * pesoladrillo

	method nivelDePeligrosidad() {
		return puntos
	}

}

