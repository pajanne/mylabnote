/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.mylabnote.dao;

import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import org.mylabnote.exception.LabNoteException;
import org.mylabnote.model.Entry;
import org.mylabnote.model.User;

/**
 *
 * @author pajanne
 */
public class LabNoteDelegate {

    private static LabNoteDelegate instance = new LabNoteDelegate();
    private LabNoteModel model;

    public static LabNoteDelegate getInstance() {
        return instance;
    }

    private LabNoteDelegate() {
        try {
            InitialContext context = new InitialContext();
            model = (LabNoteModel) context.lookup("java:comp/env/MyLabNoteLookup");
        } catch (NamingException ex) {
            Logger.getLogger(LabNoteDelegate.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public User[] getAllUsers() throws LabNoteException {
        return model.getAllUsers();
    }

    public Entry[] getAllEntries() throws LabNoteException {
        return model.getAllEntries();
    }

    public User getUser(String userId) throws LabNoteException {
        return model.getUser(userId);
    }

    public User addUser(String userId, String userName, String userEmail) throws LabNoteException {
        User user = new User(userId, userName, userEmail);
        model.addUser(user);
        return user;
    }

    public User updateUser(String userId, String userName, String userEmail, int userVersion) throws LabNoteException {
        User user = new User(userId, userName, userEmail, userVersion);
        model.updateUser(user);
        return user;
    }

    public void deleteUser(String userId) throws LabNoteException  {
        model.deleteUser(getUser(userId));
    }
}
