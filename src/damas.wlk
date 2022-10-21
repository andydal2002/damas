import wollok.game.*
import celdas.*
import piezas.*

object juego {
	method configurar() {
		game.width(8)
		game.height(8)
		game.cellSize(100)
		game.title("Damas")
		
		keyboard.space().onPressDo({ selector.seleccionarPieza() })
	}
	
	method iniciarTablero() {
		// TABLERO
		game.addVisual(celda_blanca1)
		game.addVisual(celda_blanca2)
		game.addVisual(celda_blanca3)
		game.addVisual(celda_blanca4)
		game.addVisual(celda_blanca5)
		game.addVisual(celda_blanca6)
		game.addVisual(celda_blanca7)
		game.addVisual(celda_blanca8)
		game.addVisual(celda_blanca9)
		game.addVisual(celda_blanca10)
		game.addVisual(celda_blanca11)
		game.addVisual(celda_blanca12)
		game.addVisual(celda_blanca13)
		game.addVisual(celda_blanca14)
		game.addVisual(celda_blanca15)
		game.addVisual(celda_blanca16)
		game.addVisual(celda_blanca17)
		game.addVisual(celda_blanca18)
		game.addVisual(celda_blanca19)
		game.addVisual(celda_blanca20)
		game.addVisual(celda_blanca21)
		game.addVisual(celda_blanca22)
		game.addVisual(celda_blanca23)
		game.addVisual(celda_blanca24)
		game.addVisual(celda_blanca25)
		game.addVisual(celda_blanca26)
		game.addVisual(celda_blanca27)
		game.addVisual(celda_blanca28)
		game.addVisual(celda_blanca29)
		game.addVisual(celda_blanca30)
		game.addVisual(celda_blanca31)
		game.addVisual(celda_blanca32)
		game.addVisual(celda_negra1)
		game.addVisual(celda_negra2)
		game.addVisual(celda_negra3)
		game.addVisual(celda_negra4)
		game.addVisual(celda_negra5)
		game.addVisual(celda_negra6)
		game.addVisual(celda_negra7)
		game.addVisual(celda_negra8)
		game.addVisual(celda_negra9)
		game.addVisual(celda_negra10)
		game.addVisual(celda_negra11)
		game.addVisual(celda_negra12)
		game.addVisual(celda_negra13)
		game.addVisual(celda_negra14)
		game.addVisual(celda_negra15)
		game.addVisual(celda_negra16)
		game.addVisual(celda_negra17)
		game.addVisual(celda_negra18)
		game.addVisual(celda_negra19)
		game.addVisual(celda_negra20)
		game.addVisual(celda_negra21)
		game.addVisual(celda_negra22)
		game.addVisual(celda_negra23)
		game.addVisual(celda_negra24)
		game.addVisual(celda_negra25)
		game.addVisual(celda_negra26)
		game.addVisual(celda_negra27)
		game.addVisual(celda_negra28)
		game.addVisual(celda_negra29)
		game.addVisual(celda_negra30)
		game.addVisual(celda_negra31)
		game.addVisual(celda_negra32)
	
		// PIEZAS	
		game.addVisual(piezaBlanca1)
		game.addVisual(piezaBlanca2)
		game.addVisual(piezaBlanca3)
		game.addVisual(piezaBlanca4)
		game.addVisual(piezaBlanca5)
		game.addVisual(piezaBlanca6)
		game.addVisual(piezaBlanca7)
		game.addVisual(piezaBlanca8)
		game.addVisual(piezaBlanca9)
		game.addVisual(piezaBlanca10)
		game.addVisual(piezaBlanca11)
		game.addVisual(piezaBlanca12)
		game.addVisual(piezaNegra1)
		game.addVisual(piezaNegra2)
		game.addVisual(piezaNegra3)
		game.addVisual(piezaNegra4)
		game.addVisual(piezaNegra5)
		game.addVisual(piezaNegra6)
		game.addVisual(piezaNegra7)
		game.addVisual(piezaNegra8)
		game.addVisual(piezaNegra9)
		game.addVisual(piezaNegra10)
		game.addVisual(piezaNegra11)
		game.addVisual(piezaNegra12)
		
		tablero.agregar(piezaBlanca1)
		tablero.agregar(piezaBlanca2)
		tablero.agregar(piezaBlanca3)
		tablero.agregar(piezaBlanca4)
		tablero.agregar(piezaBlanca5)
		tablero.agregar(piezaBlanca6)
		tablero.agregar(piezaBlanca7)
		tablero.agregar(piezaBlanca8)
		tablero.agregar(piezaBlanca9)
		tablero.agregar(piezaBlanca10)
		tablero.agregar(piezaBlanca11)
		tablero.agregar(piezaBlanca12)
		tablero.agregar(piezaNegra1)
		tablero.agregar(piezaNegra2)
		tablero.agregar(piezaNegra3)
		tablero.agregar(piezaNegra4)
		tablero.agregar(piezaNegra5)
		tablero.agregar(piezaNegra6)
		tablero.agregar(piezaNegra7)
		tablero.agregar(piezaNegra8)
		tablero.agregar(piezaNegra9)
		tablero.agregar(piezaNegra10)
		tablero.agregar(piezaNegra11)
		tablero.agregar(piezaNegra12)
		
		
		// SELECTOR
		game.addVisualCharacter(selector)
	}	
	
	method terminar() {
		game.addVisual(gameOver)
	}
}

object gameOver {
	method position() = game.center()
	method text() = "JAQUE MATE"
}

object selector {
	var property piezaSeleccionada = false
	var property position = game.origin()
	method image() = "cursor.png"
	method seleccionarPieza() {
		if (piezaSeleccionada == false) {
			piezaSeleccionada = tablero.piezas().findOrDefault({ pieza => pieza.position() == self.position()}, false)
		}
		else {
			game.removeVisual(piezaSeleccionada)
			piezaSeleccionada.position(self.position())
			game.addVisual(piezaSeleccionada)
			piezaSeleccionada = false
		}
	}

}

object tablero {
	const piezas = []
	
	method piezas() = piezas
	
	method agregar(pieza) { piezas.add(pieza) }
	
	method quitar(pieza) { piezas.remove(pieza) }
	
}
