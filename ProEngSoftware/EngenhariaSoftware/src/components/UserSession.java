package components;

import java.io.Serializable;

import javax.enterprise.context.SessionScoped;

import model.*;

@SessionScoped
public class UserSession implements Serializable {

	private Usuario usuario;

	public Usuario getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}

	public boolean isLogged() {
		return usuario != null;

	}

	public void logout() {
		usuario = null;
	}

}
