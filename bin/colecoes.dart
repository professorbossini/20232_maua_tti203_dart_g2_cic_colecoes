import 'dart:io';
import 'dart:math';

void exercicio2(){
/*
    Exercício. Escreva um programa que:
  - pede ao usuário que faça um jogo da mega sena com 6 números. Use uma lista para
  armazená-los. Não admita repetições.
  - gera um jogo de 6 números da mega sena usando Random e guarda numa lista.
  - exibe o jogo do usuário lado a lado com o jogo gerado, ambas ordenadas
  - mostra ao usuário quais números ele acertou.
 */
  List<int> numerosUsuario = [];
  List<int> numerosRandom = [];
  for (int i = 0; i < 6; i++){
    int numero = int.parse(stdin.readLineSync()!);
    numerosUsuario.add(numero);
    numerosRandom.add(Random().nextInt(60)+1);
  }

  numerosRandom.sort();
  numerosUsuario.sort();
  
  print("Seus números $numerosUsuario");
  print("Núemros gerados $numerosRandom");
}



void exercicio(List <String> arguments){
  // var lista = [1, 2, 3];

// Exercício. Escreva um programa que faz a soma dos elementos recebidos como
// parâmetro pelo método main. Lembre-se de fazer conversões apropriadas. Execute o
// programa com
// dart run colecoes 1 2 3
var ac = 0;
for (int i = 0;i<arguments.length;i++){
  ac = ac + int.parse(arguments[i]);
}
print(ac);
}

void main(List <String> arguments){
  exercicio2();
  //type annotation
  // var somenteStrings = <String> ['abc'];
  // List lista = [];
  // lista.add(true);
  // lista.add(false);
  // print(lista.runtimeType);


  //type annotation

  // List lista = [];
  // dynamic a = "abc";
  // print(a.runtimeType);
  // print(lista.runtimeType);
  // lista.add(true);
  // lista.add('abc');
  // print(lista);
  // print(lista.runtimeType);
  // List <String> nomes = ['Ana', 'Pedro'];
  // List <int> meusInts = [1, 2];
  // List <bool> meusBools = [true, false];

  // var listaDeListas = [nomes, nomes];
  // print(listaDeListas.runtimeType);

  // var nomes = ['Ana', 'João', 'Maria'];
  // print(nomes.contains('Ana'));
  // print(nomes.contains('ANA'));
  // nomes.insert(nomes.length, 'Cristina');
  // print(nomes);
  // nomes.add('Cristina');
  // nomes.insert(0, 'Ana Maria');
  // print(nomes);
  // print(nomes.first);
  // var numeros = [];
  // print(numeros.first);
  // print(numeros.firstOrNull);
  // print(nomes.isEmpty);
  // print(nomes.isNotEmpty);
  // print(nomes.reversed);
  // print(nomes.reversed.runtimeType);


  // exercicio(arguments);
  // var itensDiversos = ['Ana', true, 2, 2.5, null];
  // var numeros = [2, 2.5];
  // print(itensDiversos.runtimeType);
  // print(numeros.runtimeType);
  //
  // var nomes = ['João', 'Pedro', 'Maria'];
  // nomes[1] = 55;
  // for (var nome in nomes){
  //   print(nome);
  //   nome = 'Ana';
  // }
  // print(nomes);

  // for (int i = 0; i < nomes.length; ){
  //   print(nomes[++i]);
  // }
  // nomes[0] = 'João Santos';
  // print(nomes);
  // print(nomes[-1]);
  // print(nomes[3]);
  // print(nomes[0]);
  // print(nomes[1]);
  // print(nomes);
  // print(nomes.toString());
  // print(nomes.runtimeType);
}
