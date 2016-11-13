package model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;


@Entity
public class Livors {
		
	@Id
	@GeneratedValue
	private Integer id;
	private String nomeAutor;
	private String nomeLivro;
	private String nomeEditora;
	
	
	
	public Livors() {
		
	}
	public Livors(Integer id, String nomeAutor, String nomeLivro, String nomeEditora) {
		super();
		this.id = id;
		this.nomeAutor = nomeAutor;
		this.nomeLivro = nomeLivro;
		this.nomeEditora = nomeEditora;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getNomeAutor() {
		return nomeAutor;
	}
	public void setNomeAutor(String nomeAutor) {
		this.nomeAutor = nomeAutor;
	}
	public String getNomeLivro() {
		return nomeLivro;
	}
	public void setNomeLivro(String nomeLivro) {
		this.nomeLivro = nomeLivro;
	}
	public String getNomeEditora() {
		return nomeEditora;
	}
	public void setNomeEditora(String nomeEditora) {
		this.nomeEditora = nomeEditora;
	}
	
}