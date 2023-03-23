package Admin;

public class Admin {
    private String id;
    private String displayName;
    private String username;
    private String password;
    

    public Admin() {
    }

    public Admin(String id, String displayName, String username, String password) {
        this.id = id;
        this.displayName = displayName;
        this.username = username;
        this.password = password;
        
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    
    
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getDisplayName() {
        return displayName;
    }

    public void setDisplayName(String displayName) {
        this.displayName = displayName;
    }
    
    @Override public String toString(){
        return "Admin user: " + getDisplayName() + " - ID " + getId() + ", Username: " + getUsername() + ", Pass: " + getPassword();
    }
}
