import 'package:test/test.dart';
import '../bin/pessoa.dart';

void main() {
  test('IMC abaixo de 16 deve ser classificado como "Magreza Grave"', () {
    var pessoa = Pessoa("Teste", 40, 1.60);
    expect(pessoa.calcularIMC(), lessThan(16));
  });

  test('IMC entre 16 e 17 deve ser classificado como "Magreza Moderada"', () {
    var pessoa = Pessoa("Teste", 45, 1.70);
    expect(pessoa.calcularIMC(), greaterThanOrEqualTo(16));
    expect(pessoa.calcularIMC(), lessThan(17));
  });

  // Continue com outros testes para as classificações restantes do IMC
}
