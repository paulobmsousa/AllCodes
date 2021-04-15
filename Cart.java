import java.util.ArrayList;
import java.util.List;

public class Cart {
    
    private List<Product> productList;
    private float totalPrice;

    public Cart() {
        this.productList = new ArrayList<Product>();
        totalPrice = 0.0f;
    }
    protected void addProduct(Product item) {
        this.productList.add(item);
        this.totalPrice += item.getPrice();
    }
    protected void delProduct(Product item) {
        if (this.productList.remove(item))
            this.totalPrice -= item.getPrice();
    }
    protected float getTotalPrice() {
        return this.totalPrice;
    }
}