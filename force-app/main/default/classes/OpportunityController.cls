public class OpportunityController{
    
    public static void updateProfile(List<Id> oppID){
        List<Opportunity> opps = [Select Name,Amount,Profile__c from Opportunity where ID In:oppID];
        for(Opportunity opp : opps){
            if(opp.Amount < 10000){
                opp.Profile__c = 'low';}
            else if(opp.Amount > 50000){
                opp.Profile__c = 'high';}
            else(opp.Profile__c = 'medium');
            }
        update opps;
        }
    }