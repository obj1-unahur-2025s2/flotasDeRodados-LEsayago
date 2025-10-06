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

  method pesoTotalFlota() = flota.sum({rodado => rodado.peso()})

  method estaBienEquipada() = (flota.size() > 2) and flota.all({rod => rod.velMaxima() >100})
}