public class CollectionsSetExamples {
    //Set with data
    public static Set<String> setTesting(){
        Set<String> setTest = new Set<String>{'Colombia','Ecuador','Peru','Uruguay'};
        return setTest;
    }
    //null Set
    public static void nullSet(){
        Set<String> setNull;
    }
    //empty Set
    public static void emptySet(){
        Set<String> emptySet = new Set<String>();
    }
    //clone
    public static void cloneSet(){
        Set<String> clone = setTesting().clone();
        System.debug('Cloned Set: '+clone);
    }
    //add, remove, clear
    public static void examplesMethodsPart1(){
        Set<String> newSet= new Set<String>();
        newSet.add('Paraguay');
        System.debug('New set: '+newSet);
        newSet.addAll(setTesting());
        System.debug('New set: '+newSet);
        newSet.remove('Paraguay');
        System.debug('New set after remove: '+newSet);
        newSet.clear();
        System.debug('Set cleaned: '+newSet);
    }
    //size, contains, isEmpty
    public static void exampleMethodsPart2(){
        Set<String> newExample = setTesting().clone();
        System.debug('Size: '+newExample.size()); 
        System.debug('Is empty: '+newExample.isEmpty());
        System.debug('Contains: '+newExample.contains('Ecuador'));
        
    }



}
