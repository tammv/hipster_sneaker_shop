package Model;

import java.util.ArrayList;
import java.util.List;

public class Cart {
    private int cartId;
    private List<Product_Cart> list_product = new ArrayList<>();

    public Cart(int cartId, List<Product_Cart> list_product) {
        this.cartId = cartId;
        this.list_product = list_product;
    }

    public Cart() {
    }

    public int getCartId() {
        return cartId;
    }

    public void setCartId(int cartId) {
        this.cartId = cartId;
    }

    public List<Product_Cart> getList_product() {
        return list_product;
    }

    public void setList_product(List<Product_Cart> list_product) {
        this.list_product = list_product;
    }

    public void addP(Product_Cart p){
        boolean check = true;
        for (Product_Cart pro : this.list_product) {
            if(pro.getProduct().getProduct_id() == (p.getProduct().getProduct_id()) & (pro.getSize() == p.getSize())){
                pro.setQuantity(pro.getQuantity()+p.getQuantity());
                check = false;
                break;
            }
        }
        if(check){
            this.list_product.add(p);
        }
    }

    public void deleteP(int product_id, int size){
        for (Product_Cart product_Cart : this.list_product) {
            if(product_Cart.getProduct().getProduct_id() == product_id & (product_Cart.getSize()== size)){
                this.list_product.remove(product_Cart);
                break;
            }
        }
    }

    
    



    


}
