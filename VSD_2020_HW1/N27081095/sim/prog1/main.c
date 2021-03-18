
int main(void) {

	extern int array_size; //The number of sorting elements
	extern int array_addr; //The first element is stored
	extern int _test_start; //result
	
	//The maximum number of elements is 64
	//All elements are signed 4-byte integers and you should sort them in ascending order.
	
	// int i;
	int tmp;
	
	//store data to _test_start
	for(int i=0; i<64; i++) {
		*(&(_test_start)+i) = *(&(array_addr)+i);		
	}
	
	
	//bu
	for(int i=(*(&array_size)-1); i>0; i--){
		for(int j=0; j<i; j++) {
			if(*(&(_test_start)+j) > *(&(_test_start)+j+1)) {
				tmp = *(&(_test_start)+j);
				*(&(_test_start)+j) = *(&(_test_start)+j + 1);
				*(&(_test_start)+j + 1) = tmp;				
			}
			
		}
		
	}
	
	
	
	return 0;
}