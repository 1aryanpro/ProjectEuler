using System;

class Program
{
	static void Main(string[] args)
	{
		Console.WriteLine("{0}", findMaxPrimeFactor(600851475143));
	}
	
	static int findMaxPrimeFactor(long n) {
		int maxPrimeFactor = -1;
		
		while (n % 2 == 0) {
			n /= 2;
			maxPrimeFactor = 2;
		}
		
		for(int i = 3; i < Math.Sqrt(n); i += 2) {
			while (n % i == 0) {
				n /= i;
				maxPrimeFactor = i;
			}
		}
		
		if (n > 2) {
			maxPrimeFactor = (int)n;
		}
		
		return maxPrimeFactor;
	}
}