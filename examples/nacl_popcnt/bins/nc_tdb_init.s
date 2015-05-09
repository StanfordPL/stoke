  .text
  .globl nc_tdb_init
  .type nc_tdb_init, @function

#! file-offset 0x413e0
#! rip-offset  0x413e0
#! capacity    288 bytes

# Text                           #  Line  RIP      Bytes  
.nc_tdb_init:                    #        0x413e0  0      
  pushq %r12                     #  1     0x413e0  3      
  movl %esi, %r12d               #  2     0x413e3  3      
  xorl %esi, %esi                #  3     0x413e6  2      
  pushq %rbx                     #  4     0x413e8  2      
  movl %edi, %ebx                #  5     0x413ea  2      
  leal 0x8(%r12), %edi           #  6     0x413ec  5      
  subl $0x8, %esp                #  7     0x413f1  3      
  addq %r15, %rsp                #  8     0x413f4  3      
  movl %ebx, %ebx                #  9     0x413f7  2      
  movl %ebx, (%r15,%rbx,1)       #  10    0x413f9  4      
  nop                            #  11    0x413fd  1      
  movl %ebx, %ebx                #  12    0x413fe  2      
  movl $0x0, 0x1c(%r15,%rbx,1)   #  13    0x41400  9      
  movl %ebx, %ebx                #  14    0x41409  2      
  movl $0x0, 0x20(%r15,%rbx,1)   #  15    0x4140b  9      
  nop                            #  16    0x41414  1      
  movl %ebx, %ebx                #  17    0x41415  2      
  movl $0x1, 0x8(%r15,%rbx,1)    #  18    0x41417  9      
  movl %ebx, %ebx                #  19    0x41420  2      
  movl $0x0, 0xc(%r15,%rbx,1)    #  20    0x41422  9      
  nop                            #  21    0x4142b  1      
  movl %ebx, %ebx                #  22    0x4142c  2      
  movl $0x0, 0x10(%r15,%rbx,1)   #  23    0x4142e  9      
  movl %ebx, %ebx                #  24    0x41437  2      
  movl $0x0, 0x14(%r15,%rbx,1)   #  25    0x41439  9      
  nop                            #  26    0x41442  1      
  movl %ebx, %ebx                #  27    0x41443  2      
  movl $0x0, 0x18(%r15,%rbx,1)   #  28    0x41445  9      
  movl %ebx, %ebx                #  29    0x4144e  2      
  movl %r12d, 0x24(%r15,%rbx,1)  #  30    0x41450  5      
  movl %r12d, %r12d              #  31    0x41455  3      
  movl $0x0, (%r15,%r12,1)       #  32    0x41458  8      
  nop                            #  33    0x41460  1      
  movl %r12d, %r12d              #  34    0x41461  3      
  movl $0x0, 0x4(%r15,%r12,1)    #  35    0x41464  9      
  nop                            #  36    0x4146d  1      
  callq .pthread_cond_init       #  37    0x4146e  5      
  testl %eax, %eax               #  38    0x41473  2      
  jne .L_414e0                   #  39    0x41475  6      
  movl %r12d, %r12d              #  40    0x4147b  3      
  movl %ebx, 0x10(%r15,%r12,1)   #  41    0x4147e  5      
  addl $0x8, %esp                #  42    0x41483  3      
  addq %r15, %rsp                #  43    0x41486  3      
  popq %rbx                      #  44    0x41489  2      
  popq %r12                      #  45    0x4148b  3      
  popq %r11                      #  46    0x4148e  3      
  nop                            #  47    0x41491  1      
  andl $0xffffffe0, %r11d        #  48    0x41492  7      
  addq %r15, %r11                #  49    0x41499  3      
  jmpq %r11                      #  50    0x4149c  3      
  nop                            #  51    0x4149f  1      
  nop                            #  52    0x414a0  1      
.L_414e0:                        #        0x414a1  0      
  ud2                            #  53    0x414a1  2      
  nop                            #  54    0x414a3  1      
  nop                            #  55    0x414a4  1      
                                                          
.size nc_tdb_init, .-nc_tdb_init

