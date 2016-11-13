package dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;

import model.Cliente;

public class DaoClientebd implements ClienteDAO {

	private List<Cliente> clientes = new ArrayList<>();
	Session session = HibernateUtil.getSessionfactory().openSession();

	@Override

	public void salva(Cliente cliente) {
		session.beginTransaction();
		session.save(cliente);
		session.getTransaction().commit();
		session.close();

	}

	@Override
	public Cliente busca(int codigo) {
		return (Cliente) session.get(Cliente.class, codigo);
	}

	@Override
	public void deletar(Cliente cliente) {

		session.beginTransaction();
		session.delete(cliente);
		session.getTransaction().commit();
		session.close();

	}

	@Override
	public void atualiza(Cliente cliente) {
		session.beginTransaction();
		session.update(cliente);
		session.getTransaction().commit();
		session.close();

	}

	@Override
	public List<Cliente> listarTodos() {
		Criteria c = session.createCriteria(Cliente.class);
		c.list();

		return c.list();

	}

}
