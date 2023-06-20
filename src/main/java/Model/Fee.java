package Model;

public class Fee {
    private int city_id;
    private String city;
    private float feeShip;
    public Fee(int city_id, String city, float feeShip) {
        this.city_id = city_id;
        this.city = city;
        this.feeShip = feeShip;
    }
    public int getCity_id() {
        return city_id;
    }
    public void setCity_id(int city_id) {
        this.city_id = city_id;
    }
    public String getCity() {
        return city;
    }
    public void setCity(String city) {
        this.city = city;
    }
    public float getFeeShip() {
        return feeShip;
    }
    public void setFeeShip(float feeShip) {
        this.feeShip = feeShip;
    }
    
}
