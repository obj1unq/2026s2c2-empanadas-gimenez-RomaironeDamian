//Escribir aqui los objetos
//Escribir aqui los objetos
object gimenez {
    var fondos = 300000 

    method pagarSueldo(empleado) {
      self.validarFondos(empleado)
      fondos = fondos - empleado.sueldo()
      empleado.recibirSueldo()
    }

    method validarFondos(empleado) {
      if (empleado.sueldo() > fondos) {
        self.error("No se pueden pagar los sueldos si no se tienen fondos suficientes")
      }
    }

    method fondo() {
      return fondos
    }
}

object galvan {
    var sueldo =15000
    var saldo = 0
    method recibirSueldo(){
            saldo = sueldo + saldo
    }
    method sueldo(_sueldo){
        sueldo = _sueldo
    }
    method sueldo(){
        return sueldo
    }
    method deuda(){
        if (saldo > 0){
            return 0
        } else {
            return saldo * (-1)
        }
    }
    method dinero(){
        if (saldo > 0){
            return saldo
        } else {
            return 0
        }
    }
    method gastar(cantidad){
        if (cantidad > (saldo)){
            saldo = saldo + cantidad * (-1)
        }else{
            saldo = cantidad + saldo
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