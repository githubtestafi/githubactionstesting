public class RandomContactFactory {

     public static List<Contact> generateRandomContacts(Integer numCont, String lastname) {
        List<Contact> conts = new List<Contact>();
        for(Integer i=0;i<numCont;i++) {
            Contact c = new Contact(FirstName='TestContact' + i, LastName='ContactTest');
            Conts.add(c);
      }
        
        return conts;
    }
    
}