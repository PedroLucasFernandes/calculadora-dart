import "dart:io";
import "Calculadora.dart";

void main() {
  bool repita = true;
  double resultado = 0;
  String operacao = "operação";
  Calculadora calculadora = new Calculadora();

  while (repita) {
    print("Qual operação você quer realizar?");
    print('Digite "a" para adição');
    print('Digite "s" para subtração');
    print('Digite "m" para multiplicação');
    print('Digite "d" para divisão');
    String input = stdin.readLineSync()!;

    repita = false;

    if ({"a", "s", "m", "d"}.contains(input)) {
      input == "a" ? operacao = "adição" :
      input == "s" ? operacao = "subtração" :
      input == "m" ? operacao = "multiplicação" :
      operacao = "divisão";
      calculadora.inserirNumero(operacao);
    }

    switch (input) {
      case "a":
        resultado = calculadora.adicao();
        break;

      case "s":
        resultado = calculadora.subtracao();
        break;

      case "m":
        resultado = calculadora.multiplicacao();
        break;

      case "d":
        resultado = calculadora.divisao();
        break;

      default:
        print("Valor inválido, tente novamente!");
        repita = true;
    }
  }

  print("O resultado da $operacao é: $resultado");
}