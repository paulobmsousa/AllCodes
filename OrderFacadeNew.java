public class OrderFacadeNew {
    protected void includeProduct(CustomerNew customer, ProductNew product, 
            int amount) {
        if (customer.hasACart()==false)
            customer.createCart();
        CartNew cart = customer.getCart();
        cart.addProducts(product, amount);
    }
    protected void removeProduct(CustomerNew customer, ProductNew product, 
            int amount) {
        if (customer.hasACart()==true) {
            CartNew cart = customer.getCart();
            cart.delProducts(product, amount);
        }
    }
    protected void cleanCart(CustomerNew customer) {
        if (customer.hasACart()==true) {
            CartNew cart = customer.getCart();
            cart.removeAllProducts();
        }
    }
    protected boolean finalizeShop(CustomerNew customer) {
        if (customer.hasACart()==true) {
            CartNew cart = customer.getCart();
            return customer.doPayment(cart.getTotalPrice());
        }
        return false;
    }
    protected void printStatus(CustomerNew customer) {
        System.out.println(customer.getName() 
            + " - Credit: " + customer.getCredit());
    }
}
