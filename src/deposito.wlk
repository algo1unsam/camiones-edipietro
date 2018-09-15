import CosasAtransportar.*
import transportes.*
object deposito {

	var property mercaderia=[]
	var property objetosguardados = []
  

	method recibirCosas(cosas) {
		mercaderia.addAll(cosas)
	}
	
	method llenarcamion(cosas){
		mercaderia.forEach{cosa =>self.recibirCosas(cosas)}
	}
	
	

}

