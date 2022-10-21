import wollok.game.*

class PiezasBlancas {
	var property position
	method image() = "pieza_banca.png"
}

class PiezasNegras {
	var property position
	method image() = "pieza_negra.png"
}

const piezaNegra1 = new PiezasNegras(position = game.at(1,0))
const piezaNegra2 = new PiezasNegras(position = game.at(3,0))
const piezaNegra3 = new PiezasNegras(position = game.at(5,0))
const piezaNegra4 = new PiezasNegras(position = game.at(7,0))
const piezaNegra5 = new PiezasNegras(position = game.at(0,1))
const piezaNegra6 = new PiezasNegras(position = game.at(2,1))
const piezaNegra7 = new PiezasNegras(position = game.at(4,1))
const piezaNegra8 = new PiezasNegras(position = game.at(6,1))
const piezaNegra9 = new PiezasNegras(position = game.at(1,2))
const piezaNegra10 = new PiezasNegras(position = game.at(3,2))
const piezaNegra11 = new PiezasNegras(position = game.at(5,2))
const piezaNegra12 = new PiezasNegras(position = game.at(7,2))

const piezaBlanca1 = new PiezasBlancas(position = game.at(0,7))
const piezaBlanca2 = new PiezasBlancas(position = game.at(2,7))
const piezaBlanca3 = new PiezasBlancas(position = game.at(4,7))
const piezaBlanca4 = new PiezasBlancas(position = game.at(6,7))
const piezaBlanca5 = new PiezasBlancas(position = game.at(1,6))
const piezaBlanca6 = new PiezasBlancas(position = game.at(3,6))
const piezaBlanca7 = new PiezasBlancas(position = game.at(5,6))
const piezaBlanca8 = new PiezasBlancas(position = game.at(7,6))
const piezaBlanca9 = new PiezasBlancas(position = game.at(0,5))
const piezaBlanca10 = new PiezasBlancas(position = game.at(2,5))
const piezaBlanca11 = new PiezasBlancas(position = game.at(4,5))
const piezaBlanca12 = new PiezasBlancas(position = game.at(6,5))