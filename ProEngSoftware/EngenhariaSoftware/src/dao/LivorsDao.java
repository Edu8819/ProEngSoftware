package dao;

import java.util.List;

import model.Cliente;
import model.Livors;

public interface LivorsDao {

	void salva(Livors livors);

	Cliente busca(int codigo);

	void deletar(Livors livors);

	void atualiza(Livors livors);

	List<Livors> listarTodos();

}
