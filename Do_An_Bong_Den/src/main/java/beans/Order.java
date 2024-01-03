package beans;

public class Order {

    private int id;
    private int idUser;
    private String fullName;
    private String email;
    private int phoneNumber;
    private String address;
    private String note;
    private String orderDate;
    private String status;

    public Order(int id, int idUser, String fullName, String email, int phoneNumber, String address, String note, String orderDate, String status) {
        this.id = id;
        this.idUser = idUser;
        this.fullName = fullName;
        this.email = email;
        this.phoneNumber = phoneNumber;
        this.address = address;
        this.note = note;
        this.orderDate = orderDate;
        this.status = status;
    }

    public int getId() {
        return id;
    }

    public int getIdUser() {
        return idUser;
    }

    public String getFullName() {
        return fullName;
    }

    public String getEmail() {
        return email;
    }

    public int getPhoneNumber() {
        return phoneNumber;
    }

    public String getAddress() {
        return address;
    }

    public String getNote() {
        return note;
    }

    public String getOrderDate() {
        return orderDate;
    }

    public String getStatus() {
        return status;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setIdUser(int idUser) {
        this.idUser = idUser;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setPhoneNumber(int phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public void setOrderDate(String orderDate) {
        this.orderDate = orderDate;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Order{" +
                "id=" + id +
                ", idUser=" + idUser +
                ", fullName='" + fullName + '\'' +
                ", email='" + email + '\'' +
                ", phoneNumber=" + phoneNumber +
                ", address='" + address + '\'' +
                ", note='" + note + '\'' +
                ", orderDate='" + orderDate + '\'' +
                ", status='" + status + '\'' +
                '}';
    }
}
