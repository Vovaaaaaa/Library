package com.spring.shop.repository;

import com.spring.shop.model.Citation;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CitationRepository extends JpaRepository<Citation, Long> {

    Citation save(Citation citation);

    List<Citation> findAll();

    void delete(Citation citation);

    List<Citation> findByTheme(String theme);

    Citation findById(long id);

}
