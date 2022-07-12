public with sharing class CollectionsSOQLlist {
    static List<Account> accounts = new List<Account>();
    public static void examplesTestSOQL(){
        accounts = [SELECT Id, Name, Type FROM Account WHERE Type!='' ORDER BY Name ASC LIMIT 5];
        System.debug('List of accounts: '+accounts);

        //1 form
        Account objAccount = accounts.get(0);
        System.debug('Name of the objeAccount: '+objAccount.Name);
        System.debug('Type of the objeAccount: '+objAccount.Type);
        System.debug('Id of the objeAccount: '+objAccount.Id);

        //2form
        System.debug('Name of the objeAccount: '+accounts.get(0).Name);
        System.debug('Type of the objeAccount: '+accounts.get(0).Type);
        System.debug('Id of the objeAccount: '+accounts.get(0).Id);

        //acceder al ultimo elemento
        System.debug('Last element is: '+accounts.get(accounts.size()-1));

    }

    public static void exampleAdd(){
        accounts = [SELECT Id, Name, Type FROM Account WHERE Type!='' ORDER BY Name ASC LIMIT 10];
        Account newAccount = new Account();
        newAccount.Name = 'New name to the list';
        newAccount.Type = 'Prospect';
        accounts.add(newAccount);
        System.debug('Is the new Account in the list: '+accounts.contains(newAccount));
        System.debug('The updated list is: '+accounts);

        //acceder al elemento que se added
        System.debug('The last added element is: '+accounts.get(accounts.indexOf(newAccount)));
    }

    
}
