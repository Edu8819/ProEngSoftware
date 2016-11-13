package dao;

import java.util.List;

import model.Cliente;

public interface ClienteDAO {

	void salva(Cliente cliente);

	Cliente busca(int codigo);

	void deletar(Cliente cliente);

	void atualiza(Cliente cliente);

	List<Cliente> listarTodos();

}
