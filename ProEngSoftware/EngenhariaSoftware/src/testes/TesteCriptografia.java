package testes;

import autenticacao.Criptografia;

public class TesteCriptografia {
	public static void main(String[] args){
        String senha = "senhadeteste";
        System.out.println(Criptografia.criptografar(senha));
}

}
