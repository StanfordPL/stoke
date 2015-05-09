  .text
  .globl pthread_mutexattr_settype
  .type pthread_mutexattr_settype, @function

#! file-offset 0x424a0
#! rip-offset  0x424a0
#! capacity    64 bytes

# Text                       #  Line  RIP      Bytes  
.pthread_mutexattr_settype:  #        0x424a0  0      
  cmpl $0x2, %esi            #  1     0x424a0  3      
  movl %edi, %edi            #  2     0x424a3  2      
  movl $0xffffffff, %eax     #  3     0x424a5  5      
  ja .L_424c0                #  4     0x424aa  6      
  movl %edi, %edi            #  5     0x424b0  2      
  movl %esi, (%r15,%rdi,1)   #  6     0x424b2  4      
  xorl %eax, %eax            #  7     0x424b6  2      
  nop                        #  8     0x424b8  1      
.L_424c0:                    #        0x424b9  0      
  popq %r11                  #  9     0x424b9  3      
  andl $0xffffffe0, %r11d    #  10    0x424bc  7      
  addq %r15, %r11            #  11    0x424c3  3      
  jmpq %r11                  #  12    0x424c6  3      
  nop                        #  13    0x424c9  1      
  nop                        #  14    0x424ca  1      
                                                      
.size pthread_mutexattr_settype, .-pthread_mutexattr_settype

