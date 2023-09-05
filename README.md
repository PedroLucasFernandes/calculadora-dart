# Calculadora programada em Dart
Calculadora capaz de realizar fatorial, potenciação e radiciação, além das quatro operações básicas da matemática.

***

## Autor
Pedro Lucas Fernandes Ferreira

## Proposta
Programar uma calculadora fácil de ser utilizada, com o intuito educativo de colocar em prática meus conhecimentos de Programação Orientada a Objetos.

## Como utilizar o sistema
Abra o terminal na pasta onde os arquivos se encontram e utilize o comando ``dart main.dart``. Após isso a aplicação já estará em funcionamento.

Com isso, uma série de operações matemáticas aparecerão na tela, digite a letra correspondente para selecionar o cálculo desejado. Confira abaixo:
- Digite "a" para adição
- Digite "s" para subtração
- Digite "m" para multiplicação
- Digite "d" para divisão
- Digite "p" para potenciação
- Digite "r" para radiciação
- Digite "f" para fatorial

Caso a sua resposta não seja nenhuma das letras previstas, uma mensagem de valor inválido aparecerá, junto das instruções novamente.

Após inserir um valor válido, o programa irá te pedir dois números, um de cada vez, basta enviá-los e ler a resposta logo abaixo.

Depois do resultado, a calculadora pergunta se você quer realizar mais alguma operação, responda conforme a instrução abaixo para voltar ao menu de seleção de operações ou finalizar o programa.
- Deseja realizar outra operação?
- Digite "s" para SIM ou qualquer outro valor para NÃO.

![Calculadora em funcionamento](https://i.imgur.com/tLIuz35.png)

## Como foi desenvolvido
Utilizei o Dart como principal e única linguagem para o projeto, por meio do editor de código Visual Studio Code.

Foram utilizados dois arquivos, o ``main.dart`` é responsável pela execução do programa, e ``Calculadora.dart`` armazena a classe "Calculadora", onde os métodos de input e de processamento do resultado foram inseridos.

### Explicando os métodos
Sete dos oito métodos presentes no código possuem o único intuito de realizar a operação do resultado. ``calculadora.adicao()`` irá retornar o primeiro número mais (+) o segundo, já ``calculadora.subtracao()`` retorna o primeiro menos (-) o segundo.

As contas matemáticas são feitas através destes métodos, portanto cada uma contém um método próprio. Além dos dois mencionados, também temos ``calculadora.multiplicacao()`` ``calculadora.divisao()`` ``calculadora.potenciacao()``, ``calculadora.radiciacao()`` e ``calculadora.fatorial()``, onde todos esses apenas tem a função de retornar o resultado da operação.

Destaque para as operações de potenciação e radiciação, que utilizam o comando ``pow`` importado da biblioteca ``dart:math``.

Observação: Todos os resultados retornados são do tipo ``double``, ou seja, números decimais.

Por fim, o último método tem o intuito de pedir os números para o usuário, por meio de um ``print()``, e escaneá-los (transformando em ``double``) utilizando o comando ``double.parse(stdin.readLineSync()!)``. A primeira resposta será atribuida para a variável ``num1`` e a segunda em ``num2``. No caso da fatorial, o método pedirá apenas um valor, o ``num1``.