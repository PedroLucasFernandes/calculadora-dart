import "dart:io";

void main(){

bool repita = true;

while(repita){
  print("Qual operação você quer realizar?");
  print('Digite "a" para adição');
  print('Digite "s" para subtração');
  print('Digite "m" para multiplicação');
  print('Digite "d" para divisão');
  String resposta = stdin.readLineSync()!;

  switch(resposta){
    case "a":
      print("Insira o primeiro número para a adição:");
      double num1 = double.parse(stdin.readLineSync()!);
      print("Insira o segundo número para a adição:");
      double num2 = double.parse(stdin.readLineSync()!);

      double soma = num1 + num2;
      print("O resultado da soma é: $soma");
      repita = false;
      break;

    case "s":
      print("Insira o primeiro número para a subtração:");
      double num1 = double.parse(stdin.readLineSync()!);
      print("Insira o segundo número para a subtração:");
      double num2 = double.parse(stdin.readLineSync()!);
      
      double diferenca = num1 - num2;
      print("O resultado da subtração é: $diferenca");
      repita = false;
      break;

    case "m":
      print("Insira o primeiro número para a multiplicação:");
      double num1 = double.parse(stdin.readLineSync()!);
      print("Insira o segundo número para a multiplicação:");
      double num2 = double.parse(stdin.readLineSync()!);
      
      double mult = num1 * num2;
      print("O resultado da multiplicação é: $mult");
      repita = false;
      break;

    case "d":
      print("Insira o primeiro número para a divisão:");
      double num1 = double.parse(stdin.readLineSync()!);
      print("Insira o segundo número para a divisão:");
      double num2 = double.parse(stdin.readLineSync()!);
      
      double div = num1 / num2;
      print("O resultado da divisão é: $div");
      repita = false;
      break;

    default:
      print("Valor inválido, tente novamente!");    
    }  
  }
}