class Persona {
	
	var property peso=0
	var property jarrasDeCervezaCompradas= []
	var property escuchaMusicaTradicional
	var property nivelDeAguante =0
	
	///////Le pasas una marca y te dice si le gusta o no
	method estaEbrio() {
		
		
		 return jarrasDeCervezaCompradas.capacidadEnLitros().sum() * peso > nivelDeAguante
		
	}
		
	method cantAlcohol() {	
		return jarrasDeCervezaCompradas.sum{jarra => jarra.capacidadEnLitros()}
		
		
	}	

}

class PersonaBelga inherits Persona {
	
	const property paisOrigen= "Belgica"
	
	method cervezasQueLesGusta(cerveza) {} //Despues lo veo
		
	
}

class PersonaAlemana inherits Persona {
	
	const property paisOrigen= "Alemania"
	
	method cervezasQueLesGusta(cerveza)= true
		
	
}

class PersonaCheca inherits Persona {
	
	const property paisOrigen= "Republica Checa"
	
	method cervezasQueLesGusta(cerveza) {}//Despues lo veo}
		
	
}