/* The Computer Language Benchmarks Game
 * http://shootout.alioth.debian.org/
 *
 * contributed by Jon Harrop
 * modified by Alex Mizrahi
 * modified by Andreas Schäfer
 * very minor omp tweak by The Anh Tran
 */

#include <iostream>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
//#include <omp.h>

#include "boost/pool/object_pool.hpp"

#include "bench-framework.h"

const size_t	LINE_SIZE = 64;


struct Node 
{
    Node *l, *r;
    int i;
    
    Node(int i2) : l(0), r(0), i(i2) 
    {}
    Node(Node *l2, int i2, Node *r2) : l(l2), r(r2), i(i2) 
    {}

    int check() const 
    {
        if (l)
            return l->check() + i - r->check();
        else return i;
    }
};

typedef boost::object_pool<Node> NodePool;


Node *make(int i, int d, NodePool &store) 
{
    if (d > 0) 
	    return store.construct(	make(2*i-1, d-1, store), 
	    						i, 
	    						make(2*i, d-1, store)	);
   	return store.construct(i);
}

int GetThreadCount()
{
#ifdef __GLIBC__
	cpu_set_t cs;
	CPU_ZERO(&cs);
	sched_getaffinity(0, sizeof(cs), &cs);

	int count = 0;
	for (int i = 0; i < 8; i++)
	{
		if (CPU_ISSET(i, &cs))
			count++;
	}
	return count;
#else
        return 1;
#endif
}

int binarytrees(int depth_arg) 
{
    int min_depth = 4;
    int max_depth = depth_arg;
    int stretch_depth = max_depth+1;

    volatile int v; //keep the compiler from optimizing away

	// Alloc then dealloc stretchdepth tree
    {
        NodePool store;
        Node *c = make(0, stretch_depth, store);
        /*std::cout << "stretch tree of depth " << stretch_depth << "\t "
	  << "check: " << c->check() << std::endl;*/
	v = c->check();
    }

    NodePool long_lived_store;
    Node *long_lived_tree = make(0, max_depth, long_lived_store);

	// buffer to store output of each thread
	char *outputstr = (char*)malloc(LINE_SIZE * (max_depth +1) * sizeof(char));

	#pragma omp parallel for default(shared) num_threads(GetThreadCount()) schedule(dynamic, 1)
    for (int d = min_depth; d <= max_depth; d += 2) 
    {
        int iterations = 1 << (max_depth - d + min_depth);
        int c = 0;

        for (int i = 1; i <= iterations; ++i) 
        {
            NodePool store;
            Node *a = make(i, d, store), *b = make(-i, d, store);
            c += a->check() + b->check();
        }

		// each thread write to separate location
		sprintf(outputstr + LINE_SIZE * d, "%d\t trees of depth %d\t check: %d\n", (2 * iterations), d, c);
	}

	// print all results
	for (int d = min_depth; d <= max_depth; d += 2) 
	  v = strlen(outputstr);
	  //printf("%s", outputstr + (d * LINE_SIZE) );
	free(outputstr);

	/*std::cout << "long lived tree of depth " << max_depth << "\t "
	  << "check: " << (long_lived_tree->check()) << "\n";*/
	v = long_lived_tree->check();

    return 0;
}

extern "C"
int run_binarytrees(int n) {
  return binarytrees(n);
}

