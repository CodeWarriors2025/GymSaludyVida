package models;

import javax.persistence.Entity;

@Entity
@Table(name="asociadas")
public class Asociada {
	@Id
	@Column(name= "Id")
	private int id;
	@Column(name= "nombre")
	private String nombre;
	@Column(name= "apellido")
	private String apellido;
	@Column(name= "direccion")
	private String direccion;
	
	
	public Asociada(String nombre, String apellido, String direccion) {
		this.nombre = nombre;
		this.apellido = apellido;
		this.direccion = direccion;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getApellido() {
		return apellido;
	}
	public void setApellido(String apellido) {
		this.apellido = apellido;
	}
	public String getDireccion() {
		return direccion;
	}
	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}
	@Override
	public String toString() {
		return "Asociada [id=" + id + ", nombre=" + nombre + ", apellido=" + apellido + ", direccion=" + direccion
				+ ", getId()=" + getId() + ", getNombre()=" + getNombre() + ", getApellido()=" + getApellido()
				+ ", getDireccion()=" + getDireccion() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode()
				+ ", toString()=" + super.toString() + "]";
	}
	
	
}
