public with sharing class InsuranceInformation {
    public List<LeadClientInsurance__c> leadClientList { get; set; }
    
    public InsuranceInformation(ApexPages.StandardController controller) {
        // Retrieve the current Lead record
        Lead currentLead = (Lead)controller.getRecord();
        
        // Query the related "LeadClient" records
        leadClientList = [SELECT First_Name__c, Last_Name__c, Middle_Name__c, Suffix__c, Date_Of_Birth__c, Email__c, Phone_Number__c Lead__c FROM LeadClientInsurance__c WHERE Lead__c = :currentLead.Id];
    }
}