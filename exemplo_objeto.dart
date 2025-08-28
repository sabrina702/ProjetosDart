void main(){
  Funcionario funcionario1 = Funcionario(null, null);
  funcionario1.setLogin = "admin";
  funcionario1.setSenha = "123456";

  print(funcionario1.getLogin);
  print(funcionario1.getSenha);
}

class Funcionario{
  //usamos o _ para definir um atributo como privado
  String? _login;
  String? _senha;

  Funcionario(this._login, this._senha);

  set setLogin(String login){
    this._login = login;
  }

  set setSenha(String senha){
    this._senha = senha;
  }

  get getLogin{
    if(this._login != ""){
      return this._login;
    }else{
      print("O campo deve ser preenchido!");
    }
  }

  get getSenha{
    if(this._senha != ""){
      return this._senha;
    }else{
      print("O campo deve ser preenchido!");
    }
  }
}