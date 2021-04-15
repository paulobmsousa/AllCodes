public class Product {
    
    private String name;
    private float unitPrice;

    public Product(String prodName, float prodUnitPrice) {
        this.name = prodName;
        this.unitPrice = prodUnitPrice;
    }
    protected String getName() {
        return this.name;
    }
    protected float getPrice() {
        return this.unitPrice;
    }
}