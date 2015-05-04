  .text
  .globl nc_tdb_init
  .type nc_tdb_init, @function

#! file-offset 0x41480
#! rip-offset  0x41480
#! capacity    288 bytes

# Text                           #  Line  RIP      Bytes  
.nc_tdb_init:                    #        0x41480  0      
  pushq %r12                     #  1     0x41480  3      
  movl %esi, %r12d               #  2     0x41483  3      
  xorl %esi, %esi                #  3     0x41486  2      
  pushq %rbx                     #  4     0x41488  2      
  movl %edi, %ebx                #  5     0x4148a  2      
  leal 0x8(%r12), %edi           #  6     0x4148c  5      
  subl $0x8, %esp                #  7     0x41491  3      
  addq %r15, %rsp                #  8     0x41494  3      
  movl %ebx, %ebx                #  9     0x41497  2      
  movl %ebx, (%r15,%rbx,1)       #  10    0x41499  4      
  nop                            #  11    0x4149d  1      
  movl %ebx, %ebx                #  12    0x4149e  2      
  movl $0x0, 0x1c(%r15,%rbx,1)   #  13    0x414a0  9      
  movl %ebx, %ebx                #  14    0x414a9  2      
  movl $0x0, 0x20(%r15,%rbx,1)   #  15    0x414ab  9      
  nop                            #  16    0x414b4  1      
  movl %ebx, %ebx                #  17    0x414b5  2      
  movl $0x1, 0x8(%r15,%rbx,1)    #  18    0x414b7  9      
  movl %ebx, %ebx                #  19    0x414c0  2      
  movl $0x0, 0xc(%r15,%rbx,1)    #  20    0x414c2  9      
  nop                            #  21    0x414cb  1      
  movl %ebx, %ebx                #  22    0x414cc  2      
  movl $0x0, 0x10(%r15,%rbx,1)   #  23    0x414ce  9      
  movl %ebx, %ebx                #  24    0x414d7  2      
  movl $0x0, 0x14(%r15,%rbx,1)   #  25    0x414d9  9      
  nop                            #  26    0x414e2  1      
  movl %ebx, %ebx                #  27    0x414e3  2      
  movl $0x0, 0x18(%r15,%rbx,1)   #  28    0x414e5  9      
  movl %ebx, %ebx                #  29    0x414ee  2      
  movl %r12d, 0x24(%r15,%rbx,1)  #  30    0x414f0  5      
  movl %r12d, %r12d              #  31    0x414f5  3      
  movl $0x0, (%r15,%r12,1)       #  32    0x414f8  8      
  nop                            #  33    0x41500  1      
  movl %r12d, %r12d              #  34    0x41501  3      
  movl $0x0, 0x4(%r15,%r12,1)    #  35    0x41504  9      
  nop                            #  36    0x4150d  1      
  callq .pthread_cond_init       #  37    0x4150e  5      
  testl %eax, %eax               #  38    0x41513  2      
  jne .L_41580                   #  39    0x41515  6      
  movl %r12d, %r12d              #  40    0x4151b  3      
  movl %ebx, 0x10(%r15,%r12,1)   #  41    0x4151e  5      
  addl $0x8, %esp                #  42    0x41523  3      
  addq %r15, %rsp                #  43    0x41526  3      
  popq %rbx                      #  44    0x41529  2      
  popq %r12                      #  45    0x4152b  3      
  popq %r11                      #  46    0x4152e  3      
  nop                            #  47    0x41531  1      
  andl $0xffffffe0, %r11d        #  48    0x41532  7      
  addq %r15, %r11                #  49    0x41539  3      
  jmpq %r11                      #  50    0x4153c  3      
  nop                            #  51    0x4153f  1      
  nop                            #  52    0x41540  1      
.L_41580:                        #        0x41541  0      
  ud2                            #  53    0x41541  2      
  nop                            #  54    0x41543  1      
  nop                            #  55    0x41544  1      
                                                          
.size nc_tdb_init, .-nc_tdb_init

