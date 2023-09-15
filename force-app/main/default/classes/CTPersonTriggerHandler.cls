public with sharing class CTPersonTriggerHandler {
    public static void beforeInsert(List<Person__c> newRecords){
        for(Person__c person : newRecords){
            // update person status to green
            person.Health_Status__c = 'Green';
            // generate unique token
            person.Token__c = CTPersonController.getToken(person.Mobile__c);

        }
    }

    // Before update operation for Person__c object
    public static void beforeUpdate(List<Person__c> newRecords , Map<Id , Person__c> oldRecordsMap){
        for(Person__c person : newRecords){
            // check if the status changed in transaction
            // also update Status_Update_Date__c 
            if(person.Health_Status__c != oldRecordsMap.get(person.id).Health_Status__c){
                person.Status_Update_Date__c = Date.today();
            }
        }
    }
}