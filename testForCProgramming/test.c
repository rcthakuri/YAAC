#include <stdio.h>
int sum(int, int);

int main()
{
	int d;
	d = sum(1, 2);
	printf("%d\n", d);
	return 0;
}

sum(int a, int b)
{
	return a + b;
}
	
