import java.util.ArrayList;
import java.util.List;
public class OnLineShopNew {
    public static void main(String[] args) {
        List<ProductNew> productList = new ArrayList<ProductNew>();
        productList.add(new ProductNew("Book", 20.0f, 10));
        productList.add(new ProductNew("Notebook", 5.0f, 5));
        productList.add(new ProductNew("Gift", 50.5f, 1));
        List<CustomerNew> customerList = new ArrayList<CustomerNew>();
        customerList.add(new CustomerNew("John", 1000.0f));
        customerList.add(new CustomerNew("Mary", 2000.0f));
        OrderFacadeNew order = new OrderFacadeNew();
        order.includeProduct(customerList.get(0), productList.get(0), 2);
        order.removeProduct(customerList.get(0), productList.get(0), 1);
        order.includeProduct(customerList.get(0), productList.get(2), 5);
        order.finalizeShop(customerList.get(0));
        order.printStatus(customerList.get(0));
        order.includeProduct(customerList.get(1), productList.get(1), 3);
        order.cleanCart(customerList.get(1));
        order.finalizeShop(customerList.get(1));
        order.printStatus(customerList.get(1));
    }
}
