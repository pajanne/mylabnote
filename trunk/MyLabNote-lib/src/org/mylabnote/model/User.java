package org.mylabnote.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Version;

@Entity @Table(name="USERS")
public class User implements Serializable {

    @Id @Column(name="ID")
    private String id;

    @Column(name="NAME")
    private String name;

    @Column(name="EMAIL")
    private String email;

    @Version @Column(name="VERSION")
    private int version = 1;

    // Constructors
    public User(String id, String name, String email, int version) {
        this (id, name, email);
        this.version = version;
    }

    public User(String id, String name, String email) {
        this.id = id;
        this.name = name;
        this.email = email;
    }

    public User(){
        this(null, null, null);
    }

    // Access methods
    public String getId() {
        return id;
    }

    
    public String getName() {
        return name;
    }

    public String getEmail() {
        return email;
    }

    public int getVersion() {
        return version;
    }

    // Mutator methods - note you cannot change id
    public void setName(String name) {
        this.name = name;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    // Other methods
    @Override
    public String toString() {
        return "User: [" + id + ", " + name + ", " + email + "]" ;
    }
}
