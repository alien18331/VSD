
int main(void) {

	extern int mul1; //multiplicand, signed 4-byte integers.
	extern int mul2; //multiplier, signed 4-byte integers.
	extern int _test_start; //result, signed 8-byte integers
	
	int mul1_H, mul1_L, mul2_H, mul2_L;
	
	mul1_H = *(&mul1) >> 16;
	mul1_L = (*(&mul1) << 16) >> 16;
	mul2_H = *(&mul2) >> 16;
	mul2_L = (*(&mul2) << 16) >> 16;
	
	*(&_test_start) = (mul1_L * mul2_L) + ((mul1_L*mul2_H + mul1_H*mul2_L)<<16); //LSB
	*((&_test_start)+1) = (mul1_H * mul2_H) + ((mul1_L*mul2_H + mul1_H*mul2_L)>>16); //MSB
	
	// (int64_t)(*(&_test_start)) = (int64_t)(*(&mul1)) * (int64_t)(*(&mul2));
	
	// *(&_test_start) = (L1*L2) + ((L1*H2+L2*H1)<<16);
	// *(&_test_start+1) = H1*H2 + (((L1*H2+L2*H1)>>16));
	
	return 0;
}