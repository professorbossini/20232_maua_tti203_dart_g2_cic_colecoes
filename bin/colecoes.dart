import 'dart:io';
void main(){
  //
  Map<String, String> contatos = {'Ana':'123'};

  int op;
  do{
    print("1-C\n2-R\n3-U\n4-D\n5-Sair");
    op = int.parse(stdin.readLineSync()!);
    switch(op){
      case 1:
        print('Digite o nome e número do contato!');
        var nome = stdin.readLineSync();
        var numero = stdin.readLineSync();
        if (contatos.containsKey(nome)){
          print('Contato já existente!');
        }
        else{
          contatos[nome!] = numero!;
        }
        print(contatos);
        break;
      case 2:
        dynamic nome = stdin.readLineSync();
        if (contatos.containsKey(nome)){
          print('$nome: ${contatos[nome]}');
        }
        else{
          print('contato inexistente');
        }
        break;
      case 3:
        final nome =  stdin.readLineSync() as String;
        if(contatos.containsKey(nome)){
          var numero = stdin.readLineSync();
          contatos[nome] = numero!;
        }
        else{
          print('Contato não existe!');
        }
        break;
      case 4:
        break;
      case 5:
        print("Blz, tchau");
        break;
      default:
        break;
    }
  }while (op != 5);
}


// void main(){
//   var pessoa = {
//     'nome': 'Ana',
//     'idade': 18
//   };
//   //keys
//   var chaves = pessoa.keys;
//   print(chaves.runtimeType);
//   for (final chave in chaves){
//     print(chave);
//     print(chave.runtimeType);
//     print(pessoa[chave]);
//   }
//   //values
//   var valores = pessoa.values;
//   for (final valor in valores){
//     print(valor);
//   }
//   //entries
//   var entries = pessoa.entries;
//   for (final entry in entries){
//     print(entry);
//     print(entry.key);
//     print(entry.value);
//   }
// }

// // //dart:core = java.lang
// // //import java.util.Map;
// // //dart:collections
// // void main(){
// //   num a = 1;
// //   //java
// //   //double b = (double) a;
// //   double b = a as double;
// //   print(b);
// //   var pessoa  = <String, Object> {
// //     'nome': 'Ana',
// //     'idade': 18
// //   };
// //   var nome = pessoa['nome'] as String;
// //   // var pessoa1 = {
// //   //   'nome': 'Ana',
// //   //   'idade': 18,
// //   //   'altura': 1.7
// //   // };

// //   // var pessoa2 = {
// //   //   'nome': 'João',
// //   //   'idade': 19
// //   // };

// //   // print(pessoa1['altura']);
// //   // print(pessoa2['altura']);
// //   //nome,idade,altura
// //   //Ana,18,1.7
// //   //João,19,
// //   // print(pessoa['nome']);
// //   // print(pessoa.nome); não vale

// //   // Map <String, Object> pessoa = {
// //   //   'nome': 'Ana',
// //   //   'idade': 18
// //   // };

// //   //type annotation
// //   // var pessoa = < String, Object > {};

// //   // //um mapa é uma coleção de pares chave/valor
// //   // // nome: Ana
// //   // // idade: 18
// //   // var pessoa = {
// //   //   'nome': 'Ana',
// //   //   'idade': 18
// //   // };
// //   // print(pessoa.runtimeType);

// //   // var lembretes = {
// //   //   1: 'Comprar café',
// //   //   2: 'Ver um filme'
// //   // }; 
// //   // print(lembretes.runtimeType);
// // }



// // // import 'dart:io';
// // // import 'dart:math';

