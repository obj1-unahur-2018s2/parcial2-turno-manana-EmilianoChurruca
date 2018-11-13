import gimnasia.*
import socios.*

class Viaje {
	var idiomasViaje = #{}
	var broncearse = true
	var esInteresante = true
	
	method agregarIdioma(idioma) {
		idiomasViaje.add(idioma)
	}
	
	method quitarIdioma(idioma) {
		idiomasViaje.remove(idioma)
	}
	
	method idioma() {
		return idiomasViaje 
	}
	
	method implicaEsfuerzo()
	
	method cuantosDias() 
	
	method sirveParaBroncearse()
	
	method esInteresante(){
		return idiomasViaje.size() >= 2
	}
	
	method interesante(){
		esInteresante = true
	}
	
	method noEsInteresante(){
		esInteresante = false
	}
	
	method esRecomendada(socio) {
		return esInteresante and socio.leAtraeLaActividad(self) and 
		not socio.activdadesRealizadas().contains(self)
	}
	
}

class ViajeDePlaya inherits Viaje {
	var property largoPlaya = 0
	
	override method cuantosDias() {
		return largoPlaya / 500
	}
	
	override method implicaEsfuerzo(){
		return largoPlaya > 1200
	}
	
	override method sirveParaBroncearse() {
		return broncearse
	}
}

class ExcursionDeCiudad inherits Viaje {
	var property atraccionesAVisitar = 0
	
	override method cuantosDias() {
		return atraccionesAVisitar / 2
	}
	
	override method implicaEsfuerzo() {
		return atraccionesAVisitar.between(5, 8)
	}
	
	override method sirveParaBroncearse() {
		return  not broncearse
	}
	
	override method esInteresante() {
		return super() or atraccionesAVisitar == 5
	}
}

class ExcursionCiudadTropical inherits ExcursionDeCiudad {
	
	override method sirveParaBroncearse() {
		return  broncearse
	}
	
	override method cuantosDias() {
		return super() + 1
	}
}

class SalidaTrekking inherits Viaje {
	
	var property senderosARecorrer = 0
	var property diasDeSol = 0
	
	override method cuantosDias() {
		return senderosARecorrer / 50
	}
	
	override method implicaEsfuerzo() {
		return senderosARecorrer > 80 
	}
	
	override method sirveParaBroncearse() {
		return diasDeSol>200 or senderosARecorrer > 120 and diasDeSol.between(100 , 200)
	}
	
	override method esInteresante() {
		return super() and diasDeSol > 140
	}
}
