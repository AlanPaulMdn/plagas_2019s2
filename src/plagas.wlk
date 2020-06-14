import elementos.*

class Plagas {
	var poblacion =null
	
	method poblacion (cant){ poblacion= cant }
	
	method poblacion()= poblacion
	
	method transmiteEnfermedades()=
		self.poblacion() >= 10
		
	method atacarA(elemento){
		elemento.recibeAtaqueDe(self)
		self.poblacion ( self.poblacion() + self.poblacion() * self.tasaDeAumento())
	}
	method tasaDeAumento()= 0.1
}


class Cucarachas inherits Plagas{
	var poblacionCucas
	var property pesoPromedio
	
	
	override method poblacion()= poblacionCucas
	override method poblacion (cant){ poblacion= cant }
	
	method nivelDeDanio()= poblacionCucas/2
	
	override method transmiteEnfermedades()=
		super() and pesoPromedio >= 10
	
	override method atacarA(elemento){
		super(elemento)
		pesoPromedio+=2
	}
}

class Pulgas inherits Plagas {
	var property poblacionPulgas = null
	
	override method poblacion()= poblacionPulgas
	method nivelDeDanio()= poblacionPulgas*2
}

class Garrapatas inherits Pulgas {
	var property poblacionGarrapatas
	override method tasaDeAumento()= 0.2
}


class Mosquitos inherits Plagas {
	var property poblacionMosquitos
	
	override method poblacion()= poblacionMosquitos
	method nivelDeDanio()= poblacionMosquitos

}



