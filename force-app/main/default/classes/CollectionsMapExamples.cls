public with sharing class CollectionsMapExamples {
    public static Map<String,String> mapTesting(){
        Map<String,String> mapExample = new Map<String,String>{'EUR'=>'euro','MXN'=>'peso','USA'=>'dolar'};
        return mapExample;
    }
    //clone, toString ,put,remove, clear
    public static void methodsPart1(){
        Map<String,String> mapcloned = mapTesting().clone();
        System.debug('map cloned: '+mapcloned);
        mapcloned.put('JPY','yen');
        System.debug('map cloned after put: '+mapcloned);
        String mapText = mapcloned.toString();
        System.debug('mapText: '+mapText);
        mapcloned.remove('EUR');
        System.debug('map cloned after remove: '+mapcloned);
        mapcloned.clear();
        System.debug('map cloned after clear: '+mapcloned);
    }

    //size, keySet, values, get
    public static void methodsPart2(){
        Map<String,String> mapCloned = mapTesting().clone();
        System.debug('Size of map cloned: '+mapCloned.size());
        System.debug('KeySet of the map: '+mapCloned.keySet());
        System.debug('Values of the map: '+mapCloned.values());
        System.debug('Use Get of the map: '+mapCloned.get('EUR'));
    }

    //isEmpty, containsKey
    public static void methodsPart3(){
        Map<String,String> mapCloned = mapTesting().clone();
        System.debug('Is empty this map: '+mapCloned.isEmpty());
        System.debug('Is USA key in the map: '+mapCloned.containsKey('USA'));

    }
}
