public with sharing class PrimeOrNot {
    public void check(integer num){
    	integer cnt = 0;
    	for(integer i=2; i<num; i++)
        {
            if(System.Math.mod(num,i) == 0)
            {
                cnt++;
                break;
            }
        }
		if(cnt == 0)
		{
			System.debug('Entered num is prime');
		}
		else
		{
			System.debug('Entered num is not prime');
		}
	}
}