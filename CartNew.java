import java.util.ArrayList;
import java.util.List;

public class CartNew {
    
    private List<ProductNew> productList;
    private float totalPrice;

    public CartNew() {
        this.productList = new ArrayList<ProductNew>();
        totalPrice = 0.0f;
    }
    protected void addProducts(ProductNew item, int amount) {
        int totalAmount = item.getAmount();
        int cont=0;
        while (totalAmount>0 && cont<amount) {
            this.productList.add(item);
            this.totalPrice += item.getPrice();
            item.decreaseAmount(1);
            cont++;
        }
    }
    protected void delProducts(ProductNew item, int amount) {
        int count = 0;
        boolean isComplete = false;
        while (!isComplete && count<amount) {
            if (this.productList.remove(item)) {
                this.totalPrice -= item.getPrice();
                count++;
                item.increaseAmount(1);
            } else
                isComplete = true;
        }
    }
    protected void removeAllProducts() {
        productList.clear();
        this.totalPrice = 0.0f;
    }
    protected float getTotalPrice() {
        return this.totalPrice;
    }
}