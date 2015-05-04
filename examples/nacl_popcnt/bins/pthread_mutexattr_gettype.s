  .text
  .globl pthread_mutexattr_gettype
  .type pthread_mutexattr_gettype, @function

#! file-offset 0x42580
#! rip-offset  0x42580
#! capacity    32 bytes

# Text                       #  Line  RIP      Bytes  
.pthread_mutexattr_gettype:  #        0x42580  0      
  movl %edi, %edi            #  1     0x42580  2      
  movl %esi, %esi            #  2     0x42582  2      
  popq %r11                  #  3     0x42584  3      
  movl %edi, %edi            #  4     0x42587  2      
  movl (%r15,%rdi,1), %eax   #  5     0x42589  4      
  movl %esi, %esi            #  6     0x4258d  2      
  movl %eax, (%r15,%rsi,1)   #  7     0x4258f  4      
  xorl %eax, %eax            #  8     0x42593  2      
  andl $0xffffffe0, %r11d    #  9     0x42595  7      
  addq %r15, %r11            #  10    0x4259c  3      
  jmpq %r11                  #  11    0x4259f  3      
  xchgw %ax, %ax             #  12    0x425a2  3      
                                                      
.size pthread_mutexattr_gettype, .-pthread_mutexattr_gettype

