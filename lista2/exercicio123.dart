void main(){
  Cliente cliente1 = Cliente("null", 0);
  cliente1.setNome = "Alyce Silva";
  cliente1.setCodigo = 123;

  Cliente cliente2 = Cliente("", 0);
  cliente2.setNome = "João Pedro";
  cliente2.setCodigo = 456;

  cliente1.mostrarDados();
  cliente2.mostrarDados();
}

class Cliente{
  String nome;
  int codigo;

  Cliente(this.nome, this.codigo);

  set setNome(String nome){
    this.nome = nome;
  }

  set setCodigo(int codigo) {
    if (codigo > 0) {
      this.codigo = codigo;
    } else {
      print("O código deve ser maior que zero!");
    }
  }

  get getNome{
    if(this.nome != ""){
      return this.nome;
    }else{
      print("O campo deve ser preenchido!");
    }
  }

  get getCodigo {
    if (this.codigo > 0) {
      return this.codigo;
    } else {
      print("O campo código deve ser preenchido!");
      return 0;
    }
  }

  void mostrarDados() {
    print("Nome do cliente: $nome | Código: $codigo");
  }
}

