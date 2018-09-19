import cosas.*

object camion {
	const pesoMaximo = 2500
	const property cosas = []
	var peso = 1000
	
	method cargar(unaCosa) {
		cosas.add(unaCosa)
	}
	
	method descargar(unaCosa) {
		cosas.remove(unaCosa)
	}
	
	method pesoTotal(){
		return peso + /*cosas.map {c => c.peso()}.sum()*/ cosas.sum{c => c.peso()}
			 
	}
	
	method excedidoDePeso(){
		return self.pesoTotal() > pesoMaximo
	}
	
	method objetosPeligrosos(nivel) {
		return cosas.filter { c=> c.nivelPeligrosidad() > nivel}
	}
	
	method objetosMasPeligrososQue(cosa){
		return self.objetosPeligrosos(cosa.nivelPeligrosidad())
	}
	
	method puedeCircularEnRuta(nivelMaximo){
		return not cosas.any { c=> c.nivelPeligrosidad() > nivelMaximo}
	}
	
	method tieneAlgoQuePesaEntre(min, max){
		return cosas.any {c=> c.peso().between(min, max)}
	}
	
	method cosaMasPesada() {
		cosas.map { c=> c.peso()}.max()
		
	}
}
