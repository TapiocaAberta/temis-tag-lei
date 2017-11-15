package com.sjcdigital.temis.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.sjcdigital.temis.model.Data;

@Repository
public interface DataRepository extends CrudRepository<Data, Long>{
	List<Data> findByTagLike(final String tag);
	List<Data> findByTagNotOrderByTag(final String tag);
}
