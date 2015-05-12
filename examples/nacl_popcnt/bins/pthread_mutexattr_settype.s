  .text
  .globl pthread_mutexattr_settype
  .type pthread_mutexattr_settype, @function

#! file-offset 0x424c0
#! rip-offset  0x424c0
#! capacity    64 bytes

# Text                       #  Line  RIP      Bytes  
.pthread_mutexattr_settype:  #        0x424c0  0      
  cmpl $0x2, %esi            #  1     0x424c0  3      
  movl %edi, %edi            #  2     0x424c3  2      
  movl $0xffffffff, %eax     #  3     0x424c5  5      
  ja .L_424e0                #  4     0x424ca  6      
  movl %edi, %edi            #  5     0x424d0  2      
  movl %esi, (%r15,%rdi,1)   #  6     0x424d2  4      
  xorl %eax, %eax            #  7     0x424d6  2      
  nop                        #  8     0x424d8  1      
.L_424e0:                    #        0x424d9  0      
  popq %r11                  #  9     0x424d9  3      
  andl $0xffffffe0, %r11d    #  10    0x424dc  7      
  addq %r15, %r11            #  11    0x424e3  3      
  jmpq %r11                  #  12    0x424e6  3      
  nop                        #  13    0x424e9  1      
  nop                        #  14    0x424ea  1      
                                                      
.size pthread_mutexattr_settype, .-pthread_mutexattr_settype

