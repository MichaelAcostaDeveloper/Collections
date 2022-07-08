public  class CollectionsExamples {
    //null list
    public static void examplesList(){
        List<String> nullList;
        String[] anotherNullList;

        System.debug('Value of NullList is: '+nullList);
        System.debug('AnotherNullList is: '+anotherNullList);
    }
    //empty List
    public static void examplesEmptyList(){
        List<String> emptyList = new List<String>();
        String[] anotherEmptyList=new List<String>();
        System.debug('Value of emptyList is: '+emptyList);
        System.debug('Another emptyList is: '+anotherEmptyList);
    }
    //list example
    public static List<String> listTesting(){
        List<String> listTest= new List<String>{'Micke','Jacob','Saul','Jack','Rob'};
        return listTest;
    }
    //add method
    public static void examplesAdd(){
        System.debug('Values before add: '+listTesting());
        List<String> newList = new List<String>(listTesting());
        newList.add('Sandy');
        System.debug('Values after add: '+newList);
    }
    //addAll methods
    public static void examplesAddAll(){
        String[] newList = new List<String>(listTesting());
        newList.addAll(listTesting());
        System.debug('Values after addAll: '+newList);
    }
    //remove, clear, sort, set
    public static void examplesAnotherMethodsPart1(){
        List<String> newList= new List<String>(listTesting());
        newList.sort();
        System.debug('Ordered values: '+newList);
        newList.remove(2);
        System.debug('Values after remove: '+newList);
        newList.set(0,'New Name');
        System.debug('List with new value: '+newList);
        newList.clear();
        System.debug('List empty: '+newList);
    }
    //access, size, indexOf
    public static void examplesAnotherMethodsPart2(){
        List<String> newList = new List<String>(listTesting());
        System.debug('Value of element position 3: '+newList.get(3));
        System.debug('Value of element position 2: '+newList[2]);
        System.debug('Size of the list: '+newList.size());
        System.debug('Index of Micke: '+newList.indexOf('Micke'));
    }
    //contains, isEmpty
    public static void examplesAnotherMethodsPart3(){
        String[] newList = new List<String>(listTesting());
        System.debug('Values of the list: '+newList);
        System.debug('Is list contains Micke: '+newList.contains('Micke'));
        newList.clear();
        System.debug('Is empty the list: '+newList.isEmpty());
    }
}
