package com.spring.shop.controller;

import com.spring.shop.model.Citation;
import com.spring.shop.model.enums.Theme;
import com.spring.shop.service.CitationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/library/vip_user")
public class VipPageController {

    @Autowired
    private CitationService citationService;

    @GetMapping()
    public String allCitation(Model model) {
        model.addAttribute("citations", citationService.findAll());
        return "vipPage";
    }

    @GetMapping("/add_citation")
    public String addCitation() {
        return "addCitation";
    }

    @PostMapping("/add_citation")
    public String addCitation(@ModelAttribute(name = "citation") Citation citation, Model model) {
        model.addAttribute("citation", citationService.save(citation));

        return "redirect:/library/vip_user";
    }

    @GetMapping("/update/{id}")
    public String editCitation(@PathVariable("id") long id, Model model) {
        model.addAttribute("citation", citationService.findById(id));
        return "editCitation";
    }

    @PostMapping("/update/{id}")
    public String editCitation(@RequestParam("bookName") String name,
                               @RequestParam Theme theme,
                               @RequestParam String text,
                               @RequestParam("citationId") Citation citation) {

        citationService.edit(name, theme, text, citation);
        return "redirect:/library/vip_user";
    }

    @GetMapping("/delete/{id}")
    public String delete(Citation citation) {
        citationService.delete(citation);
        return "redirect:/library/vip_user";
    }

    @GetMapping("/filter")
    public String filter() {
        return "citationFilter";
    }

    @PostMapping("/filter")
    public String filter(@RequestParam String filter, Model model) {
        model.addAttribute("filter", citationService.findByTheme(filter));
        return "citationFilter";
    }


}

