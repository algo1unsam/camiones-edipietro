import CosasAtransportar.*
import transportes.*

object deposito {

	var property cosas = []
	var property transporte = []

	method recibirCosas() {
		// TODO las cosas que se agregan deberían llegar por parámetro
		cosas.addAll(transporte.cosas())
	}

	// TODO la idea acá es cargar el transporte, recibirCosas() sería la acción contraria
	// una vez llegada la mercadería, agregarla al depósito
	// este lo que hace es llenar el transporte para sacar la mercadería del depósito
	method llenartransporte(elementos) {
		cosas.forEach{ cosa => self.recibirCosas()}
	}

}

