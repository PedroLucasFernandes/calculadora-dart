import "dart:io";
import "Calculadora.dart";

void main() {
  bool repita = true, valido = true;
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

    if ({"a", "s", "m", "d"}.contains(input)) {
      input == "a" ? operacao = "adição" :
      input == "s" ? operacao = "subtração" :
      input == "m" ? operacao = "multiplicação" :
      operacao = "divisão";
      calculadora.inserirNumero(operacao);
      valido = true;
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
        valido = false;
    }

    if(valido){
      print("O resultado da $operacao é: $resultado");
      print("Deseja realizar outra operação?");
      print('Digite "s" para sim ou qualquer outro valor para não.');
      input = stdin.readLineSync()!; 
      input == "s" ? repita = true : repita = false;
    }
  }
}