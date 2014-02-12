/*NO LEGAL*/

#include <iostream>
#include <pthread.h>

extern "C" void BareExitGroup();
static void *Child(void *);


int main()
{
    pthread_t tid;
    if (pthread_create(&tid, 0, Child, 0) != 0)
    {
        std::cerr << "Unable to create thread\n";
        return 1;
    }

    for (;;);
    return 0;
}

static void *Child(void *)
{
    BareExitGroup();
    return 0;
}
