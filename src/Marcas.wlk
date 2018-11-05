class MarcaDeCerverzasRubias {
	var property gramosDeLupuloPorLitro=0
	var property paisDeOrigen 
	var property graduacion=0
	
}

class MarcaDeCervezasNegras {
	
	var property gramosDeLupuloPorLitro= 0
	var property paisDeOrigen 

	
	method graduacionesYLupulo(graduacionReglamentaria){
				return [[gramosDeLupuloPorLitro * 2],[graduacionReglamentaria]].flatten()
	}
	
	method graduacion() {return self.graduacionesYLupulo(graduacionReglamentaria).min()}

}
class MarcaDeCerverzasRoja inherits MarcaDeCervezasNegras {
	
	override method graduacion() {return super() * 1.25}
}

object graduacionReglamentaria {
	var property graduacion = 0
}