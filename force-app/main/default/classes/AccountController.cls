public class AccountController{
    
    public static void updateCaseResolutionDays(List<Id> accountIDs){
        Map<Id, Integer> accountTotalCaseMap = new Map<Id, Integer>();
        Map<Id, Integer> accountTotalCaseDaysMap = new Map<Id, Integer>();
        for(Case caseObj : [Select Id, CreatedDate, ClosedDate, AccountId from Case where isClosed =True and
                            AccountId in:accountIDs]){ 
                                if(! accountTotalCaseMap.containsKey(caseObj.AccountId)){
                                   accountTotalCaseMap.put(caseObj.AccountId, 0);
                                   accountTotalCaseDaysMap.put(caseObj.AccountId, 0);
                                }
    
          // increase number of cases
        Integer totalCases = accountTotalCaseMap.get(caseObj.AccountId);
        accountTotalCaseMap.put(caseObj.AccountId, totalCases+1);

        // get duration in days and add it to totalDays
        Integer totalDays = accountTotalCaseDaysMap.get(caseObj.AccountId);
        accountTotalCaseDaysMap.put(caseObj.AccountId, totalDays+caseObj.CreatedDate.date().daysBetween(caseObj.ClosedDate.date()));
    					}
        // list of accounts to update
    List<Account> accountsToUpdate = new List<Account>();

    // iterate over the map to update all accounts
    for(Id accountId : accountTotalCaseMap.keySet()){
        Decimal resolutionDays = accountTotalCaseDaysMap.get(accountId)/accountTotalCaseMap.get(accountId);
        // update account object
        accountsToUpdate.add(new Account(Id=accountId, Avg_Case_Resolution_Days__c = resolutionDays));
    }
    update accountsToUpdate;
}
    
    
    public static List<Account> insertAccounts(List<Account> accountsToInsert){
        insert accountsToInsert;
        return accountsToInsert;
    }
    
    public static Account insertAccount(Account accountToInsert){
        insert accountToInsert;
        return accountToInsert;
    }
    
    public static List<Account> getAccounts(){
        List<Account> accs = [Select Name,Phone,Rating from Account];
        return accs;
    }
    
    public static void printAccounts(){
        List<Account> accs2 = getAccounts();
        for(Account accs3 : accs2){
            System.debug(accs3.name+accs3.phone+accs3.rating);
        }
        
    }
    
    public static Integer getAccountsize(){
        List<Account> accs4 = getAccounts();
        return accs4.Size();
        
    }
}