package controller;

import java.util.List;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import dao.DAOLivors;
import dao.LivorsDao;
import model.Livors;

@Controller
@Path("reservations")
public class ReservationsController {
	@Inject
	private Result result;
	@Inject
	private LivorsDao livroDAO;

	@Get("novoRes")
	public void registerRes() {

	}

	@Get("editarRes")
	public void editRes(int codigo) {

		DAOLivors dao = new DAOLivors();
		

	}

	@Post("atualiza")
	public void update(Livors livors) {
		DAOLivors dao = new DAOLivors();
		dao.atualiza(livors);
		result.redirectTo(this).listRes();

	}

	@Post("salvar")
	public void salvar(Livors livors) {

		DAOLivors dao = new DAOLivors();
		dao.salva(livors);

		result.include("msg", "Livro Salvo ! ");
		result.redirectTo(this).registerRes();

	}

	@Get("listarRes")
	public void listRes() {

		List<Livors> livors = livroDAO.listarTodos();
		result.include("lista", livors);
		
	}

	@Get("deletarRes")
	public void removeRes(int codigo) {

		DAOLivors dao = new DAOLivors();
		
		//result.redirectTo(this).list();
	}

}
