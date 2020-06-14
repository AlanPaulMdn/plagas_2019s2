import plagas.*

class Barrio {
	var property elementos = []
	
	method esCopado()= elementos.count({e => e.esBueno()}) > elementos.count({e => not e.esBueno()})
}


class Hogar {
	var property nivelDeMugre
	var property confortQueOfrece
	
	method esBueno()= nivelDeMugre <= confortQueOfrece/2
	method recibeAtaqueDe(plaga){ nivelDeMugre += plaga.nivelDeDanio() }
}

class Huerta {
	var property capacidadDeProduccion
	var property nivel
	method esBueno()= capacidadDeProduccion > nivel
	method recibeAtaqueDe(plaga){ capacidadDeProduccion=
		(capacidadDeProduccion - 0.1*plaga.nivelDeDanio()).max(0)
	}
}

class Mascota {
	var property nivelDeSalud
	
	method esBueno()= nivelDeSalud > 250
	method recibeAtaqueDe( plaga ) { 
		if (plaga.transmiteEnfermedades()) {
			nivelDeSalud = (nivelDeSalud - plaga.nivelDeDanio()).max(0)
		}else{}
	}
}