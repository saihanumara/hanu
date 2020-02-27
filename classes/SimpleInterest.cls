public class SimpleInterest 
{
    public static void sint()
    {
        Date myDate = Date.today();
        String myString = String.valueOf(myDate);
        System.debug(myString);
        System.debug('I am a string' + 'cheese');
        string x ='The !shorn! sheep !sprang!.';
        System.debug (x.endsWith('.'));
        System.debug (x.length());
        System.debug (x.substring(5,10));
        System.debug (x.replaceALL ('!(.*?)!', '$1'));
            
    }
   
}