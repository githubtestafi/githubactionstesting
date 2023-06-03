@isTest
private class TestRestrictContactByName {
    @isTest static void TestTryInsertInvalidLastName() {
        // Test data setup
        // Create a contact with lastname not valid
        Contact cont = new Contact(FirstName='Contact', LastName='INVALIDNAME');
        
        // Perform test
        Test.startTest();
        Database.SaveResult result = Database.insert(cont, false);
        Test.stopTest();
        // Verify 
        // In this case the insertion should have been stopped by the trigger,
        // so verify that we got back an error.
        System.assert(!result.isSuccess());
        System.assert(result.getErrors().size() > 0);
        System.assertEquals('The Last Name "'+cont.LastName+'" is not allowed for DML',
                             result.getErrors()[0].getMessage());
    }
}