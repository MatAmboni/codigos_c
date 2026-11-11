//Código feito para descobrir qual o maior e menor número em uma série de elementos

#include <stdio.h>

int a[1000],i,n;
int num_max();
int num_min();

int main()
{
    int result_max;
    int result_min;

    printf("Digite o número de elementos : ");
    scanf("%d",&n);
 
    printf("Digite os elementos : ");
    for(i=0; i<n; i++)
    {
        scanf("%d",&a[i]);
    }

    result_max = num_max();
    result_min = num_min();

     printf("\no número maior é: %d", result_max);
     printf("\ne o número menor é: %d \n\n", result_min);

    return 0;
}

int num_max()
{
    int max;

    max=a[0];
    for(i=1; i<n; i++)
    {  
		   if(max<a[i])
		    max=a[i];       
    }

    return max;
}

int num_min()
{
    int min;

    min=a[0];
    for(i=1; i<n; i++)
    {  
		   if(min>a[i])
		    min=a[i];       
    }

    return min;
}