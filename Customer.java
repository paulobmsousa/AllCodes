public class Customer {
    
    private String name;
    private float credit;
    private Cart cart;

    public Customer(String custName, float custCredit) {
        this.name = custName;
        this.credit = custCredit;
        this.cart = new Cart();
    }
    protected String getName() {
        return this.name;
    }
    protected Cart getCart() {
        return this.cart;
    }
    protected float getCredit() {
        return this.credit;
    }
    protected boolean doPayment(float value) {
        if (value>this.credit)
            return false;
        this.credit -= value;
        return true;
    }
}