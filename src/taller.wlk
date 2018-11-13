class Taller {
	const tallerLiterario = #{}
	const bronceado = false
	
	method agregarAlTaller(libro){
		tallerLiterario.add(libro)
	}
	
	method idiomasUsados() {
		return tallerLiterario.map({i => i.idioma()})
	}
	
	method diasQueLleva() {
		return tallerLiterario.size() +1
	}
	
	method implicaEsfuerzo() {
		return tallerLiterario.any({p => p.paginas() > 500}) or 
		tallerLiterario.map({a => a.autor()}).asSet().size() == 1 and tallerLiterario.size() > 1
	}
	
	method sirveParaBroncearse() {
		return bronceado
	}
	
	method esRecomendada(socio) {
		return socio.idioma().size() > 1
	}
	 
}

object libro{
	var property idioma 
	var property paginas
	var property autor
}
