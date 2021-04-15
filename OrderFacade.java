public class OrderFacade {
    protected void includeProduct(Customer customer, Product product) {
        Cart cart = customer.getCart();
        cart.addProduct(product);
    }
    protected void removeProduct(Customer customer, Product product) {
        Cart cart = customer.getCart();
        cart.delProduct(product);
    }
    protected boolean finalizeShop(Customer customer) {
        Cart cart = customer.getCart();
        return customer.doPayment(cart.getTotalPrice());
    }
    protected void printStatus(Customer customer) {
        System.out.println(customer.getName() 
            + " - Credit: " + customer.getCredit());
    }
}
