package controller;

import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;

import dao.HibernateUtil;
import dao.ClienteDAO;
import dao.DaoClientebd;
import model.Cliente;

@Controller

@Path("cliente")
public class ClienteController {

	@Inject
	private Result result;
	@Inject
	private ClienteDAO clienteDAO;

	@Get("novog")
	public void form() {

	}

	@Get("editar/{codigo}")
	public void edit(int codigo) {

		DaoClientebd dao = new DaoClientebd();
		Cliente clienteEdicao = dao.busca(codigo);
		result.include("cliente", clienteEdicao);

	}

	@Post("atualiza")
	public void update(Cliente cliente) {
		DaoClientebd dao = new DaoClientebd();
		dao.atualiza(cliente);
		result.redirectTo(this).lista();

	}

	@Post("salvar")
	public void salvar(Cliente cliente) {

		DaoClientebd dao = new DaoClientebd();
		dao.salva(cliente);

		result.include("msg", "Cliente Salvo ! ");
		result.redirectTo(this).lista();

	}

	@Get("lista")
	public void lista() {

		List<Cliente> clientes = clienteDAO.listarTodos();
		result.include("lista", clientes);

	}

	@Get("deletar/{codigo}")

	public void deletar(int codigo) {

		DaoClientebd dao = new DaoClientebd();
		Cliente c = new Cliente();
		c.setCodigo(codigo);
		dao.deletar(c);
		result.redirectTo(this).lista();
	}

}
