public with sharing class CollectionsSOQLmap {
    static Map<ID,Account> mapAccounts = new Map<ID,Account>([
        SELECT Id,Name, Type
        FROM Account
        WHERE Type != ''
        ORDER BY Name ASC LIMIT 5
    ]);
    static List<Account> listAccounts = new List<Account>([
        SELECT Id, Name, Type
        FROM Account WHERE Type!=''
        ORDER BY Name ASC LIMIT 5]);

    public static void examplesMaps(){
    System.debug('Map of accounts: '+mapAccounts);
    System.debug('Size of map:'+mapAccounts.size());
    System.debug('Keys of map: '+mapAccounts.keySet());
    System.debug('Values of map: '+mapAccounts.values());
    }

    public static void exampleGeneral1(){
        Account accountToMap = new Account();
        accountToMap.Name = 'Account New';
        accountToMap.Type = 'Prospect';
        accountToMap.Id = '0014x000015XLiIAAW';
        System.debug('Is accountToMap in mapAccounts: '+mapAccounts.containsKey(accountToMap.Id));
        mapAccounts.put(accountToMap.Id, accountToMap);
        System.debug('Is accountToMap in mapAccounts: '+mapAccounts.containsKey(accountToMap.Id));
        System.debug('mapAccounts: '+mapAccounts);
    }

    public static void exampleGeneral2(){
        System.debug('Size of mapAccounts: '+mapAccounts.size());
        mapAccounts.put(listAccounts.get(4).Id, listAccounts.get(4));
        System.debug('Size of mapAccounts after put: '+mapAccounts.size());
    }
}
