package br.com.livraria.catalogo.model.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import br.com.livraria.catalogo.model.Livro;

@Repository
public interface LivroRepository extends CrudRepository<Livro, Long> {

	List<Livro> findByTituloLike(String titulo);

}
