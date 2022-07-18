public class CollectionsSOQLset {
 public static void  examples(){
          Set<Account> setDeCuentasForm1 = new Set<Account>([SELECT Id, Name, Type
                              FROM Account
                              WHERE Type != ''
                              ORDER BY Name ASC
                              LIMIT 5]);
System.debug('setDeCuentas: '+setDeCuentasForm1); //no asigna igual que las listas cuando se crean set a partir de consultas

System.debug('Size of the set: '+setDeCuentasForm1.size());
List<Account> lista = new List<Account>();
lista = [SELECT Id, Name, Type
          FROM Account
          WHERE Type != ''
          ORDER BY Name ASC
          LIMIT 5];
setDeCuentasForm1.remove(lista.get(0));
System.debug('setDeCuentas: '+setDeCuentasForm1.size());
}
}
