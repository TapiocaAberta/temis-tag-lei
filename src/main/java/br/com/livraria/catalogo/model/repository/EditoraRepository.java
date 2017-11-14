package br.com.livraria.catalogo.model.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import br.com.livraria.catalogo.model.Editora;

@Repository
public interface EditoraRepository extends CrudRepository<Editora, Long> {

}
