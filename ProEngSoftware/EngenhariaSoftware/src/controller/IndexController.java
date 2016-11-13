package controller;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;

@Controller
public class IndexController {

	@Get("/")
	public void index1(){
		
	}
	
	@Get("principal")
	public void index() {
		
	}
	
}