object knightRider {
	method peso() { return 500 }
	method nivelPeligrosidad() { return 10 }
}

object bumblebee {
	var transformadoEnAuto = true
	
	method peso() { return 800 }
	method nivelPeligrosidad() { return if (transformadoEnAuto) { 15 } else { 30 }  }
	method transformar() { transformadoEnAuto = not transformadoEnAuto }	
	}
	
object paqueteDeLadrillos {
	var cantidad = 0
	
	method setCantidad(cant){
		cantidad = cant
	}
	method peso() { return cantidad * 2}
	method nivelPeligrosidad() { return 2}
}

object arenaAgranel {
	var peso
	
	method setPeso(cant){ peso = cant}
	method peso() { return peso}
	method nivelPeligrosidad() {return 1}
	}

object bateriaAntiaerea {
	var hayMisiles = false
	
	method hayMisiles() {
		hayMisiles = not hayMisiles
		return hayMisiles
	}
	method peso() {
		return if (hayMisiles){300} else {200}
	}
	method nivelPeligrosidad(){
		return if (hayMisiles){100} else {0}
	}
}

object contenedorPortuario {
	var objetoDentro
	var peso = 100
	var peligro = 0
	
	method meterDentro(objeto){
		objetoDentro = objeto
		peso += objetoDentro.peso()
		if (objetoDentro.nivelPeligrosidad() > peligro){
			peligro = objetoDentro.nivelPeligrosidad()
		} else {}
	}
	
	method peso() {
		return peso
	}
	
	method nivelPeligrosidad() {
		 if (peso = 100){return 0} else {return peligro}
	}
	
	
}


object residuosRadioactivos {
	var peso
	
	method setPeso(cant) {
		peso = cant
	}
	method peso() { return peso}
	
	method nivelPeligrosidad() { return 200}
}

object embalajeDeSeguridad {
	var objeto
	var peso
	var peligro
	
	method envuelvaA(cosa){
		objeto = cosa
		peso = objeto.peso()
		peligro = objeto.nivelPeligrosidad()
	}
	
	method peso() {
		return peso
	}
	method nivelPeligrosidad() {
		return peligro/2
	}
	
}














