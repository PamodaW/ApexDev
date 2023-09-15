trigger CTPersonTrigger on Person__c (before insert , after insert, before update , after update , before delete , after delete , after undelete) {
    switch on Trigger.operationType {
        when BEFORE_INSERT {
            // Update the health status to green
            // Generate unique token for the person record
            CTPersonTriggerHandler.beforeInsert(Trigger.new);
        }
        when BEFORE_UPDATE {
            CTPersonTriggerHandler.beforeUpdate(Trigger.new, Trigger.oldMap);
        }
    }
}