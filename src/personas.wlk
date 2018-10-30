object persona {
	
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
		
		
	method 
	
	
}
