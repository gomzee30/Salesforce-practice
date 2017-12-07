public with sharing class ParametrizedConstructor {
   public static Double myValue;
   public static String myString;

   public ParametrizedConstructor () {
      myValue = 100; // initialized variable when class is called
      System.debug('myValue variable with no Overaloading'+myValue);
   }

   public ParametrizedConstructor (Integer newPrice) { // Overloaded constructor
      myValue = newPrice; // initialized variable when class is called
      System.debug('myValue variable with Overaloading'+myValue);
   }

   public static Double getCalculatedValue () {
      myValue = myValue+10;
      return myValue;
   }

   public static Double getCalculatedValueViaPrice (Decimal price) {
      myValue = myValue+price;
      return myValue;
   }
}

/*
ParametrizedConstructor objClass = new ParametrizedConstructor();
Double FinalPrice = ParametrizedConstructor.getCalculatedValueViaPrice(100);
System.debug('FinalPrice: '+FinalPrice);
*/