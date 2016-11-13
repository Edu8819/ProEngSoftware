package dao;

import java.util.List;

import javax.persistence.EntityManager;

import org.hibernate.Criteria;
import org.hibernate.Session;

import fabrica.FabricaDeConexao;
import model.Locator;

public class DAOLocator {

	public void save(Locator locator){
		EntityManager l = FabricaDeConexao.getConexao();
		l.getTransaction().begin();
		try {
			l.persist(locator);
			l.getTransaction().commit();
		} catch (Exception e) {
			l.getTransaction().rollback();
			e.printStackTrace();
		}
		l.close();
	}
	public List getAll(){
		EntityManager m = FabricaDeConexao.getConexao();
		Session sessao = (Session) m.getDelegate();
		Criteria c = sessao.createCriteria(Locator.class);
		return c.list();
	}
	public Locator getById(int id) {
		EntityManager manager = FabricaDeConexao.getConexao();
		Locator locator = manager.find(Locator.class, id);
		manager.close();
		return locator;
	}

	public void removeById(int id){
		EntityManager manager = FabricaDeConexao.getConexao();
		manager.getTransaction().begin();
		try {
			manager.remove(manager.find(Locator.class, id));
			manager.getTransaction().commit();
			System.out.println("Locador deletado!!");
		} catch (Exception e) {
			manager.getTransaction().rollback();
			e.printStackTrace();
		}
		manager.close();
	}
	
}