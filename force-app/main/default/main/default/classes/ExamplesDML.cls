public with sharing class ExamplesDML {
    public static Id insertObjectExample(String NameAccount){
        Account objAccount = new Account();
        objAccount.Name = NameAccount;
        insert objAccount;

        return objAccount.Id;
    }

    public static Id insertCustomObjectExample(String name){
        Employee__c obj = new Employee__c();
        obj.Name = name;
        insert obj;

        return obj.Id;
    }

    public static Account updateObjetExample(String idAccount, String newName){
        Account objAccount = new Account();
        objAccount.Id = idAccount;
        objAccount.Name = newName;
        update objAccount;

        return objAccount;
    }
}
