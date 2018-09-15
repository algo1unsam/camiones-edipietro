import deposito.*
import CosasAtransportar.*

object camion{
	
	var property cosas = []
	var property sumadecosas = 0

	method cargar(cosa) {
		cosas.add(cosa)
		self.guardar()
	}

	method descargar(cosa) {
		cosas.remove(cosa)
	}

	method guardar() {
		sumadecosas = sumadecosas + 1
	}
	
	method sumaLosPesos(){return cosas.sum{cosa => cosas.peso()}}
	
}
