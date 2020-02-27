public class Practice {
    // class level variables 
    public static string name='sai';
    public static integer stdid=123;
    
    public void simpleMethod(){
       // method level variable
       string city='newyork';
       demoMethod();
       demoMethod2();
       system.debug('your city is'+city);
       system.debug('your name is'+name);
       system.debug('method calling..');
               
    }
    public static void demoMethod(){
        Practice p=new Practice();
        p.simpleMethod();
        p.demoMethod2();
        //system.debug('your city is'+city);
        system.debug('your name is'+name);
       system.debug('demo method calling..'); 
    }
    public void demoMethod2(){
      system.debug('this demomethod2');  
    }
}