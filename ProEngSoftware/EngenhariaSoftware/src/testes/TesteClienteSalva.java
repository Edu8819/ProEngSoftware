package testes;

import dao.DAOLivors;
import dao.DaoClientebd;
import model.Cliente;
import model.Livors;


public class TesteClienteSalva {
	public static void main(String[] args) {
		
		DAOLivors dao = new DAOLivors();
	
Livors c = new Livors();
c.setNomeLivro("O segredo");
c.setNomeAutor("Tha");
c.setNomeEditora("new");
	
	dao.salva(c);
	}

}
