class AutoEspecial {
  const capacidad
  const velMaxima
  const color
  const peso
  
  method capacidad() = capacidad
  
  method velMaxima() = velMaxima
  
  method color() = color
  
  method peso() = peso
}

class Corsa {
  const color
  
  method capacidad() = 4
  
  method velMaxima() = 150
  
  method color() = color
  
  method peso() = 1300
}

class Kwid {
  const tieneTanqueAdicional
  
  method capacidad() = if (tieneTanqueAdicional) 3 else 4
  
  method velMaxima() = if (tieneTanqueAdicional) 120 else 110
  
  method color() = azul
  
  method peso() = 1200 + if (tieneTanqueAdicional) 150 else 0
}

object azul {
  
}

object blanco {
  
}

object trafic {
  var interior = comodo
  var motor = pulenta
  
  method capacidad() = interior.capacidad()
  
  method velMaxima() = motor.velMaxima()
  
  method peso() = (4000 + motor.peso()) + interior.peso()
  
  method color() = blanco
  
  method combiarMotor(nuevoMotor) {
    motor = nuevoMotor
  }
  
  method cambiarInterior(nuevoInterior) {
    interior = nuevoInterior
  }
}

object comodo {
  method capacidad() = 5
  
  method peso() = 700
}

object popular {
  method capacidad() = 12
  
  method peso() = 1000
}

object pulenta {
  method peso() = 800
  
  method velMaxima() = 130
}

object bataton {
  method peso() = 500
  
  method velMaxima() = 80
}