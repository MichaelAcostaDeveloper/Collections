public class ExamplesApexObjects {
    public static Decimal operacionMatetematica(Decimal elementoA, Decimal elementoB){
        Decimal resultadoDeOperacion=elementoA*elementoB;
        return resultadoDeOperacion;
    }

    public static Account crearCuenta(String element){
        Account objeto =new Account();
        objeto.Name=element;
        objeto.AccountSource = 'CUENTA GENERADA POR CODE';
        return objeto;
    }

    public static void callMethods(){
        Account cuentaFromMethod = ExamplesApexObjects.crearCuenta('Cuenta 1');
        Account cuentaToMethod = ExamplesApexObjects.crearCuenta('cuenta 2');
        System.debug('cuenta de metodo--> '+cuentaFromMethod);
        System.debug('cuenta de methos--> '+cuentaToMethod);

        Decimal resultadodosNumeros = ExamplesApexObjects.operacionMatetematica(8,9);
    }
}
