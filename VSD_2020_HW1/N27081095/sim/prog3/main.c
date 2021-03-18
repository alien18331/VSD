int hcf(int n1, int n2);

int hcf(int n1, int n2)   // function definition
{
    if (n2 != 0)
        return hcf(n2, n1 % n2);
    else
        return n1;
}

int main(void) {

	extern int div1; //first number, unsigned 4-byte integers.
	extern int div2; //second number, unsigned 4-byte integers.
	extern int _test_start; //result
		
	// for(int i = *(&div1); i>=1; i--)
    // {
        // if((*(&div1))%i==0 && (*(&div2))%i==0){
			// *(&_test_start) = i;
			// break;
		// }
    // }
	
	// *(&_test_start) = &div2; //144 148
	// *(&_test_start) = *(&div2); //07622814  00421923
	
	// for(int i=1; i<div1; ++i) {
		// if(div1%i==0 && div2%i==0) {
			// *(&_test_start) = i;
			// break;
		// }
		
	// }
	
	*(&_test_start) = hcf(div1, div2);
	
	return 0;
}