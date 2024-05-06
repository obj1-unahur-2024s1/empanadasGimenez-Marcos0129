object galvan{
	var billetera = 0
	var deudaActual=0
	method sueldo(){
		return 150000
	}
	method cobrarSueldo(){
		billetera= billetera + self.sueldo()
		self.pagarDeuda()
		
	}
	
	method gastar(cuanto){
		if (billetera>=cuanto){
			billetera= billetera-cuanto
		}else{
			deudaActual= deudaActual-billetera+cuanto
			billetera= 0
		}
	}
	
	method totalDeuda(){
		return deudaActual
	}
	
	method pagarDeuda(){
		if (deudaActual>=billetera){
			deudaActual= deudaActual- billetera
			billetera= 0
		}else{
			billetera= billetera- deudaActual
			deudaActual=0
		}
	}
	
	method totalDinero(){
		return billetera
	}
}

object baigorria{
	var contadorDeEmpanadas
	var billetera= 0
	
	method cobrarSueldo(){
		billetera= billetera+ self.sueldo()
	}

	method sueldo(){
		return 150*self.cantidadDeEmpanadasVendidas()
	}
	
	method cantidadDeEmpanadasVendidas(){
		return contadorDeEmpanadas
	}
	method venderUnaEmpanada(){
		contadorDeEmpanadas=contadorDeEmpanadas+1
	}
}

object gimenez{
	var dinero= 3000000
	method pagarA(empleado){
		dinero= dinero-empleado.sueldo()
		empleado.cobrarSueldo()
	}
}