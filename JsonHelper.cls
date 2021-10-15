public class JsonHelper {
	public static DateTime parse8601DateTime(string dateTimeIn8601Format)
    {
        if(String.isBlank(dateTimeIn8601Format))
        {
           return null; 
        }
        return (DateTime)JSON.deserialize('"' + dateTimeIn8601Format + '"', DateTime.class);
    }
}