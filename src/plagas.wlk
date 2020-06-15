import elementos.*

class Plagas {
	var property poblacion
	
	method transmiteEnfermedades()=
		self.poblacion() >= 10
		
	method atacarA(elemento){
		elemento.recibeAtaqueDe(self)
		self.poblacion ( self.poblacion() + self.poblacion() * self.tasaDeAumento())
	}
	method tasaDeAumento()= 0.1
}


class Cucarachas inherits Plagas{
	var property pesoPromedio

	method nivelDeDanio()= poblacion/2
	
	override method transmiteEnfermedades()=
		super() and pesoPromedio >= 10
	
	override method atacarA(elemento){
		super(elemento)
		pesoPromedio+=2
	}
}

class Pulgas inherits Plagas {
	
	override method poblacion()= poblacion
	method nivelDeDanio()= self.poblacion()*2
}

class Garrapatas inherits Pulgas {
	override method tasaDeAumento()= 0.2
}


class Mosquitos inherits Plagas {
	
	override method poblacion()= poblacion
	method nivelDeDanio()= poblacion

}



