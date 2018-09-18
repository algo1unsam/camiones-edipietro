import deposito.*
import CosasAtransportar.*

object camion {

	var cargamax = 10000
	var property cosas = []
	

	method cargar(cosa) {
		cosas.add(cosa)
	}

	method descargar(cosa) {
		cosas.remove(cosa)
	}

	method tenesCargado(cosa) {
		return cosas.all{ elemento => cosas.cargar(cosa) }
	}

	method cualEstuPeso() {
		return cosas.sum{ elementos => elementos.peso() }
	}
	

	method cargaDisponible() {
		return cosas.max {cosillas=> cosillas.peso()} - self.cualEstuPeso()}


   method puedeCargar(cosa){
   
   	if ((cosas.max()).peso() > cargamax){
   	 error.throwWithMessage("No se puede cargar mercadería")}
   	   	else
   	   	self.cargar(cosa)
   }
}

object motoneta {

	var property cosas = []

	method cargar(elemento) {
		if (cosas.nivelDePeligrosidad() <= 5 && cosas.peso() <= 100) cosas.add(elemento)
	}

}

