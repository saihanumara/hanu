public class Hworld {
    public static void applyDiscount(Book__c[] books){
        for(Book__c b :books){
            b.Price__c =  b.Price__c * 0.9;
            system.debug('test:' + b.Price__c);
        }
    }
}