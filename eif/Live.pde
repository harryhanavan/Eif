import java.util.Calendar;
import java.util.TimeZone;

Calendar c;

void liveEIF(){
  c = Calendar.getInstance(TimeZone.getTimeZone("AET"));
  Year = Integer.toString(c.get(Calendar.YEAR));
  
  Month = Integer.toString(c.get(Calendar.MONTH));
  Day = Integer.toString(c.get(Calendar.DAY_OF_MONTH));
  t24 = Integer.toString(c.get(Calendar.HOUR_OF_DAY));
  tMinute = Integer.toString(c.get(Calendar.MINUTE));
  tSecond = Integer.toString(c.get(Calendar.SECOND));
  eif(Year,Month,Day,t24,tMinute,tSecond);

}
