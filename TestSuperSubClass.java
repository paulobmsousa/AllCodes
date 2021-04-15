public class TestSuperSubClass {
	public static void main(String[] args) {  
		SuperClass obj1 = new SuperClass(4, 5);
		SuperClass obj2 = new SubClass();
		System.out.println (obj1);			  
		System.out.println (obj2);	
		System.out.println ("Product is: " + obj2.returnProduct());
	}  
}
