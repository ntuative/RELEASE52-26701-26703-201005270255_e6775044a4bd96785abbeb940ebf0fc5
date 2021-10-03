package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_1670:int = 5;
      
      public static const const_1560:int = 113;
      
      public static const const_1704:int = 29;
      
      public static const const_1522:int = 0;
      
      public static const const_1658:int = 102;
      
      public static const const_1562:int = 25;
      
      public static const const_1526:int = 20;
      
      public static const const_1598:int = 116;
      
      public static const const_1679:int = 114;
      
      public static const const_1577:int = 101;
      
      public static const const_1508:int = 108;
      
      public static const const_1539:int = 112;
      
      public static const const_1574:int = 100;
      
      public static const const_1623:int = 24;
      
      public static const const_1320:int = 10;
      
      public static const const_1705:int = 111;
      
      public static const const_1541:int = 23;
      
      public static const const_1549:int = 26;
      
      public static const const_1432:int = 2;
      
      public static const const_1677:int = 22;
      
      public static const const_1552:int = 17;
      
      public static const const_1572:int = 18;
      
      public static const const_1638:int = 3;
      
      public static const const_1581:int = 109;
      
      public static const const_1247:int = 1;
      
      public static const const_1507:int = 103;
      
      public static const const_1698:int = 11;
      
      public static const const_1550:int = 28;
      
      public static const const_1499:int = 104;
      
      public static const const_1617:int = 13;
      
      public static const const_1488:int = 107;
      
      public static const const_1662:int = 27;
      
      public static const const_1501:int = 118;
      
      public static const const_1485:int = 115;
      
      public static const const_1498:int = 16;
      
      public static const const_1711:int = 19;
      
      public static const const_1542:int = 4;
      
      public static const const_1575:int = 105;
      
      public static const const_1678:int = 117;
      
      public static const const_1676:int = 119;
      
      public static const const_1619:int = 106;
      
      public static const const_1528:int = 12;
      
      public static const const_1694:int = 110;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_7 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(reason)
         {
            case const_1247:
            case const_1320:
               return "banned";
            case const_1432:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
