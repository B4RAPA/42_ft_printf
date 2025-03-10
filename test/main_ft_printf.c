#include <limits.h>
#include <stdio.h>
#include "includes/ft_printf.h"

int main(void)
{
	ft_printf(" %d %d %s %x %X %c %i %p\n", INT_MAX, INT_MIN, "hallo was geht", INT_MAX, 0, 'a', -1, NULL);
	printf(" %d %d %s %x %X %c %i %p", INT_MAX, INT_MIN, "hallo was geht", INT_MAX, 0, 'a', -1, NULL);
	return (0);
}