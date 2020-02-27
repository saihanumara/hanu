@RestResource(urlMapping='/createSimpleCase/*')
global class SimpleRestHttpPostCallout {
@HttpPost
    global static String doPostSimpleCase(String origin, String status, String subject, String description){
        try{
                Case cas = new Case();
                cas.origin = origin;
                cas.subject = subject;
                cas.status = status;
                cas.description = description; 
                insert cas;
                Case casQuery = [Select id, casenumber from case where id =:cas.id];
                return 'Successfully case created - Case Number : -' + casQuery.casenumber;
        }catch(Exception e)
        {
        return  'Unable to create the case, please try again!';
        }      
    }
    
    @HttpGet
    global static Account doGetAccount(){
    
    RestRequest req = RestContext.request;
    RestResponse res = RestContext.response;
    String accountID = req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
    Account accResult = [Select id, name, phone, website, accountnumber from account where accountnumber =: accountID];
    return accResult;
    
}
    
    @HttpDelete
    global static String doDeleteAccount(){
    RestRequest req = RestContext.request;
    RestResponse res = RestContext.response;
    String accountID = req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
    Account accResult = [Select id,  accountnumber from account where accountnumber =: accountID];
    delete accResult;
    return 'Successfully deleted the record';
    }
    
}





/* Sample Json Structure to pass the values
 * 
 * 
 * 
 * HTTP POST Method
 Endpoint : https://ap4.salesforce.com/services/apexrest/createSimpleCase
{
  "origin": "phone",
  "status": "Open",
  "subject": "Modified new CN",
  "description": "CD355118 Updated Batch 15"

}

HTTP Get

 Endpoint : https://ap4.salesforce.com/services/apexrest/createSimpleCase/CD355118

Response:
{
   "attributes":    {
      "type": "Account",
      "url": "/services/data/v43.0/sobjects/Account/0016F00002QL5sBQAT"
   },
   "Id": "0016F00002QL5sBQAT",
   "Name": "United Oil & Gas Corp. Newvalue Newvalue Newvalue",
   "Phone": "(212) 842-5500",
   "Website": "http://www.uos.com",
   "AccountNumber": "CD355118"
}



*/