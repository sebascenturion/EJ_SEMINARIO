void main() {
  double precio = 400; 
  double porcentajeDescuento = 10; 
  
  double precioFinal = calcularPrecioFinal(precio, porcentajeDescuento);
  
  print('El precio final después del descuento es: $precioFinal');
}

double calcularPrecioFinal(double precio, double porcentajeDescuento) {
  double descuento = precio * (porcentajeDescuento / 100);
  return precio - descuento;
}
