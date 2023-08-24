import 'dart:io';

class Calculadora{
  double num1 = 0, num2 = 0;

  double adicao(){
    return num1 + num2;
  }

  double subtracao(){
    return num1 - num2;
  }

  double multiplicacao(){
    return num1 * num2;
  }

  double divisao(){
    return num1 / num2;
  }

  void inserirNumero(String operacao){
  print("Insira o primeiro número para a $operacao:");
  num1 = double.parse(stdin.readLineSync()!);
  print("Insira o segundo número para a $operacao:");
  num2 = double.parse(stdin.readLineSync()!);
  }
}