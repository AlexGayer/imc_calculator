import 'dart:io';

import 'pessoa.dart';

void main() {
  try {
    print("Calculadora de IMC");

    // Solicita ao usuário as informações
    print("Informe o nome da pessoa:");
    String nome = stdin.readLineSync()!;

    print("Informe o peso da pessoa (em kg):");
    double peso = double.parse(stdin.readLineSync()!);

    print("Informe a altura da pessoa (em metros):");
    double altura = double.parse(stdin.readLineSync()!);

    // Cria um objeto Pessoa com as informações fornecidas
    Pessoa pessoa = Pessoa(nome, peso, altura);

    // Calcula o IMC
    double imc = pessoa.calcularIMC();

    // Exibe o resultado baseado nas faixas de IMC
    print("${pessoa.nome}, o seu IMC é $imc");

    if (imc < 16) {
      print("Classificação: Magreza Grave");
    } else if (imc >= 16 && imc < 17) {
      print("Classificação: Magreza Moderada");
    } else if (imc >= 17 && imc < 18.5) {
      print("Classificação: Magreza Leve");
    } else if (imc >= 18.5 && imc < 25) {
      print("Classificação: Saudável");
    } else if (imc >= 25 && imc < 30) {
      print("Classificação: Sobrepeso");
    } else if (imc >= 30 && imc < 35) {
      print("Classificação: Obesidade Grau I");
    } else if (imc >= 35 && imc < 40) {
      print("Classificação: Obesidade Grau II");
    } else {
      print("Classificação: Obesidade Grau III");
    }
  } catch (e) {
    print("Erro: $e");
  }
}
