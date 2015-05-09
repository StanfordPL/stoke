  .text
  .globl pthread_mutexattr_gettype
  .type pthread_mutexattr_gettype, @function

#! file-offset 0x424e0
#! rip-offset  0x424e0
#! capacity    32 bytes

# Text                       #  Line  RIP      Bytes  
.pthread_mutexattr_gettype:  #        0x424e0  0      
  movl %edi, %edi            #  1     0x424e0  2      
  movl %esi, %esi            #  2     0x424e2  2      
  popq %r11                  #  3     0x424e4  3      
  movl %edi, %edi            #  4     0x424e7  2      
  movl (%r15,%rdi,1), %eax   #  5     0x424e9  4      
  movl %esi, %esi            #  6     0x424ed  2      
  movl %eax, (%r15,%rsi,1)   #  7     0x424ef  4      
  xorl %eax, %eax            #  8     0x424f3  2      
  andl $0xffffffe0, %r11d    #  9     0x424f5  7      
  addq %r15, %r11            #  10    0x424fc  3      
  jmpq %r11                  #  11    0x424ff  3      
  xchgw %ax, %ax             #  12    0x42502  3      
                                                      
.size pthread_mutexattr_gettype, .-pthread_mutexattr_gettype

