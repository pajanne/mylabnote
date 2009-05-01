package org.mylabnote.exception;

public class LabNoteException extends Exception {

    public LabNoteException() {
        this("LabNoteException");
    }

    public LabNoteException (String message) {
        super(message);
    }

}
