@isTest
private class TestVerifyDate {
     @isTest static void verifyCheck() {
       Date fecha = VerifyDate.CheckDates(Date.newInstance(2022,07,20), Date.newInstance(2022,09,20));
         System.assertEquals(Date.newInstance(2022,07,31),fecha);
        Date fecha2 = VerifyDate.CheckDates(Date.newInstance(2022,07,20), Date.newInstance(2022,08,05));
         System.assertEquals(Date.newInstance(2022,08,05),fecha2);
    }

   
 }