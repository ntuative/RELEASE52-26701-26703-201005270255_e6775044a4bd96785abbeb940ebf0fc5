package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_1153:BigInteger;
      
      private var var_563:BigInteger;
      
      private var var_1429:BigInteger;
      
      private var var_1430:BigInteger;
      
      private var var_1691:BigInteger;
      
      private var var_1690:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         var_1153 = param1;
         var_1429 = param2;
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return var_1691.toRadix(param1);
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         var_1430 = new BigInteger();
         var_1430.fromRadix(param1,param2);
         var_1691 = var_1430.modPow(var_563,var_1153);
         return getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return var_1690.toRadix(param1);
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + var_1153.toString() + ",generator: " + var_1429.toString() + ",secret: " + param1);
         var_563 = new BigInteger();
         var_563.fromRadix(param1,param2);
         var_1690 = var_1429.modPow(var_563,var_1153);
         return true;
      }
   }
}
