class SubClass extends SuperClass {
	   private int z = 25;
	   public  SubClass( )  { super();  z = 30; }
	   public int returnProduct() {
			SuperClass sc = new SuperClass();
			z=z+0;
			//System.out.println("z="+z+"\n");
			return sc.returnProduct();
		}
}
