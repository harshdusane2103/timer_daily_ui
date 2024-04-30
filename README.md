# timer_daily_ui

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
<h1 align="center">#️⃣5.1 Flutter Button#️⃣</h1>
<!-- <h3 aling=center></h3>  -->
<p align=center>
  <img src="https://github.com/harshdusane2103/timer_daily_ui/blob/master/button.png"width=22% height=35% align=center>
</p>

<h1 align="center">#️⃣5.1 Asynchronous Programming#️⃣</h1>
<!-- <h3 aling=center></h3>  -->
<p align=center>
  

1> What is  Asynchronous Programming?

Asynchronous Programming is a Programming paradigam that allows tasks or operations to run independently and concurrently ,without waitting for each other to complete before moving on to the next task.

2> What is Future Class ?
  A Future represents a value that may not be available yet. It encapsulates an asynchronous operation and provides a way to handle the result or error when it becomes available.

3> What is Duration class & Future.delayed() constructor with Example ?



Code Example

#include<stdio.h>
main()
{
	int a[10]={1,2,3,4};
		a[3]=10;
	a[4]=5;
	a[8]=96;

	int i;
	for(i=0;i<10;i++)
	{
		printf("%d ",a[i]);
    }
    
    printf("\n ");
        
    int  n, index;
    int de[n];


    printf("Enter size of the array : ");
    scanf("%d", &n);
    printf("Enter elements in array : ");
    for(i=0; i<n; i++)
    {
    	printf("[%d]:",i);
        scanf("%d", &de[i]);
    }

  
    printf("Enter the element position to delete : ");
    scanf("%d", &index);


  
    if(index < 0 || index > n)
    {
        printf("Invalid index! Please enter index  between 1 to %d", n);
    }
    else
    {
        for(i=index-1; i<n-1; i++)
        {
            de[i] = de[i + 1];
        }

        
        n--;

   
        printf("\nElements of array after delete are : ");
        for(i=0; i<n; i++)
        {
            printf("%d\t", de[i]);
        }
    }

}



</p>
