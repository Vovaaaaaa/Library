package com.spring.shop.service;

import com.spring.shop.model.Citation;
import com.spring.shop.model.enums.Theme;
import com.spring.shop.repository.CitationRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CitationService {

    @Autowired
    private CitationRepository citationRepository;

    public Citation save(Citation citation) {
        return citationRepository.save(citation);
    }

    public Citation findById(long id) {
        return citationRepository.findById(id);
    }

    public List<Citation> findAll() {
        return citationRepository.findAll();
    }


    public void delete(Citation citation) {
        citationRepository.delete(citation);
    }

    public List<Citation> findByTheme(String theme) {
        List<Citation> citations;
        if (!theme.isEmpty() && theme != null) {
            citations = citationRepository.findByTheme(theme);
        } else {
            citations = citationRepository.findAll();
        }
        return citations;
    }

    public Citation edit(String name, Theme theme, String text, Citation citation) {  //edited: was STRING, now - THEME ;
        citation.setBookName(name);
        citation.setTheme(theme);
        citation.setText(text);

        return citationRepository.save(citation);
    }
}
