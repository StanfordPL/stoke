  .text
  .globl pthread_mutexattr_settype
  .type pthread_mutexattr_settype, @function

#! file-offset 0x42540
#! rip-offset  0x42540
#! capacity    64 bytes

# Text                       #  Line  RIP      Bytes  
.pthread_mutexattr_settype:  #        0x42540  0      
  cmpl $0x2, %esi            #  1     0x42540  3      
  movl %edi, %edi            #  2     0x42543  2      
  movl $0xffffffff, %eax     #  3     0x42545  5      
  ja .L_42560                #  4     0x4254a  6      
  movl %edi, %edi            #  5     0x42550  2      
  movl %esi, (%r15,%rdi,1)   #  6     0x42552  4      
  xorl %eax, %eax            #  7     0x42556  2      
  nop                        #  8     0x42558  1      
.L_42560:                    #        0x42559  0      
  popq %r11                  #  9     0x42559  3      
  andl $0xffffffe0, %r11d    #  10    0x4255c  7      
  addq %r15, %r11            #  11    0x42563  3      
  jmpq %r11                  #  12    0x42566  3      
  nop                        #  13    0x42569  1      
  nop                        #  14    0x4256a  1      
                                                      
.size pthread_mutexattr_settype, .-pthread_mutexattr_settype

