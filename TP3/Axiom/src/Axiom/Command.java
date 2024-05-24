package Axiom;

public abstract class Command {
    public abstract void execute( Drone drone );
    public abstract boolean canHandle( char command );
}

