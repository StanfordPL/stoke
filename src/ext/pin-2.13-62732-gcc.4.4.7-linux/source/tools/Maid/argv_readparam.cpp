/*BEGIN_LEGAL 
Intel Open Source License 

Copyright (c) 2002-2013 Intel Corporation. All rights reserved.
 
Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are
met:

Redistributions of source code must retain the above copyright notice,
this list of conditions and the following disclaimer.  Redistributions
in binary form must reproduce the above copyright notice, this list of
conditions and the following disclaimer in the documentation and/or
other materials provided with the distribution.  Neither the name of
the Intel Corporation nor the names of its contributors may be used to
endorse or promote products derived from this software without
specific prior written permission.
 
THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
``AS IS'' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE INTEL OR
ITS CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
END_LEGAL */
#include <malloc.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "argv_readparam.h"

/*
 * Example: tar -xzvf foo.tar.gz foo/
 * Rules: * Must begin with -
 *        * One or more options is ok.  (i.e. -x -z == -xz)
 *
 */
int 
argv_hasFlag(int argc, char *argv[], char param)
{
  int i;

  if( argc == 0
      || argv == NULL ) {
    return 0;
  }

  for(i = 0; i < argc; i++) {
    if( strlen(argv[i]) >= 2
	&& argv[i][0] == '-'
	&& argv[i][1] != '-'
	&&  strchr(argv[i], param) ) {
      return 1;
    }
  }
  
  return 0;   
}

/*
 * Example: ./foo --verbose
 * Rules: * Must begin with --
 *        * Only one option per --
 * 
 */
int 
argv_hasLongFlag(int argc, char *argv[], char *param)
{
  int i;

  if( argc == 0
      || argv == NULL
      || param == NULL ) {
    return 0;
  }

  for( i = 0; i < argc; i++ ) {
    if( strcmp(param, argv[i]) == 0 ) {
      return 1;      
    }
  }
  
  return 0;
}

/*
 * Examples: ./foo -b=5
 *           ./foo --bar=5
 *           ./foo -D7
 *           ./foo foo=7
 * 
 */
int 
argv_getInt(int argc, char *argv[], char *param, int *ret)
{
  int i;
  int fmt_len;
  char *fmt;
  
  if( argc == 0
      || argv == NULL 
      || param == NULL
      || ret == NULL ) {
    return 0;
  }
  
  fmt_len = strlen(param) + 2;
  if( !(fmt = (char*)malloc(fmt_len)) ) {
    perror("argv_getInt");
    return 0;
  }
  
  if( strcpy(fmt, param) == NULL ) {
    perror("argv_getInt");
    return 0;
  }
  
  fmt[fmt_len - 2] = '%';
  fmt[fmt_len - 1] = 'd';  
  
  for( i = argc - 1; i >= 0; i-- ) {
    if( sscanf(argv[i], fmt, ret) > 0 ) {
      return 1;
    }
  }
  
  free(fmt);
  return 0;    
}

/*
 * Examples: ./foo -b=5
 *           ./foo --bar=5
 *           ./foo -D7
 *           ./foo foo=7
 * 
 */
int 
argv_getLong(int argc, char** argv, char *param, long *ret)
{
  int i;
  int fmt_len;
  char *fmt;

  if( argc == 0
      || argv == NULL 
      || param == NULL
      || ret == NULL ) {
    return 0;
  }
  
  fmt_len = strlen(param) + 3;
  if( !(fmt = (char*)malloc(sizeof(char) * fmt_len)) ) {
    perror("argv_getLong");
    return 0;
  }
  
  if( strcpy(fmt, param) == NULL ) {
    perror("argv_getLong");
    return 0;
  }

  fmt[fmt_len - 3] = '%';
  fmt[fmt_len - 2] = 'l';
  fmt[fmt_len - 1] = 'd';  

  for( i = argc - 1; i >= 0; i-- ) {
    if( sscanf(argv[i], fmt, ret) > 0 ) {
      return 1;
    }
  }
  
  free(fmt);
  return 0;
}


/*
 * Examples: ./foo -b=foo
 *           ./foo --bar=baz
 *           ./foo -DHAVE_CONFIG
 *           ./foo foo=5
 *           ./foo --name="Tipp Moseley"
 * 
 */
char *
argv_getString(int argc, char * argv[], char const * param, char **mem)
{
  int i;
  int paramlen;
  char * ret;

  if( argc == 0
      || argv == NULL 
      || param == NULL 
      || (mem != NULL && *mem == NULL) ) {
    return NULL;
  }
  
  if( (paramlen = strlen(param)) <= 0 ) {
    return NULL;
  }

  for( i = argc - 1; i >= 0; i-- ) {
    if( strncmp(param, argv[i], paramlen) == 0 ) {
      if( mem == NULL ) {
	ret = (char*)malloc(sizeof(char) * (strlen(argv[i]) - paramlen + 1));
	if( ret == NULL ) {
	  perror("argv_getString");
	  return NULL;
	}
      } else {
	ret = *mem;
      }
      
      if( argv[i][paramlen] == '"'
	  && argv[i][strlen(argv[i]) - 1] == '"' ) {
	return strncpy(ret, &argv[i][paramlen + 1], 
		       strlen(argv[i]) - paramlen - 2);
      } else {
	return strcpy(ret, &argv[i][paramlen]);
      }
    }
  }
  
  return NULL;
}

/*
int main(int argc, char **argv) 
{
#define argc1 6
  int iret;
  long lret;
  char *cret;

  char *argv1[argc1+1] = {
    "--foo",
    "-f",
    "-DFOO",
    "--name=\"tipp moseley\"",
    "--empty=\"\"",
    "-N=42",
    NULL
  };

  if( !argv_hasLongFlag(argc1, argv1, "--foo") ) {
    printf("ERROR 1");
  }

  if( !argv_hasFlag(argc1, argv1, 'f') ) {
    printf("ERROR 2");
  }

  if( !argv_getInt(argc1, argv1, "-N=", &iret) ) {
    printf("ERROR 3");
  } else {
    printf("-N=%d\n", iret);
  }

  if( !argv_getLong(argc1, argv1, "-N=", &lret) ) {
    printf("ERROR 4");
  } else {
    printf("-N=%ld\n", lret);
  }
  
  if( !(cret = argv_getString(argc1, argv1, "-D", NULL)) ) {
    printf("ERROR 5");
  } else {
    printf("-D%s\n", cret);
  }

  if( !(cret = argv_getString(argc1, argv1, "--name=", NULL)) ) {
    printf("ERROR 6");
  } else {
    printf("--name=%s\n", cret);
  }

  if( !(cret = argv_getString(argc1, argv1, "--empty=", NULL)) ) {
    printf("ERROR 7");
  } else {
    printf("--empty=%s\n", cret);
  }
  
  return 0;
}
*/