// // // void exercicio2(){
// // // /*
// // //     Exercício. Escreva um programa que:
// // //   - pede ao usuário que faça um jogo da mega sena com 6 números. Use uma lista para
// // //   armazená-los. Não admita repetições.
// // //   - gera um jogo de 6 números da mega sena usando Random e guarda numa lista.
// // //   - exibe o jogo do usuário lado a lado com o jogo gerado, ambas ordenadas
// // //   - mostra ao usuário quais números ele acertou.
// // //  */
// // //   List<int> numerosUsuario = [];
// // //   List<int> numerosRandom = [];
// // //   for (int i = 0; i < 6; i++){
// // //     int numero = int.parse(stdin.readLineSync()!);
// // //     numerosUsuario.add(numero);
// // //     numerosRandom.add(Random().nextInt(60)+1);
// // //   }

// // //   numerosRandom.sort();
// // //   numerosUsuario.sort();
  
// // //   print("Seus números $numerosUsuario");
// // //   print("Núemros gerados $numerosRandom");
// // // }



// // // void exercicio(List <String> arguments){
// // //   // var lista = [1, 2, 3];

// // // // Exercício. Escreva um programa que faz a soma dos elementos recebidos como
// // // // parâmetro pelo método main. Lembre-se de fazer conversões apropriadas. Execute o
// // // // programa com
// // // // dart run colecoes 1 2 3
// // // var ac = 0;
// // // for (int i = 0;i<arguments.length;i++){
// // //   ac = ac + int.parse(arguments[i]);
// // // }
// // // print(ac);
// // // }

// // // void main(List <String> arguments){
// // //   exercicio2();
// // //   //type annotation
// // //   // var somenteStrings = <String> ['abc'];
// // //   // List lista = [];
// // //   // lista.add(true);
// // //   // lista.add(false);
// // //   // print(lista.runtimeType);


// // //   //type annotation

// // //   // List lista = [];
// // //   // dynamic a = "abc";
// // //   // print(a.runtimeType);
// // //   // print(lista.runtimeType);
// // //   // lista.add(true);
// // //   // lista.add('abc');
// // //   // print(lista);
// // //   // print(lista.runtimeType);
// // //   // List <String> nomes = ['Ana', 'Pedro'];
// // //   // List <int> meusInts = [1, 2];
// // //   // List <bool> meusBools = [true, false];

// // //   // var listaDeListas = [nomes, nomes];
// // //   // print(listaDeListas.runtimeType);

// // //   // var nomes = ['Ana', 'João', 'Maria'];
// // //   // print(nomes.contains('Ana'));
// // //   // print(nomes.contains('ANA'));
// // //   // nomes.insert(nomes.length, 'Cristina');
// // //   // print(nomes);
// // //   // nomes.add('Cristina');
// // //   // nomes.insert(0, 'Ana Maria');
// // //   // print(nomes);
// // //   // print(nomes.first);
// // //   // var numeros = [];
// // //   // print(numeros.first);
// // //   // print(numeros.firstOrNull);
// // //   // print(nomes.isEmpty);
// // //   // print(nomes.isNotEmpty);
// // //   // print(nomes.reversed);
// // //   // print(nomes.reversed.runtimeType);


// // //   // exercicio(arguments);
// // //   // var itensDiversos = ['Ana', true, 2, 2.5, null];
// // //   // var numeros = [2, 2.5];
// // //   // print(itensDiversos.runtimeType);
// // //   // print(numeros.runtimeType);
// // //   //
// // //   // var nomes = ['João', 'Pedro', 'Maria'];
// // //   // nomes[1] = 55;
// // //   // for (var nome in nomes){
// // //   //   print(nome);
// // //   //   nome = 'Ana';
// // //   // }
// // //   // print(nomes);

// // //   // for (int i = 0; i < nomes.length; ){
// // //   //   print(nomes[++i]);
// // //   // }
// // //   // nomes[0] = 'João Santos';
// // //   // print(nomes);
// // //   // print(nomes[-1]);
// // //   // print(nomes[3]);
// // //   // print(nomes[0]);
// // //   // print(nomes[1]);
// // //   // print(nomes);
// // //   // print(nomes.toString());
// // //   // print(nomes.runtimeType);
// // // }
