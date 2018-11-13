import viajes.*
import socios.*

class ClaseGimnasia {
	var idiomaClase = #{"espaniol"}
	const bronceado = false
	
	method idioma() {
		return idiomaClase 
	}
	
	method cuantosDias() {
		return 1
	}
	
	method implicaEsfuerzo() {
		return true
	}
	
	method sirveParaBroncearse() {
		return bronceado
	}
	
	method esRecomendada(socio) {
		return socio.edad().between(20 , 30)
	}
	
	
}
