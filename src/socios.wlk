import viajes.*
import gimnasia.*

class Socio {
	const actividadesRealizadas = #{}
	var property maximoDeActividades = 0
	var property edad = 0
	const idiomasViaje = #{}
	
	method agregarIdioma(idioma) {
		idiomasViaje.add(idioma)
	}
	
	method quitarIdioma(idioma) {
		idiomasViaje.remove(idioma)
	}
	
	method idioma() {
		return idiomasViaje 
	}
	
	method agregarActividad(actividad) {
		if (maximoDeActividades > actividadesRealizadas.size()){actividadesRealizadas.add(actividad)}
			else {self.error("No puede realizar otra actividad")}
	} 
	
	method quitarActividad(actividad) {
		actividadesRealizadas.remove(actividad)
	}
	
	method activdadesRealizadas() {
		return actividadesRealizadas
	}
	
	method esAdoradorDelSol() {
		return actividadesRealizadas.all({p => p.sirveParaBroncearse()})
	}
	
	method actividadesEsforzadas() {
		return actividadesRealizadas.filter({p => p.implicaEsfuerzo()}).asSet()
	}	
	
	method leAtraeLaActividad(actividad) 
	
	method esRecomendable(actividad)
	
}

class SocioTranquilo inherits Socio {
	override method leAtraeLaActividad(actividad) {
		return actividad.cuantosDias() >= 4
	}
}

class SocioCoherente inherits Socio {
	override method leAtraeLaActividad(actividad) {
		return (self.esAdoradorDelSol()and actividad.sirveParaBroncearse()) or 
			 actividad.implicaEsfuerzo()
	}
}

class SocioRelajado inherits Socio {
	override method leAtraeLaActividad(actividad) {
		return actividad.idioma().intersection(self.idioma()).size() > 0
	}
}



















