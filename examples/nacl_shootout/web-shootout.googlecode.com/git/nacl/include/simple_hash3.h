/*
 * $Id: simple_hash3.h,v 1.1 2010/01/01 06:45:48 igouy-guest Exp $
 * simple hashtable map: Cstring -> Int
 *
 * 28-Dec-2009 changed by The Anh Tran: hashtable ui64 -> uint
 */
 
 #ifndef SIMPLE_HASH_H
 #define SIMPLE_HASH_H
 
#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
//#include <memory.h>
#include <stdint.h>

typedef unsigned int uint;
typedef uint64_t	ui64;

enum { ht_num_primes = 28 };

static 
unsigned long 
ht_prime_list[ht_num_primes] = 
{
    53ul,         97ul,         193ul,       389ul,       769ul,
    1543ul,       3079ul,       6151ul,      12289ul,     24593ul,
    49157ul,      98317ul,      196613ul,    393241ul,    786433ul,
    1572869ul,    3145739ul,    6291469ul,   12582917ul,  25165843ul,
    50331653ul,   100663319ul,  201326611ul, 402653189ul, 805306457ul, 
    1610612741ul, 3221225473ul, 4294967291ul
};

struct ht_node
{
    ui64			key;
    uint			val;
    struct ht_node	*next;
};

struct ht_ht
{
    int					size;
    struct ht_node **	tbl;
    int 				iter_index;
    struct ht_node *	iter_next;
    int 				items;
    
#ifdef HT_DEBUG
    int collisions;
#endif /* HT_DEBUG */
};


static inline 
int 
ht_hashcode(struct ht_ht *ht, ui64 key) 
{
	key = ((key ^ (key >> 5)) ^ 0x01010101);
	return (key % ht->size);
}

static
struct ht_node*
ht_node_create(ui64 key)
{
    struct ht_node *node;

    if ((node = (struct ht_node *)calloc(1, sizeof(struct ht_node))) == 0) 
    {
		perror("malloc ht_node");
		assert(0);
		exit(1);
    }

    node->key = key;
    return (node);
}

struct ht_ht *
ht_create(int size) 
{
    int i = 0;
    struct ht_ht *ht = (struct ht_ht *)calloc(1, sizeof(struct ht_ht));

    while (ht_prime_list[i] < (unsigned long)size) 
    	i++; 
    
    ht->size		= ht_prime_list[i];
    ht->tbl			= (struct ht_node **)calloc(ht->size, sizeof(struct ht_node *));
    
#ifdef HT_DEBUG
    ht->collisions = 0;
#endif /* HT_DEBUG */

    return (ht);
}

void 
ht_destroy(struct ht_ht *ht) 
{
    struct ht_node *cur, *next;
    int i;
    
#ifdef HT_DEBUG
    int chain_len;
    int max_chain_len = 0;
    int density = 0;
    fprintf(stderr, " HT: size            %d\n", ht->size);
    fprintf(stderr, " HT: items           %d\n", ht->items);
    fprintf(stderr, " HT: collisions      %d\n", ht->collisions);
#endif /* HT_DEBUG */

    for (i=0; i<ht->size; i++) 
    {
		next = ht->tbl[i];

#ifdef HT_DEBUG
		if (next) 
			density++;

		chain_len = 0;
#endif /* HT_DEBUG */

		while (next) 
		{
			cur = next;
			next = next->next;
			free(cur);
			
#ifdef HT_DEBUG
	    	chain_len++;
#endif /* HT_DEBUG */
		}
		
#ifdef HT_DEBUG
		if (chain_len > max_chain_len)
			max_chain_len = chain_len;
#endif /* HT_DEBUG */
    }
    
    free(ht->tbl);
    free(ht);
    
#ifdef HT_DEBUG
    fprintf(stderr, " HT: density         %d\n", density);
    fprintf(stderr, " HT: max chain len   %d\n\n", max_chain_len);
#endif /* HT_DEBUG */
}

inline static
struct ht_node *
ht_find(struct ht_ht *ht, ui64 key) 
{
    int hash_code = ht_hashcode(ht, key);
    struct ht_node *node = ht->tbl[hash_code];
    
    while (node) 
    {
		if (key == node->key) 
			return (node);
		node = node->next;
    }
    
    return ((struct ht_node *)NULL);
}

inline static
struct ht_node *
ht_find_new(struct ht_ht *ht, ui64 key) 
{
    int hash_code = ht_hashcode(ht, key);
    struct ht_node *prev = 0, *node = ht->tbl[hash_code];
    
    while (node) 
    {
		if (key == node->key)
			return(node);
		
		prev = node;
		node = node->next;
#ifdef HT_DEBUG
		ht->collisions++;
#endif /* HT_DEBUG */
	}
	
	ht->items++;
	if (prev) 
	{
		return (prev->next = ht_node_create(key));
	}
	else 
	{
		return(ht->tbl[hash_code] = ht_node_create(key));
    }
}

/*
 *  Hash Table iterator data/functions
 */
inline static
struct ht_node *
ht_next(struct ht_ht *ht) 
{
    unsigned long index;
    struct ht_node *node = ht->iter_next;

    if (node) 
    {
		ht->iter_next = node->next;
		return (node);
    } 
    else 
    {
		while (ht->iter_index < ht->size) 
		{
			index = ht->iter_index++;
			if (ht->tbl[index]) 
			{
				ht->iter_next = ht->tbl[index]->next;
				return(ht->tbl[index]);
			}
		}
	}
	
    return ((struct ht_node *)NULL);
}

inline static 
struct ht_node *
ht_first(struct ht_ht *ht) 
{
    ht->iter_index = 0;
    ht->iter_next = (struct ht_node *)NULL;
    return (ht_next(ht));
}

inline 
int 
ht_count(struct ht_ht *ht) 
{
    return (ht->items);
}

#endif

