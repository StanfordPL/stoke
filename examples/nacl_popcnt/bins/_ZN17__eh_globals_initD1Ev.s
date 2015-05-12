  .text
  .globl _ZN17__eh_globals_initD1Ev
  .type _ZN17__eh_globals_initD1Ev, @function

#! file-offset 0x4aea0
#! rip-offset  0x4aea0
#! capacity    128 bytes

# Text                         #  Line  RIP      Bytes  
._ZN17__eh_globals_initD1Ev:   #        0x4aea0  0      
  pushq %rbx                   #  1     0x4aea0  2      
  movl %edi, %ebx              #  2     0x4aea2  2      
  movl %ebx, %ebx              #  3     0x4aea4  2      
  cmpb $0x0, 0x4(%r15,%rbx,1)  #  4     0x4aea6  6      
  jne .L_4aee0                 #  5     0x4aeac  6      
  movl %ebx, %ebx              #  6     0x4aeb2  2      
  movb $0x0, 0x4(%r15,%rbx,1)  #  7     0x4aeb4  6      
  popq %rbx                    #  8     0x4aeba  2      
  popq %r11                    #  9     0x4aebc  3      
  nop                          #  10    0x4aebf  1      
  andl $0xffffffe0, %r11d      #  11    0x4aec0  7      
  addq %r15, %r11              #  12    0x4aec7  3      
  jmpq %r11                    #  13    0x4aeca  3      
  nop                          #  14    0x4aecd  1      
  nop                          #  15    0x4aece  1      
.L_4aee0:                      #        0x4aecf  0      
  movl %ebx, %ebx              #  16    0x4aecf  2      
  movl (%r15,%rbx,1), %edi     #  17    0x4aed1  4      
  nop                          #  18    0x4aed5  1      
  nop                          #  19    0x4aed6  1      
  callq .pthread_key_delete    #  20    0x4aed7  5      
  movl %ebx, %ebx              #  21    0x4aedc  2      
  movb $0x0, 0x4(%r15,%rbx,1)  #  22    0x4aede  6      
  popq %rbx                    #  23    0x4aee4  2      
  popq %r11                    #  24    0x4aee6  3      
  andl $0xffffffe0, %r11d      #  25    0x4aee9  7      
  addq %r15, %r11              #  26    0x4aef0  3      
  jmpq %r11                    #  27    0x4aef3  3      
  nop                          #  28    0x4aef6  1      
  nop                          #  29    0x4aef7  1      
  nop                          #  30    0x4aef8  1      
  nop                          #  31    0x4aef9  1      
  nop                          #  32    0x4aefa  1      
  nop                          #  33    0x4aefb  1      
  nop                          #  34    0x4aefc  1      
  nop                          #  35    0x4aefd  1      
  nop                          #  36    0x4aefe  1      
  nop                          #  37    0x4aeff  1      
  nop                          #  38    0x4af00  1      
                                                        
.size _ZN17__eh_globals_initD1Ev, .-_ZN17__eh_globals_initD1Ev

