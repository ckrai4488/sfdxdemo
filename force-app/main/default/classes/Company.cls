public class Company{
    public String companyName;
    public String ceo;
    public Integer employeeCount;
    public Long Revenue;
    
     //List of all Customers
     private List<Client> customers = new List<Client>();
    
     //add new customers
     public void addCustomers(String name, String website, String email, Long phone){
        Client customer = new Client( name, website, email, phone);
            customers.add(customer);
    }
    
    //get new customers
    public void fetchCustomers(){
        for(Client customer : customers){
            System.debug('Client Name: '+customer.clientName+ 'Website: '+customer.website+ 'Email: '+customer.email+ 'Phone:'+customer.phonenumber); 
                        }
        }
                           
    
    
    //inner class for storing client details
    private class Client{
        public String clientName;
        public String website;
        public String email;
        public Long phonenumber;
        
        Client(String clientName, String website, String email, Long phonenumber){
            this.clientName = clientName;
            this.website = website;
            this.email = email;
            this.phonenumber = phonenumber;
            
        }
        
    }
    
}