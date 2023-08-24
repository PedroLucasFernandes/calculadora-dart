import "dart:io";

import "Calculadora.dart";
int contagem = 1;

void main(){

bool repita = true;
double resultado;
String? operacao;
Calculadora calculadora = new Calculadora();

while(repita){
  print("Qual operação você quer realizar?");
  print('Digite "a" para adição');
  print('Digite "s" para subtração');
  print('Digite "m" para multiplicação');
  print('Digite "d" para divisão');
  String resposta = stdin.readLineSync()!;
  repita = false;

  switch(resposta){
    case "a":
      operacao = "adição";
      
      calculadora.inserirNumero(operacao);
      print("O resultado da $operacao é: ${calculadora.adicao()}");
      
      break;

    case "s":
      operacao = "subtração";

      calculadora.inserirNumero(operacao);
      print("O resultado da $operacao é: ${calculadora.subtracao()}");

      break;

    case "m":
      operacao = "multiplicação";
      
      calculadora.inserirNumero(operacao);
      print("O resultado da $operacao é: ${calculadora.multiplicacao()}");
      
      break;

    case "d":
      operacao = "divisão";

      calculadora.inserirNumero(operacao);
      print("O resultado da $operacao é: ${calculadora.divisao()}");
  
      break;

    default:
      print("Valor inválido, tente novamente!");
      repita = true;
      break;
    }
  }
}