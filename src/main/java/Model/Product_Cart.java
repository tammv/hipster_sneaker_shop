package Model;

public class Product_Cart {
    private Content product;
    private int size;
    private int quantity;

    public Product_Cart(Content product, int size, int quantity) {
        this.product = product;
        this.size = size;
        this.quantity = quantity;
    }

    public Content getProduct() {
        return product;
    }

    public void setProduct(Content product) {
        this.product = product;
    }

    public int getSize() {
        return size;
    }

    public void setSize(int size) {
        this.size = size;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    

    
}
