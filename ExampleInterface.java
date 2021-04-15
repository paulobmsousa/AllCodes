public class ExampleInterface implements MyInterface{ 
	// implementing abstract method
    public void existingMethod(String str){           
        System.out.println("String is: "+str);  
    }  
    public static void main(String[] args) {  
    	ExampleInterface obj = new ExampleInterface();
    	
    	//calling the default method of interface
        obj.newMethod();     
        //calling the static method of interface
        MyInterface.anotherNewMethod();
        //calling the abstract method of interface
        obj.existingMethod("Java 8 is easy to learn"); 
    }  
}
