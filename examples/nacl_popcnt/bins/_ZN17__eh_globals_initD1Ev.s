  .text
  .globl _ZN17__eh_globals_initD1Ev
  .type _ZN17__eh_globals_initD1Ev, @function

#! file-offset 0x4ae80
#! rip-offset  0x4ae80
#! capacity    128 bytes

# Text                         #  Line  RIP      Bytes  
._ZN17__eh_globals_initD1Ev:   #        0x4ae80  0      
  pushq %rbx                   #  1     0x4ae80  2      
  movl %edi, %ebx              #  2     0x4ae82  2      
  movl %ebx, %ebx              #  3     0x4ae84  2      
  cmpb $0x0, 0x4(%r15,%rbx,1)  #  4     0x4ae86  6      
  jne .L_4aec0                 #  5     0x4ae8c  6      
  movl %ebx, %ebx              #  6     0x4ae92  2      
  movb $0x0, 0x4(%r15,%rbx,1)  #  7     0x4ae94  6      
  popq %rbx                    #  8     0x4ae9a  2      
  popq %r11                    #  9     0x4ae9c  3      
  nop                          #  10    0x4ae9f  1      
  andl $0xffffffe0, %r11d      #  11    0x4aea0  7      
  addq %r15, %r11              #  12    0x4aea7  3      
  jmpq %r11                    #  13    0x4aeaa  3      
  nop                          #  14    0x4aead  1      
  nop                          #  15    0x4aeae  1      
.L_4aec0:                      #        0x4aeaf  0      
  movl %ebx, %ebx              #  16    0x4aeaf  2      
  movl (%r15,%rbx,1), %edi     #  17    0x4aeb1  4      
  nop                          #  18    0x4aeb5  1      
  nop                          #  19    0x4aeb6  1      
  callq .pthread_key_delete    #  20    0x4aeb7  5      
  movl %ebx, %ebx              #  21    0x4aebc  2      
  movb $0x0, 0x4(%r15,%rbx,1)  #  22    0x4aebe  6      
  popq %rbx                    #  23    0x4aec4  2      
  popq %r11                    #  24    0x4aec6  3      
  andl $0xffffffe0, %r11d      #  25    0x4aec9  7      
  addq %r15, %r11              #  26    0x4aed0  3      
  jmpq %r11                    #  27    0x4aed3  3      
  nop                          #  28    0x4aed6  1      
  nop                          #  29    0x4aed7  1      
  nop                          #  30    0x4aed8  1      
  nop                          #  31    0x4aed9  1      
  nop                          #  32    0x4aeda  1      
  nop                          #  33    0x4aedb  1      
  nop                          #  34    0x4aedc  1      
  nop                          #  35    0x4aedd  1      
  nop                          #  36    0x4aede  1      
  nop                          #  37    0x4aedf  1      
  nop                          #  38    0x4aee0  1      
                                                        
.size _ZN17__eh_globals_initD1Ev, .-_ZN17__eh_globals_initD1Ev

