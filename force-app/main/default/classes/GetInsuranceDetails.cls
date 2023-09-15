public with sharing class GetInsuranceDetails {

    public GetInsuranceDetails(ApexPages.StandardController controller) {

    }

    public List<LeadClientInsurance__c> InfoDetails { get; set; }

    public GetInsuranceDetails() {
        InfoDetails = [SELECT Id, First_Name__c, Last_Name__c, Middle_Name__c, Suffix__c, Date_Of_Birth__c, Email__c, Phone_Number__c FROM LeadClientInsurance__c]; // Query Lead/Client insurance records
    }
}