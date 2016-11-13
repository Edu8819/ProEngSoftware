package fabrica;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class FabricaDeConexao {

	private static EntityManagerFactory factory;

	public static EntityManager getConexao() {

		if (factory == null) {
			factory = Persistence.
					createEntityManagerFactory("biblioteca");
		}
		
		return factory.createEntityManager();
	
	}
	
}
