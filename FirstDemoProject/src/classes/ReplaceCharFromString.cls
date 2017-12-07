public with sharing class ReplaceCharFromString {
    public void check(string chare, string[] strarray ){		
		List<string> stringList = new List<String>();
		List<String> convertedList = new List<String> ();
		stringList = strarray;
		for (String str : stringList)
		{
    		System.debug(str);
    		string repString = str.replace('a',chare);
    		convertedList.add(repString);    		
		}
		System.debug(convertedList);    	
	}
}