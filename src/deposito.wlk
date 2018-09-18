import CosasAtransportar.*
import transportes.*

object deposito {

	var property cosas = []
	var property transporte = []

	method recibirCosas() {
		cosas.addAll(transporte.cosas())
	}

	method llenartransporte(elementos) {
		cosas.forEach{ cosa => self.recibirCosas()}
	}

}

