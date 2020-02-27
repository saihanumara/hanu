public class Example_1 {
    Public static void createAccount(string name, string industry, string phone, integer Price){
        /*account ac= new account();
        ac.name= name;
        ac.industry= industry;
        ac.Phone= Phone;
        insert ac;
        System.debug(ac.id+ ' -- '+ac.CreatedDate+ '--' +ac.Name);*/
        
        Book__c bk= new Book__c();
        bk.name=name;
        bk.Price__c= Price;
        insert bk;
    } 
    
    Public static void createBulkrecords(){
        list<account> acc= new list<account>();
        account accobj= new account();
        accobj.name= 'sai';
        accobj.phone='1234567890';
        account acobj= new account();
        acobj.name='Nithesh';
        acc.add(accobj);     
        acc.add(acobj);
        insert acc;
        System.debug(acc.size());
        
        for(Account a:acc){
            if(a.Name!=null){
               system.debug('Name found'); 
            }
        }
        List<string> citylist = new List<string>();
        citylist.add('hyd');
        citylist.add('Ka');
        citylist.add('ban');
        
        for(string c:citylist){
            system.debug('display'+c);
        }
    }
    
    
}