public with sharing class Palindrome {
		public void check(string txt){
		string original = txt;
		string reverse = '';		
		integer len = original.length();
        for ( integer i = len - 1; i >= 0; i-- )
        reverse += original.substring(i, i+1);        
		System.debug('original: ' + original);
        System.debug('reverse: ' + reverse);
        
        if(original.equals(reverse))
            System.debug('Entered string is a palindrome.');
         else
            System.debug('Entered string is not a palindrome.');
	}
}
