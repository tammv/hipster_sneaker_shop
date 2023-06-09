package Model;

import java.sql.Date;

public class Product {
    private int product_id;
    private String product_name;
    private String brand;
    private String prouduct_description;
    private float profit_price;
    private String img;
    private int quantity;
    private Date created_at;
    private Date update_at;

    public Product(int product_id, String product_name,String brand ,String prouduct_description, float profit_price, String img,
            int quantity, Date created_at, Date update_at) {
        this.product_id = product_id;
        this.product_name = product_name;
        this.brand = brand;
        this.prouduct_description = prouduct_description;
        this.profit_price = profit_price;
        this.img = img;
        this.quantity = quantity;
        this.created_at = created_at;
        this.update_at = update_at;
    }

    public String getBrand() {
        return brand;
    }


    public void setBrand(String brand) {
        this.brand = brand;
    }
    public int getProduct_id() {
        return product_id;
    }


    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }


    public String getProduct_name() {
        return product_name;
    }


    public void setProduct_name(String product_name) {
        this.product_name = product_name;
    }


    public String getProuduct_description() {
        return prouduct_description;
    }


    public void setProuduct_description(String prouduct_description) {
        this.prouduct_description = prouduct_description;
    }


    public float getProfit_price() {
        return profit_price;
    }


    public void setProfit_price(float profit_price) {
        this.profit_price = profit_price;
    }


    public String getImg() {
        return img;
    }


    public void setImg(String img) {
        this.img = img;
    }


    public int getQuantity() {
        return quantity;
    }


    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }


    public Date getCreated_at() {
        return created_at;
    }


    public void setCreated_at(Date created_at) {
        this.created_at = created_at;
    }


    public Date getUpdate_at() {
        return update_at;
    }


    public void setUpdate_at(Date update_at) {
        this.update_at = update_at;
    }


    

    

}
