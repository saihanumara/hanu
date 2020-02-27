public class collections {
    public static void collectionexample(){
        
        list<string> obj= new list<string>();
       obj.add('sai');
        obj.add('sai1');
        obj.add('sai2');
        obj.add('sai3');
        obj.add('sai4');
        system.debug(obj.size());
       string val = obj.get(2);
        if(obj.contains('sai1')){
            system.debug('value found');
            
        }
        else{
            system.debug('value not found');
        }  
    }
    
    
    Public integer collectionobjects(){
       list<account> lacc= new list<account>();
        
        account acc= new account();
        acc.name='type account';
        lacc.add(acc);
        account ac= new account();
        ac.name='ac name';
        lacc.add(ac);
        account aac= new account();
        aac.name='aac name';
        lacc.add(aac);
        system.debug(lacc.size());
        insert lacc;
        return lacc.size();
    }
    
    Public void test(){
       Example_1.createAccount('computers',null,null,100);
   // Example_1.createBulkrecords();
    }
    
    
}