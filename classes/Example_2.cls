public class Example_2 {
    Public static void createBulkrecords(){
        List<string> citylist1 = new List<string>();
        citylist1.add('hyd');
        citylist1.add('Ka');
        citylist1.add('ban');
        
        for(string c:citylist1){
            //string name = c; 
            system.debug('display'+c);
        }
    }
    Public static void createBulkrecords1(){
        list<Employee__c> emp= new list<Employee__c>();
        
        Employee__c empobj= new Employee__c();
        empobj.Name= 'sai';
        
        Employee__c empobj1= new Employee__c();
        empobj1.Name='Nithesh';
        
        emp.add(empobj);
        emp.add(empobj1);
        insert emp;
        system.debug('insert'+empobj);
        
      /*  List<Account>  acclist = new List<Account>();
        Account acc=new Account();
        acclist.add(acc);
        
        List<Integer>  intlist = new List<Integer>();
        intlist.add(10);
        
        List<string>   strlist = new List<string>();
        strlist.add('hyd'); 
        
        for(Account ac:acclist){
            
        }
        for(integer i:intlist){
            
        }
        for(string str:strlist){
            
        } */
        
    }
}