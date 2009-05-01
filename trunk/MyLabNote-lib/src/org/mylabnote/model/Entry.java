package org.mylabnote.model;

import java.io.Serializable;
import java.util.Calendar;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.Version;

@Entity @Table(name="ENTRIES")
public class Entry implements Serializable {

    @Id @Column(name="ID")
    private String id;

    @Column(name="NAME")
    private String name;

    @Column(name="DETAILS")
    private String details;

    @Temporal(javax.persistence.TemporalType.DATE) @Column(name="CREATION_DATE")
    private Calendar creationDate;

    @Version @Column(name="VERSION")
    private int version = 1;


    // Constructors
    public Entry(String id, String name, String details) {
        this.id = id;
        this.name = name;
        this.details = details;
        this.creationDate = Calendar.getInstance();
    }

    public Entry() {
        this(null, null, null);
    }

    // Access methods
    public String getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getDetails() {
        return details;
    }

    public Calendar getCreationDate() {
        return creationDate;
    }

    public int getVersion() {
        return version;
    }

    // Mutator methods - note you cannot change id neither creationDate.
    public void setName(String name) {
        this.name = name;
    }
    
    public void setDetails(String details) {
        this.details = details;
    }

    // Other methods
    @Override
    public String toString() {
        return "Entry: [" + id + ", " + creationDate + ", " + name + ", " + details + "]" ;
    }

}
