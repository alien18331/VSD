
int main(void) {

	extern int mul1; //multiplicand, signed 4-byte integers.
	extern int mul2; //multiplier, signed 4-byte integers.
	extern int _test_start; //result, signed 8-byte integers
	
	// int mul1_H, mul1_L, mul2_H, mul2_L;
	
	// mul1_H = *(&mul1) >> 16;
	// mul1_L = (*(&mul1) << 16) >> 16;
	// mul2_H = *(&mul2) >> 16;
	// mul2_L = (*(&mul2) << 16) >> 16;
	
	// *(&_test_start) = (mul1_L * mul2_L) + ((mul1_L*mul2_H + mul1_H*mul2_L)<<16); //LSB
	// *((&_test_start)+1) = (mul1_H * mul2_H) + ((mul1_L*mul2_H + mul1_H*mul2_L)>>16); //MSB
	
	*(&_test_start) = (int)(mul1 * mul2);
	*(&_test_start+1) = (int)(((long long) mul1 * (long long) mul2) >> 32);
	
	return 0;
}