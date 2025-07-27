/**
 * 
 */
/**
 * 
 */
module EjemploHibernate {package com.ejemplo;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class Main {
    public static void main(String[] args) {
        // Configurar Hibernate y cargar el archivo hibernate.cfg.xml
        SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();

        // Abrir una sesión de Hibernate
        Session session = sessionFactory.openSession();

        // Prueba la conexión
        System.out.println("Conexión exitosa a la base de datos");

        // Cierra la sesión y la SessionFactory
        session.close();
        sessionFactory.close();
    }
}