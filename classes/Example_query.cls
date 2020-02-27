public class Example_query {
     //querying alla the case records with priority= low and displaying all the case status.
    Public static void query(string priority){
        List<case> cas=[select casenumber, priority, status from case where priority=:priority];
        
        for(case ca:cas){
            if(ca.status=='new'){
                system.debug('case number'+ca.CaseNumber);
            }
            else{
                system.debug('case status:'+ca.status);
            }
            
        }
    }
    
    
    
    
}