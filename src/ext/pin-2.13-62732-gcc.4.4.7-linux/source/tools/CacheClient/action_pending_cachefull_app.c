/*NO LEGAL*/

/*
 * This test application is only interesting when run with the tool
 * action_pending_cachefull_tool.cpp. It has two threads, one thread spins in
 * a tool replacement function (non-jitted code), while the other executes
 * a large amount of code in order to cause a high watermark hit in the code
 * cache   
 */

#include <stdio.h>
#include "../Utils/threadlib.h"
#ifndef TARGET_WINDOWS
#include <unistd.h>
#endif

static void *Waiter(void *);
static void *Generator(void *);
#ifdef TARGET_WINDOWS
__declspec(dllexport) 
#else
extern "C"
#endif
void ToolWait();

static int waiterRunning = 0;


#define FUNS(name)     \
    void name()        \
    {                    \
        int i;           \
        for (i = 0; i < n; i++)                 \
        {                                       \
            a[i] = i + 2;                       \
        }                                       \
    }                                           \

#define FUNS10(number)  \
    FUNS(number##0)     \
    FUNS(number##1)     \
    FUNS(number##2)     \
    FUNS(number##3)     \
    FUNS(number##4)     \
    FUNS(number##5)     \
    FUNS(number##6)     \
    FUNS(number##7)     \
    FUNS(number##8)     \
    FUNS(number##9)

#define FUNS100(number)  \
    FUNS10(number##0)     \
    FUNS10(number##1)     \
    FUNS10(number##2)     \
    FUNS10(number##3)     \
    FUNS10(number##4)     \
    FUNS10(number##5)     \
    FUNS10(number##6)     \
    FUNS10(number##7)     \
    FUNS10(number##8)     \
    FUNS10(number##9)

#define FUNS1000(number)  \
    FUNS100(number##0)     \
    FUNS100(number##1)     \
    FUNS100(number##2)     \
    FUNS100(number##3)     \
    FUNS100(number##4)     \
    FUNS100(number##5)     \
    FUNS100(number##6)     \
    FUNS100(number##7)     \
    FUNS100(number##8)     \
    FUNS100(number##9)

#define FUNS10000(number)  \
    FUNS1000(number##0)     \
    FUNS1000(number##1)     \
    FUNS1000(number##2)     \
    FUNS1000(number##3)     \
    FUNS1000(number##4)     \
    FUNS1000(number##5)     \
    FUNS1000(number##6)     \
    FUNS1000(number##7)     \
    FUNS1000(number##8)     \
    FUNS1000(number##9)


#define CALLFUNS(name)      \
    name();

#define CALLFUNS10(name)   \
    CALLFUNS(name##0)        \
    CALLFUNS(name##1)        \
    CALLFUNS(name##2)        \
    CALLFUNS(name##3)        \
    CALLFUNS(name##4)        \
    CALLFUNS(name##5)        \
    CALLFUNS(name##6)        \
    CALLFUNS(name##7)        \
    CALLFUNS(name##8)        \
    CALLFUNS(name##9)
    
#define CALLFUNS100(name)   \
    CALLFUNS10(name##0)        \
    CALLFUNS10(name##1)        \
    CALLFUNS10(name##2)        \
    CALLFUNS10(name##3)        \
    CALLFUNS10(name##4)        \
    CALLFUNS10(name##5)        \
    CALLFUNS10(name##6)        \
    CALLFUNS10(name##7)        \
    CALLFUNS10(name##8)        \
    CALLFUNS10(name##9)
    
#define CALLFUNS1000(name)   \
    CALLFUNS100(name##0)        \
    CALLFUNS100(name##1)        \
    CALLFUNS100(name##2)        \
    CALLFUNS100(name##3)        \
    CALLFUNS100(name##4)

    
int n = 10;
int a[100];


FUNS1000(foo)
FUNS1000(foo1)
FUNS1000(foo2)
FUNS1000(foo3)
FUNS1000(foo4)
FUNS1000(foo5)
FUNS1000(foo6)


int main()
{
    THREAD_HANDLE threads[2];

    CreateOneThread(&threads[0], Waiter, 0);
    while (!waiterRunning)
    {
	  printf ("waiting for waiter\n");
	  fflush (stdout);
#if defined(TARGET_WINDOWS)
          Sleep(2);
#else
          sleep(2);
#endif
    }
    CreateOneThread(&threads[1], Generator, 0);

    JoinOneThread(threads[0]);
    JoinOneThread(threads[1]);
    return 0;
}

static void *Waiter(void *x)
{
    printf ("waiter created\n");
    fflush (stdout);
    waiterRunning = 1;
    ToolWait();
    return 0;
}




static void *Generator(void *x)
{
#if defined(TARGET_WINDOWS)
    Sleep(2);
#else
    sleep(2);
#endif
    
    CALLFUNS1000(foo);
	CALLFUNS1000(foo1);
	CALLFUNS1000(foo2);
	CALLFUNS1000(foo3);
	CALLFUNS1000(foo4);
	CALLFUNS1000(foo5);
	CALLFUNS1000(foo6);
	return 0;
}




#ifdef TARGET_WINDOWS
__declspec(dllexport)  
#else
extern "C"
#endif
void ToolWait()
{
    /* Pin tool adds analysis routine here  */
}

