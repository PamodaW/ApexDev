public class Company {
	public string companyName;
    public string ceo;
    public integer employeeCount;
    public long revenue;
    
    //List of all customers
    private List<client> customers = new List <Client>{};
    //add new Customer
    public void addNewCustomer(string clientName , string website , string email ,long phone){
        client customer = new client(clientName,website,email,phone);
        //todo:add customer
        customers.add(customer);
    }
    
    //print list of customers
    public void getAllCustomers(){
        //TODO: print all customers
        for(client customer : customers ){
            system.debug('Customer Name :' +customer.clientName+ 'Website : '+customer.website+'email : '+customer.email+'phone : '+customer.phone);
        }
    }
    
    //private inner class to store the customer information
    private class client {
        public string clientName;
        public string website;
        public string email;
        public long phone;
        
        client(string clientName , string website , string email ,long phone ){
            this.clientName = clientName;
            this.website = website;
            this.email = email;
            this.phone = phone;
        }
    }
}