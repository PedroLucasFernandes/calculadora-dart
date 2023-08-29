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
    print('Digite "p" para potenciação');
    print('Digite "r" para radiciação');
    print('Digite "f" para fatorial');
    String input = stdin.readLineSync()!;

    if ({"a", "s", "m", "d", "p", "r", "f"}.contains(input)) {
      input == "a" ? operacao = "adição" :
      input == "s" ? operacao = "subtração" :
      input == "m" ? operacao = "multiplicação" :
      input == "d" ? operacao = "divisão" :
      input == "p" ? operacao = "potenciação" :
      input == "r" ? operacao = "radiciação" :
      operacao = "fatorial";
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

      case "p":
      resultado = calculadora.potenciacao();
      break;
      
      case "r":
      resultado = calculadora.radiciacao();
      break;

      case "f":
      resultado = calculadora.fatorial();
      break;

      default:
        print("Valor inválido, tente novamente!");
        repita = true;
        valido = false;
    }

    if(valido){
      print("O resultado da $operacao é: $resultado");
      print("Deseja realizar outra operação?");
      print('Digite "s" para SIM ou qualquer outro valor para NÃO.');
      input = stdin.readLineSync()!; 
      input == "s" ? repita = true : repita = false;
    }
  }
}