@isTest
private class SampleAccountTest {
   
    @isTest 
    private static void displayName(){
        
        SampleAccount sa = new SampleAccount();
        sa.displayName();
    }
   
    @isTest 
    private static void displayNamestatic(){
        SampleAccount.displayNamestatic();
    }
   
    @isTest 
    private static void displayAge(){ 
        SampleAccount sa = new SampleAccount();
        sa.displayAge();
       
    }
}