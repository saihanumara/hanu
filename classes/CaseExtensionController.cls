public Class CaseExtensionController{
    public Case ca{get;set;}   //get -> Read, //set is Write
    public CaseExtensionController(ApexPages.StandardController controller) {
    ca =    (Case)controller.getRecord();
    }
    
    public pageReference save(){
    if(ca.Origin != null)
      {
         ca.Type= 'Electronic';
      
      }
    
    insert ca;
    
    return null;
    }
    

    public CaseExtensionController(){
    
    }
    


}