public with sharing class CollectionsSOQLmap {
    static Map<ID,Account> mapAccounts = new Map<ID,Account>([
        SELECT Id,Name, Type
        FROM Account
        WHERE Type != ''
        ORDER BY Name ASC
    ]);
    public static void examplesMaps(){
    System.debug('Map of accounts: '+mapAccounts);
    System.debug('Size of map:'+mapAccounts.size());
    //Print keys
    System.debug('Keys of map: '+mapAccounts.keySet());
    //values of map
    System.debug('Values of map: '+mapAccounts.values());
    }

    public static void exampleGeneral(){
        Account accountToMap = new Account();
        accountToMap.Name = 'Account New';
        accountToMap.Type = 'Prospect';
        accountToMap.Id = '0014x000015XLiIAAW';
        System.debug('Is accountToMap in mapAccounts: '+mapAccounts.containsKey(accountToMap.Id));
        mapAccounts.put(accountToMap.Id, accountToMap);
        System.debug('Is accountToMap in mapAccounts: '+mapAccounts.containsKey(accountToMap.Id));
        System.debug('mapAccounts: '+mapAccounts);
    }

    public static void anotherExample(){
        Map<ID,Account> mapAccountsForm2 = new Map<ID,Account>([
            SELECT Id,Name, Type
            FROM Account
            WHERE Type != ''
            ORDER BY Name ASC
            LIMIT 5
        ]);
        List<Account> listaExample = new List<Account>();
        listaExample = [SELECT Id, Name, Type
        FROM Account
        WHERE Type != ''
        ORDER BY Name ASC
        LIMIT 5];
        System.debug('Size of mapAccountsForm2: '+mapAccountsForm2.size());
        mapAccountsForm2.put(listaExample.get(4).Id, listaExample.get(4));
        System.debug('Size of mapAccountsForm2 after put: '+mapAccountsForm2.size());
    }
}
