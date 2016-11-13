package dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;

import model.Cliente;
import model.Livors;

public class DAOLivors implements LivorsDao {
	private List<Livors> livorss = new ArrayList<>();
	Session session = HibernateUtil.getSessionfactory().openSession();

	@Override
	public void salva(Livors livors) {
		session.beginTransaction();
		session.save(livors);
		session.getTransaction().commit();
		session.close();

	}

	@Override
	public Cliente busca(int codigo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deletar(Livors livors) {
		// TODO Auto-generated method stub

	}

	@Override
	public void atualiza(Livors livors) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<Livors> listarTodos() {
		Criteria c = session.createCriteria(Livors.class);
		c.list();

		return c.list();
	}

}
