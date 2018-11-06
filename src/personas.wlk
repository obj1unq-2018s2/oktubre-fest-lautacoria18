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
	
	method quiereEntrar(carpa)

}

class PersonaBelga inherits Persona {
	
	const property paisOrigen= "Belgica"
	
	method cervezaQueLesGusta(cerveza) = cerveza.gramosDeLupuloPorLitro() > 4 //Despues lo veo
	
		override method quiereEntrar(carpa) {
		
		var marcaDeLaCarpa = carpa.marcaDeLaCervezaQueVende()
		
		  return  ((marcaDeLaCarpa.paisDeOrigen() == paisOrigen) and
						
						carpa.bandaDeMusica() and escuchaMusicaTradicional)
							
		}
	

		
	
}

class PersonaAlemana inherits Persona {
	
	const property paisOrigen= "Alemania"
	
	method cervezasQueLesGusta(cerveza)= true
		
					override method quiereEntrar(carpa) {
		
		var marcaDeLaCarpa = carpa.marcaDeLaCervezaQueVende()
		var tamanioDeCarpa = carpa.personasEnLaCarpa()
		
		  return  ((marcaDeLaCarpa.paisDeOrigen() == paisOrigen) and
						
						carpa.bandaDeMusica() and escuchaMusicaTradicional) 
						and tamanioDeCarpa.even()
							
		}
	
}

class PersonaCheca inherits Persona {
	
	const property paisOrigen= "Republica Checa"
	
	method cervezasQueLesGusta(cerveza) = cerveza.graduacion() > 8//Despues lo veo}
	
	
		override method quiereEntrar(carpa) {
		
		var marcaDeLaCarpa = carpa.marcaDeLaCervezaQueVende()
		
		  return  ((marcaDeLaCarpa.paisDeOrigen() == paisOrigen) and
						
						carpa.bandaDeMusica() and escuchaMusicaTradicional)
							
		}
		
	
}