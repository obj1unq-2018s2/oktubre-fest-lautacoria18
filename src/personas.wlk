class Persona {
	
	var property peso=0
	var property jarrasDeCervezaCompradas= []
	var property escuchaMusicaTradicional = false //Tiene que arrancar en falso
	var property nivelDeAguante =0
	
	///////Le pasas una marca y te dice si le gusta o no
	method estaEbrio() {
		
		
		 return jarrasDeCervezaCompradas.sum{jarra => jarra.alcoholEnJarra()} * peso > nivelDeAguante
		// jarrasDeCervezaCompradas.alcoholEnJarra().sum()
	}
		
	method cantAlcohol() {	
		return jarrasDeCervezaCompradas.sum{jarra => jarra.alcoholEnJarra()}
		
		
	}	
	
	method quiereEntrar() {
		
		
		
	}

}

class PersonaBelga inherits Persona {
	
	const property paisOrigen= "Belgica"
	
	method cervezaQueLesGusta(cerveza) = cerveza.gramosDeLupuloPorLitro() > 4 //Despues lo veo
		
	
}

class PersonaAlemana inherits Persona {
	
	const property paisOrigen= "Alemania"
	
	method cervezasQueLesGusta(cerveza)= true
		
	
}

class PersonaCheca inherits Persona {
	
	const property paisOrigen= "Republica Checa"
	
	method cervezasQueLesGusta(cerveza) = cerveza.graduacion() > 8//Despues lo veo}
		
	
}