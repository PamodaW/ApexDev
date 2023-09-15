public class AccountController {
    public static List<Account> insertAccounts(List<Account> accountToInsert){
        insert accountToInsert;
        return accountToInsert;
    }
	  public static Account insertAccounts(Account accountToInsert){
        insert accountToInsert;
        return accountToInsert;
    }
    
    public static List<Account> getAllAccounts(){
        //Retrive all accounts and assign to a list collection
        List<Account> accounts = [SELECT Name, Phone FROM Account];
		return accounts;        
  
    }
    
        public static void printAllAccounts(){
        //Retrive all accounts and assign to a list collection
        List<Account> accounts = getAllAccounts();
		//iterate over all accounts and print account information
            for(Account account : accounts){
                system.debug('Account Name : '+account.Name+' Account Phone : '+account.Phone);
            }    
  
    }
    
    public static Integer getAccountSize(){
         List<Account> accounts = getAllAccounts();
         return accounts.size();
    }
}