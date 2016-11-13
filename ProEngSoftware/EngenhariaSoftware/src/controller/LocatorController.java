package controller;


import java.util.List;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import dao.DAOLivors;
import dao.DAOLocator;
import dao.LivorsDao;
import model.Livors;
import model.Locator;

@Controller
@Path("locator")
public class LocatorController {
	
	@Inject
	private Result result;
	@Inject
	private LivorsDao livroDAO;

	@Get("novoLoc")
	public void registerLoc() {

	}

	@Get("editarLoc")
	public void editLoc(int codigo) {

		DAOLivors dao = new DAOLivors();
		

	}

	@Post("atualiza")
	public void update(Livors livors) {
		DAOLivors dao = new DAOLivors();
		dao.atualiza(livors);
		result.redirectTo(this).listLoc();

	}

	@Post("salvar")
	public void salvar(Livors livors) {

		DAOLivors dao = new DAOLivors();
		dao.salva(livors);

		result.include("msg", "Livro Salvo ! ");
		result.redirectTo(this).registerLoc();

	}

	@Get("listarLoc")
	public void listLoc() {

		List<Livors> livors = livroDAO.listarTodos();
		result.include("lista", livors);
		
	}

	@Get("deletarLoc")
	public void removeLoc(int codigo) {

		DAOLivors dao = new DAOLivors();
		
		//result.redirectTo(this).list();
	}

}