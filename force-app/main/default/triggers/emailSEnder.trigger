trigger emailSEnder on Lead (after insert , after update) {
    
        List<Messaging.SingleEmailMessage> emailList = new List<Messaging.SingleEmailMessage>();
    
        for (Lead newLead : Trigger.new) {
            Messaging.SingleEmailMessage email = new Messaging.SingleEmailMessage();
            email.setToAddresses(new String[] {newLead.email}); // Replace with the recipient's email address
            email.setSubject('New Lead Created');
            
            email.setPlainTextBody('New Lead Created !! '+'A new Lead was created with the name: ' + newLead.FirstName + ' ' + newLead.LastName);
            emailList.add(email);
        }
    
        Messaging.sendEmail(emailList);

    }
    
