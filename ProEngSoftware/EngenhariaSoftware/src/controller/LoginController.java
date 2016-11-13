package controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;

import annotation.Public;
import components.UserSession;
import model.Usuario;

@Controller
public class LoginController {

	@Inject
	private Result result;
	@Inject
	private UserSession userSession;

	@Public
	@Get("entrar")
	public void form() {

		// chama form.jsp
	}
	
	@Public
	@Get("entra")
	public void formUser() {

		// chama form1.jsp
	}

	@Public
	@Post("autentica")
	public void auth(Usuario usuario) {
		if (usuario.getNome().equalsIgnoreCase("admin") 
				&& usuario.getSenha().equalsIgnoreCase("admin")) {
			userSession.setUsuario(usuario);

			result.redirectTo(IndexController.class).index();

		} else {	
			result.redirectTo(this).form();
			result.include("msg", "Login ou senha estão incorretos ");
	
		}
	}

	@Get("sair")
	public void logout() {
		userSession.logout();
		result.redirectTo(this).form();
	}
}