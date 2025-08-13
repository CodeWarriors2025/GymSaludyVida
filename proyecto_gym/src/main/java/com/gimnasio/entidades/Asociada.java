package com.proyecto.entidades;

import jakarta.persistence.*;

@Entity
@Table(name = "asociadas", schema = "gimnasio")
public class Asociada {

    @Id
    @Column(name = "Identificacion")
    private int identificacion;

    @Column(name = "Nombre", length = 45)
    private String nombre;

    @Column(name = "Direccion", length = 45)
    private String direccion;

    @Column(name = "Email", length = 45)
    private String email;

    @Column(name = "Numero_de_contacto", length = 12)
    private String numeroDeContacto;

    @Column(name = "EPS", columnDefinition = "MEDIUMTEXT")
    private String eps;

    @Column(name = "Estatura")
    private float estatura;

    @Column(name = "Peso_Corporal")
    private float pesoCorporal;

    // Constructor vacío obligatorio
    public Asociada() {
    }

    // Constructor con parámetros
    public Asociada(int identificacion, String nombre, String direccion, String email, 
                    String numeroDeContacto, String eps, float estatura, float pesoCorporal) {
        this.identificacion = identificacion;
        this.nombre = nombre;
        this.direccion = direccion;
        this.email = email;
        this.numeroDeContacto = numeroDeContacto;
        this.eps = eps;
        this.estatura = estatura;
        this.pesoCorporal = pesoCorporal;
    }

    // Getters y Setters
    public int getIdentificacion() {
        return identificacion;
    }

    public void setIdentificacion(int identificacion) {
        this.identificacion = identificacion;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getNumeroDeContacto() {
        return numeroDeContacto;
    }

    public void setNumeroDeContacto(String numeroDeContacto) {
        this.numeroDeContacto = numeroDeContacto;
    }

    public String getEps() {
        return eps;
    }

    public void setEps(String eps) {
        this.eps = eps;
    }

    public float getEstatura() {
        return estatura;
    }

    public void setEstatura(float estatura) {
        this.estatura = estatura;
    }

    public float getPesoCorporal() {
        return pesoCorporal;
    }

    public void setPesoCorporal(float pesoCorporal) {
        this.pesoCorporal = pesoCorporal;
    }

    @Override
    public String toString() {
        return "Asociada{" +
                "identificacion=" + identificacion +
                ", nombre='" + nombre + '\'' +
                ", direccion='" + direccion + '\'' +
                ", email='" + email + '\'' +
                ", numeroDeContacto='" + numeroDeContacto + '\'' +
                ", eps='" + eps + '\'' +
                ", estatura=" + estatura +
                ", pesoCorporal=" + pesoCorporal +
                '}';
    }
}
