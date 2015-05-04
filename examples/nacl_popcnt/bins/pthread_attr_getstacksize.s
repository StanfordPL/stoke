  .text
  .globl pthread_attr_getstacksize
  .type pthread_attr_getstacksize, @function

#! file-offset 0x3ff00
#! rip-offset  0x3ff00
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  
.pthread_attr_getstacksize:    #        0x3ff00  0      
  movl %edi, %edi              #  1     0x3ff00  2      
  movl %esi, %esi              #  2     0x3ff02  2      
  movl $0x16, %eax             #  3     0x3ff04  5      
  testq %rdi, %rdi             #  4     0x3ff09  3      
  je .L_3ff20                  #  5     0x3ff0c  6      
  movl %edi, %edi              #  6     0x3ff12  2      
  movl 0x4(%r15,%rdi,1), %eax  #  7     0x3ff14  5      
  movl %esi, %esi              #  8     0x3ff19  2      
  movl %eax, (%r15,%rsi,1)     #  9     0x3ff1b  4      
  xorl %eax, %eax              #  10    0x3ff1f  2      
  nop                          #  11    0x3ff21  1      
.L_3ff20:                      #        0x3ff22  0      
  popq %r11                    #  12    0x3ff22  3      
  andl $0xffffffe0, %r11d      #  13    0x3ff25  7      
  addq %r15, %r11              #  14    0x3ff2c  3      
  jmpq %r11                    #  15    0x3ff2f  3      
  nop                          #  16    0x3ff32  1      
  nop                          #  17    0x3ff33  1      
                                                        
.size pthread_attr_getstacksize, .-pthread_attr_getstacksize

