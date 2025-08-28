void main(){
  Pai pai1 = Pai('Alexandre', 42, 'Agricultor');
  pai1.apresentar();

  Filho filho1 = Filho('Sabrina', 21, 'Sistemas de Informação');
  filho1.apresentar();
}

abstract class Pessoa{
  String nome;
  int idade;

  Pessoa(this.nome, this.idade);

  void apresentar(){
    print('Olá, meu nome é $nome e tenho $idade anos');
  }
}

class Pai extends Pessoa{
  String profissao;

  Pai(nome, idade, this.profissao) : super(nome, idade);

  void apresentar(){
    print('Olá, meu nome é $nome e tenho $idade anos e minha profissão é $profissao.');
  }
}

class Filho extends Pessoa{
  String curso;

  Filho(nome, idade, this.curso) : super(nome, idade);

  void apresentar(){
    print('Olá, meu nome é $nome e tenho $idade anos e estou cursando $curso.');
  }
}