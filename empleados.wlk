//Escribir aqui los objetos
object gimenez {
    var fondos = 300000 

    method pagarSueldo(empleado) {
      fondos = fondos - empleado.sueldo()
      empleado.recibirSueldo()
    }

    method fondo() {
      return fondos
    }
}

object galvan {
    var sueldo = 15000
    var dineroActual = 0
    var deuda = 0
    method sueldo(_sueldo) {
      sueldo = _sueldo
    }

    method sueldo() {
      return sueldo
    }

    method deuda() {
      return deuda
    }

    method dinero() {
      return dineroActual
    }

    method gastar(cuanto) {
        if (cuanto > dineroActual){
            deuda = deuda + (cuanto - dineroActual)
            dineroActual = 0
        } else {
            dineroActual = dineroActual - cuanto
        }
    }

    method recibirSueldo() {
        if (sueldo > deuda){
            dineroActual = dineroActual + (sueldo - deuda)
            deuda = 0
        } else {
            deuda = deuda - sueldo
        }
    }
}

object baigorria {
  var sueldo = 0
  var totalCobrado = 0
  method vender(empanadasVendidas) {
    sueldo = sueldo + (15 * empanadasVendidas)
  }

  method sueldo() {
    return sueldo
  }

  method totalCobrado() {
    return totalCobrado
  }

  method recibirSueldo() {
    totalCobrado = totalCobrado + sueldo
    sueldo = 0
  }
}