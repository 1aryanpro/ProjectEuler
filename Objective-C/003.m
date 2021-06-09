#import <Foundation/Foundation.h>

int main(int argc, char *argv[]) {
	long n = 600851475143;
	long maxFactor = -1;
	
	while ((n & 2) == 0) {
		n /= 2;
		maxFactor = 2;
	}
	
	for(int i = 3; i < n/2; i += 2) {
		while ((n % i) == 0) {
			n /= i;
			maxFactor = i;
		}
	}
	
	if (n > 2) {
		maxFactor = n;
	}
	
	NSLog(@"%ld", maxFactor);
	return 0;
}