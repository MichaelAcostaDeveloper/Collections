public with sharing class LoopsApex {
    public static void loopBasic(){
        for (Integer i = 0; i <=11 ;i++){
            System.debug('Loop ' +i);
        }

        Integer x = 0;
        while(x<=11){
            System.debug('while: '+x);
            x++;
        }

        Integer y=0;
        do{
            System.debug('Do while: '+y);
            y++;}
        while(y<=11);

        List<Account> myAccounts =[SELECT Name FROM Account LIMIT 11];
        for (Integer w = 0; w < myAccounts.size(); w++) {
            System.debug('Account number: '+w);
            System.debug('Its name is: '+myAccounts.get(w));
        }
    }
    public static void loopAdvance(){
        List<String> colores = new List<String>{'Azul','Blanco','Rojo','Rosa'};
        for(String color : colores){
            System.debug('Color: '+color);
        }

        List<Account> myAccounts = [SELECT Name FROM Account LIMIT 11];
        for (Account myAccount : myAccounts){
            System.debug('Account: '+myAccount);
        }

        for (Account name : [SELECT Name FROM Account]){
            System.debug('Another Account: '+name);
        }
    }
    public static void example(){
        List<Opportunity> myOpportunities = [SELECT Id, Name, StageName FROM Opportunity];
        System.debug('Size of list: '+myOpportunities.size());

        List<Opportunity> listFiltrada = new List<Opportunity>();
        List<Opportunity> listNoProspecting = new List<Opportunity>();
        for(Opportunity opp : myOpportunities){
            if(opp.StageName == 'Prospecting'){
                listFiltrada.add(opp);
            }else{
                listNoProspecting.add(opp);
            }
        }
        System.debug('lIST FILTRADA: '+listFiltrada);
        System.debug('List no prospecting: '+listNoProspecting);
        listFiltrada.clear();
        System.debug('List filtrada despues del clear: '+listFiltrada);

        for(Opportunity opp : [SELECT Id, Name, StageName FROM Opportunity WHERE StageName = 'Prospecting']){
            listFiltrada.add(opp);
        }
        System.debug('SIze lista filtrada: '+listFiltrada.size());
    }
}
