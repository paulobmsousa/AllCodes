public class ProductNew {
    
    private String name;
    private float unitPrice;
    private int amount;

    public ProductNew(String prodName, float prodUnitPrice, int prodAmount) {
        this.name = prodName;
        this.unitPrice = prodUnitPrice;
        this.amount = prodAmount;
    }
    protected String getName() {
        return this.name;
    }
    protected float getPrice() {
        return this.unitPrice;
    }
    protected int getAmount() {
        return this.amount;
    }
    protected void decreaseAmount(int value) {
        this.amount -= value;
    }
    protected void increaseAmount(int value) {
        this.amount += value;
    }
}