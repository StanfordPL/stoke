  .text
  .globl nc_tdb_init
  .type nc_tdb_init, @function

#! file-offset 0x41400
#! rip-offset  0x41400
#! capacity    288 bytes

# Text                           #  Line  RIP      Bytes  
.nc_tdb_init:                    #        0x41400  0      
  pushq %r12                     #  1     0x41400  3      
  movl %esi, %r12d               #  2     0x41403  3      
  xorl %esi, %esi                #  3     0x41406  2      
  pushq %rbx                     #  4     0x41408  2      
  movl %edi, %ebx                #  5     0x4140a  2      
  leal 0x8(%r12), %edi           #  6     0x4140c  5      
  subl $0x8, %esp                #  7     0x41411  3      
  addq %r15, %rsp                #  8     0x41414  3      
  movl %ebx, %ebx                #  9     0x41417  2      
  movl %ebx, (%r15,%rbx,1)       #  10    0x41419  4      
  nop                            #  11    0x4141d  1      
  movl %ebx, %ebx                #  12    0x4141e  2      
  movl $0x0, 0x1c(%r15,%rbx,1)   #  13    0x41420  9      
  movl %ebx, %ebx                #  14    0x41429  2      
  movl $0x0, 0x20(%r15,%rbx,1)   #  15    0x4142b  9      
  nop                            #  16    0x41434  1      
  movl %ebx, %ebx                #  17    0x41435  2      
  movl $0x1, 0x8(%r15,%rbx,1)    #  18    0x41437  9      
  movl %ebx, %ebx                #  19    0x41440  2      
  movl $0x0, 0xc(%r15,%rbx,1)    #  20    0x41442  9      
  nop                            #  21    0x4144b  1      
  movl %ebx, %ebx                #  22    0x4144c  2      
  movl $0x0, 0x10(%r15,%rbx,1)   #  23    0x4144e  9      
  movl %ebx, %ebx                #  24    0x41457  2      
  movl $0x0, 0x14(%r15,%rbx,1)   #  25    0x41459  9      
  nop                            #  26    0x41462  1      
  movl %ebx, %ebx                #  27    0x41463  2      
  movl $0x0, 0x18(%r15,%rbx,1)   #  28    0x41465  9      
  movl %ebx, %ebx                #  29    0x4146e  2      
  movl %r12d, 0x24(%r15,%rbx,1)  #  30    0x41470  5      
  movl %r12d, %r12d              #  31    0x41475  3      
  movl $0x0, (%r15,%r12,1)       #  32    0x41478  8      
  nop                            #  33    0x41480  1      
  movl %r12d, %r12d              #  34    0x41481  3      
  movl $0x0, 0x4(%r15,%r12,1)    #  35    0x41484  9      
  nop                            #  36    0x4148d  1      
  callq .pthread_cond_init       #  37    0x4148e  5      
  testl %eax, %eax               #  38    0x41493  2      
  jne .L_41500                   #  39    0x41495  6      
  movl %r12d, %r12d              #  40    0x4149b  3      
  movl %ebx, 0x10(%r15,%r12,1)   #  41    0x4149e  5      
  addl $0x8, %esp                #  42    0x414a3  3      
  addq %r15, %rsp                #  43    0x414a6  3      
  popq %rbx                      #  44    0x414a9  2      
  popq %r12                      #  45    0x414ab  3      
  popq %r11                      #  46    0x414ae  3      
  nop                            #  47    0x414b1  1      
  andl $0xffffffe0, %r11d        #  48    0x414b2  7      
  addq %r15, %r11                #  49    0x414b9  3      
  jmpq %r11                      #  50    0x414bc  3      
  nop                            #  51    0x414bf  1      
  nop                            #  52    0x414c0  1      
.L_41500:                        #        0x414c1  0      
  ud2                            #  53    0x414c1  2      
  nop                            #  54    0x414c3  1      
  nop                            #  55    0x414c4  1      
                                                          
.size nc_tdb_init, .-nc_tdb_init

