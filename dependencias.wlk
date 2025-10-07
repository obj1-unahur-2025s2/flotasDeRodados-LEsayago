class Dependencia {
  const flota = []
  const cantidadDeEmpleados
  
  method agregarAFlota(rodado) {
    flota.add(rodado)
  }
  
  method quitarDeFlota(rodado) {
    flota.remove(rodado)
  }
  
  method cantidadDeEmpleados() = cantidadDeEmpleados
  
  method pesoTotalFlota() = flota.sum({ rodado => rodado.peso() })
  
  method estaBienEquipada() = (flota.size() > 2) and flota.all(
    { rod => rod.velMaxima() >= 100 }
  )
  
  method capacidadTotal() = flota.sum({ rod => rod.capacidad() })
  
  method capacidadTotalEnColor(color) = flota.filter(
    { rod => rod.color() == color }
  ).sum({ rod => rod.capacidad() })
  
  method colorDelRodadoMasRapido() = flota.max(
    { rod => rod.velMaxima() }
  ).color()
  
  method capacidadFaltante() = cantidadDeEmpleados - self.capacidadTotal()
  
  method esGrande() = (cantidadDeEmpleados > 39) and (flota.size() > 4)

}