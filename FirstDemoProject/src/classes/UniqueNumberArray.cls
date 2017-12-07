public with sharing class UniqueNumberArray {
    public void check(integer[] intArray ){	
    	List<Integer> originalList = new List<Integer> ();
    	originalList = intArray;
		Set<Integer> myset = new Set<Integer>();
		List<Integer> result = new List<Integer>();
		myset.addAll(originalList);
		result.addAll(myset);		
		System.debug('result: ' + result);	
	}
}

/*
UniqueNumberArray u = new UniqueNumberArray();
integer[] intArray = new integer[] {1,2,3,1,4};
u.check(intArray);
*/