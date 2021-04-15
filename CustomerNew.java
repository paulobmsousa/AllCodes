public class CustomerNew {
    private String name;
    private float credit;
    private CartNew cart;

    public CustomerNew(String custName, float custCredit) {
        this.name = custName;
        this.credit = custCredit;
    }
    protected boolean hasACart() {
        if (this.cart==null)
            return false;
        return true;
    }
    protected void createCart() {
        this.cart = new CartNew();
    }
    protected void releaseCart() {
        if (cart!=null)
            cart.removeAllProducts();
    }
    protected String getName() {
        return this.name;
    }
    protected CartNew getCart() {
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
