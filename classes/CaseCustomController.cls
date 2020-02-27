public Class CaseCustomController{
public Case cas{get;set;}
public Boolean successScreen{get;set;}
public String successMessage{get;set;}
public List<Case> caseList{get;set;}
public integer Numberofcases{
get{
if (Numberofcases == null) {
 Numberofcases = [select count() from case where CreatedById =: userinfo.getuserid()];
}
return Numberofcases;
}
set;
}





public CaseCustomController(){
cas = new Case();
displayCases();

ID ids = apexpages.currentPage().getParameters().get('id');
if(ids != null){
    cas = [select id, casenumber, subject, origin, status, createddate from Case where id =:ids];
    }



}


public void displayCases(){
caseList = new List<Case>();
caseList = [select id, casenumber, subject, origin, status, createddate from Case where CreatedById =: userinfo.getuserid()];
}


// This Method allows us to save the record, filled out in VF page. 
public pageReference saveCool(){
    try{
        if(cas.id == null){
        insert cas;
        successScreen = true;
        //query the case after we insert so that we can get the case object info, like here its queried for casenumber
        Case cQuery = [select casenumber from Case where id =: cas.id];
        successMessage = 'Successfully Incident is created and the Incident number :'+ cQuery.casenumber;
        return null;
        }
        if(cas.id!=null){
        update cas;
        successScreen = true;
         //query the case after we insert so that we can get the case object info, like here its queried for casenumber
        Case cQuery = [select casenumber from Case where id =: cas.id];
        successMessage = 'Successfully Incident is updated !';
        return null;
        }
    
        }
    
    Catch(Exception e)
    {
      System.debug('Error - '+e);
    }

return null;
 
}









}