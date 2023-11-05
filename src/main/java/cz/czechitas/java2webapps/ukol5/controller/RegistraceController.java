package cz.czechitas.java2webapps.ukol5.controller;

import jakarta.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.Random;

/**
 * Kontroler obsluhující registraci účastníků dětského tábora.
 */
@Controller
@RequestMapping("")
public class RegistraceController {
    private final Random random = new Random();

    @GetMapping("")
    public ModelAndView formular() {
        ModelAndView modelAndView = new ModelAndView("/formular");
        modelAndView.addObject("form", new RegistraceForm());
        return modelAndView;
    }

    @PostMapping("")
    public Object form(@Valid @ModelAttribute("form") RegistraceForm form, BindingResult bindingResult) {

        if (bindingResult.hasErrors()) {
            return "/formular";
        }
        if (form.getVek() < 9) {
            return "/vek";
        }

        if (form.getVek() > 15) {
            return "/vek";
        }

        return new ModelAndView("/rekapitulace");
    }
}
