public class DateTimePractise {
 public Integer calculateDays(date inputdt, datetime inputdttime)
    {
       
/*Date startDate = Date.newInstance(2019, 12, 14);
DateTime dt = DateTime.newInstance(2019, 10, 30, 7, 8, 16);*/
        Date Enddate = date.newinstance(inputdttime.year(), inputdttime.month(), inputdttime.day());
        Integer numberDaysDue = inputdt.daysBetween(Enddate);
        system.debug('dayscount:'+numberDaysDue);
        return numberDaysDue;

   }

}