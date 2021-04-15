class SuperClass {
	   private int x;
	   private int y;
	   public  SuperClass ( ) { x = 10;  y = 20; }
	   public  SuperClass (int x, int y) {  this.x = x;     this.y = y;  }
	   public  String toString ( )    { return "Numbers are: " + x  + " and " + y;   }
	   public  int  returnProduct ( ) { return (x*y); }
}
