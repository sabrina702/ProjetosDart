void main(){
  Quadrado quadrado = Quadrado(4, 5);
  Circulo circulo = Circulo(3);
  Losangulo losangulo = Losangulo(6, 4);

  print('Área do quadrado: ${quadrado.calculoDaArea()}');
  print('Área do círculo: ${circulo.calculoDaArea()}');
  print('Área do losângulo: ${losangulo.calculoDaArea()}');
}

abstract class FormaGeometrica {
  double calculoDaArea();
}

class Quadrado extends FormaGeometrica {
  double comprimento;
  double altura;

  Quadrado(this.comprimento, this.altura);

  @override
  double calculoDaArea() {
    return comprimento * altura;
  }
}

class Circulo extends FormaGeometrica {
  double raio;

  Circulo(this.raio);

  @override
  double calculoDaArea() {
    return 3.14 * (raio * raio);
  }
}

class Losangulo extends FormaGeometrica {
  double diagonalMaior;
  double diagonalMenor;

  Losangulo(this.diagonalMaior, this.diagonalMenor);

  @override
  double calculoDaArea() {
    return (diagonalMaior * diagonalMenor) / 2;
  }
}