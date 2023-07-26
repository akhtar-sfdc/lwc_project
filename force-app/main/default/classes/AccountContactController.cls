public class AccountContactController{
    
    @AuraEnabled
    public static AccountContactListWrapper getAccountWithContacts(String accountId){
        AccountContactListWrapper accWrapper = new AccountContactListWrapper();
        List<Account> accList = [SELECT Id, Name, BillingState, Website, Phone FROM Account WHERE Id =: accountId];
        if(!accList.isEmpty()){
            accWrapper.accRecord = accList[0];
        }
        return accWrapper;
    }
    
    // wrapper class with @AuraEnabled and {get;set;} properties 
    public class AccountContactListWrapper{
        @AuraEnabled
        public Account accRecord;
    }
}