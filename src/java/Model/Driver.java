package Model;

public class Driver {
    private String id;
    private String name;
    private String phone;
    private String img;

    public Driver(String id, String name, String phone, String img) {
        this.id = id;
        this.name = name;
        this.phone = phone;
        this.img = img;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }
}
