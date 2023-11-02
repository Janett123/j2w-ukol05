package cz.czechitas.java2webapps.ukol5.controller;

import java.time.LocalDate;
import java.time.Period;
import java.util.Objects;

public class RegistraceForm {

    private String jmeno;

    private String prijmeni;
    private LocalDate datumNarozeni;
    private String pohlavi;

    private String turnus;

    private String email;

    private String telefon;


    public String getJmeno() {
        return jmeno;
    }

    public void setJmeno(String jmeno) {
        this.jmeno = jmeno;
    }

    public String getPrijmeni() {
        return prijmeni;
    }

    public void setPrijmeni(String prijmeni) {
        this.prijmeni = prijmeni;
    }

    public LocalDate getDatumNarozeni() {
        return datumNarozeni;
    }

    public void setDatumNarozeni(LocalDate datumNarozeni) {
        this.datumNarozeni = datumNarozeni;
    }

    public int getVek() {
        Objects.requireNonNull(datumNarozeni);

        Period period = datumNarozeni.until(LocalDate.now());
        return period.getYears();
    }

    public String getPohlavi() {
        return pohlavi;
    }

    public void setPohlavi(String pohlavi) {
        this.pohlavi = pohlavi;
    }

    public String getTurnus() {
        return turnus;
    }

    public void setTurnus(String turnus) {
        this.turnus = turnus;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTelefon() {
        return telefon;
    }

    public void setTelefon(String telefon) {
        this.telefon = telefon;
    }
}
