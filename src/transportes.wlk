import deposito.*
import CosasAtransportar.*

// TODO no hay tests!!
object camion {

	var cargamax = 10000
	var property cosas = []

	method cargar(cosa) {
		cosas.add(cosa)
	}

	method descargar(cosa) {
		cosas.remove(cosa)
	}

	// TODO acá tenesCargado da la idea de que se fija si *cosa* esté en sus cosas
	// para esto se puede usar contains
	method tenesCargado(cosa) {
		return cosas.all{ elemento => cosas.cargar(cosa) }
	}

	method cualEstuPeso() {
		return cosas.sum{ elementos => elementos.peso() }
	}

	// TODO cargaDisponible sería cuanto lugar libre tiene el camión
	// sería cargamax - self.cualEstuPeso()
	method cargaDisponible() {
		return cosas.max{ cosillas => cosillas.peso() } - self.cualEstuPeso()
	}

	// TODO acá devuelta está mal usado max, max recorre la colección y devuelve el elemento al que mas algo le haya
	// dado lo que sea que pusiste en el bloque (en este caso esta vacía), y la idea es sumar los pesos
	// cargaDisponible() te da esta información
	method puedeCargar(cosa) {
		if ((cosas.max()).peso() > cargamax) {
			error.throwWithMessage("No se puede cargar mercadería")
		} else self.cargar(cosa)
	}

}

object motoneta {

	var property cosas = []

	method cargar(elemento) {
		// TODO nivelDePeligrosidad() es un mensaje que entiende cosas??? raro, ya que cosas
		// es una colección, y los mensajes que entienden las colecciones son configurador por wollok 
		// (addAll, containts, forEach, max, min, sum, etc)
		if (cosas.nivelDePeligrosidad() <= 5 && cosas.peso() <= 100) cosas.add(elemento)
	}

}

