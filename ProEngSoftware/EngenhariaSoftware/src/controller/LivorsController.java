package controller;

import java.util.List;

import javax.inject.Inject;

import annotation.Public;
import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import dao.ClienteDAO;
import dao.DAOLivors;
import dao.DaoClientebd;
import dao.LivorsDao;
import model.Cliente;
import model.Livors;

@Controller
@Path("livors")
public class LivorsController {
	
	@Inject
	private Result result;
	@Inject
	private LivorsDao livroDAO;

	@Get("novo")
	public void register() {

	}

	@Get("editar")
	public void edit(int codigo) {

		DAOLivors dao = new DAOLivors();
		

	}

	@Post("atualiza")
	public void update(Livors livors) {
		DAOLivors dao = new DAOLivors();
		dao.atualiza(livors);
		result.redirectTo(this).list();

	}

	@Post("salvar")
	public void salvar(Livors livors) {

		DAOLivors dao = new DAOLivors();
		dao.salva(livors);

		result.include("msg", "Livro Salvo ! ");
		result.redirectTo(this).register();

	}

	@Get("listar")
	public void list() {

		List<Livors> livors = livroDAO.listarTodos();
		result.include("lista", livors);
		
	}

	@Get("deletar")

	public void remove(int codigo) {

		DAOLivors dao = new DAOLivors();
		
		//result.redirectTo(this).list();
	}

}
