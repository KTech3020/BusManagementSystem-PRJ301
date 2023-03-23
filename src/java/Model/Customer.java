package Model;

public class Customer {
    private int Ticket_No;
    private String Name;
    private String Phone_number;
    private int Bus_No;
    private int Ticket_price;

    public Customer(){}
    
    public Customer(int Ticket_No, String Name, String Phone_number, int Bus_No, int Ticket_price) {
        this.Ticket_No = Ticket_No;
        this.Name = Name;
        this.Phone_number = Phone_number;
        this.Bus_No = Bus_No;
        this.Ticket_price = Ticket_price;
    }

    public int getTicket_No() {
        return Ticket_No;
    }

    public void setTicket_No(int Ticket_No) {
        this.Ticket_No = Ticket_No;
    }

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public String getPhone_number() {
        return Phone_number;
    }

    public void setPhone_number(String Phone_number) {
        this.Phone_number = Phone_number;
    }

    public int getBus_No() {
        return Bus_No;
    }

    public void setBus_No(int Bus_No) {
        this.Bus_No = Bus_No;
    }

    public int getTicket_price() {
        return Ticket_price;
    }

    public void setTicket_price(int Ticket_price) {
        this.Ticket_price = Ticket_price;
    }

    @Override
    public String toString() {
        return "Customer{" + "Ticket_No=" + Ticket_No + ", Name=" + Name + ", Phone_number=" + Phone_number + ", Bus_No=" + Bus_No + ", Ticket_price=" + Ticket_price + '}';
    }
}