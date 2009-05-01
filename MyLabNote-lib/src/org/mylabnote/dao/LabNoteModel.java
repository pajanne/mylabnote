package org.mylabnote.dao;

import org.mylabnote.exception.LabNoteException;
import org.mylabnote.model.Entry;
import org.mylabnote.model.User;

public interface LabNoteModel {

    // Entry
    public void addEntry(Entry entry) throws LabNoteException;
    public void deleteEntry(Entry entry) throws LabNoteException;
    public void updateEntry(Entry entry) throws LabNoteException;
    public Entry getEntry(String id) throws LabNoteException;
    public Entry[] getAllEntries() throws LabNoteException;

    // User
    public void addUser(User user) throws LabNoteException;
    public void deleteUser(User user) throws LabNoteException;
    public void updateUser(User user) throws LabNoteException;
    public User getUser(String id) throws LabNoteException;
    public User[] getAllUsers() throws LabNoteException;
}
