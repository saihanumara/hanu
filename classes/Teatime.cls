public class Teatime {
    public static void testTeatime(){
String tim = 'It is Tea Time!';
Integer i = 2;
Boolean b = false;
        system.debug('test' +tim+ +i+ +b);
        String waterLevel = '';
if(waterLevel == 'empty'){
    System.debug('Fill the tea kettle');
    waterLevel = 'full';
}else if(waterLevel == 'half'){
    System.debug('Fill the tea kettle');
    waterLevel = 'full';
}else{ /*This statement only runs if line 2 and line 5 result in false.*/
    System.debug('The tea kettle is full');
}
        if(waterLevel<='half'){
            system.debug('clean the tea kettle');
        }
        else{
            system.debug('hi');
        }
}
}