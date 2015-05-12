  .text
  .globl _ZNSsaSESt16initializer_listIcE
  .type _ZNSsaSESt16initializer_listIcE, @function

#! file-offset 0x493e0
#! rip-offset  0x493e0
#! capacity    96 bytes

# Text                             #  Line  RIP      Bytes  
._ZNSsaSESt16initializer_listIcE:  #        0x493e0  0      
  pushq %rbx                       #  1     0x493e0  2      
  movl %edi, %ebx                  #  2     0x493e2  2      
  movq %rsi, %r8                   #  3     0x493e4  3      
  movl %ebx, %ebx                  #  4     0x493e7  2      
  movl (%r15,%rbx,1), %eax         #  5     0x493e9  4      
  movl %esi, %ecx                  #  6     0x493ed  2      
  movl %ebx, %edi                  #  7     0x493ef  2      
  shrq $0x20, %r8                  #  8     0x493f1  4      
  xorl %esi, %esi                  #  9     0x493f5  2      
  subl $0xc, %eax                  #  10    0x493f7  3      
  movl %eax, %eax                  #  11    0x493fa  2      
  movl (%r15,%rax,1), %edx         #  12    0x493fc  4      
  nop                              #  13    0x49400  1      
  nop                              #  14    0x49401  1      
  nop                              #  15    0x49402  1      
  callq ._ZNSs7replaceEjjPKcj      #  16    0x49403  5      
  movl %ebx, %eax                  #  17    0x49408  2      
  popq %rbx                        #  18    0x4940a  2      
  popq %r11                        #  19    0x4940c  3      
  andl $0xffffffe0, %r11d          #  20    0x4940f  7      
  addq %r15, %r11                  #  21    0x49416  3      
  jmpq %r11                        #  22    0x49419  3      
  nop                              #  23    0x4941c  1      
  nop                              #  24    0x4941d  1      
  nop                              #  25    0x4941e  1      
  nop                              #  26    0x4941f  1      
  nop                              #  27    0x49420  1      
  nop                              #  28    0x49421  1      
  nop                              #  29    0x49422  1      
  nop                              #  30    0x49423  1      
  nop                              #  31    0x49424  1      
  nop                              #  32    0x49425  1      
  nop                              #  33    0x49426  1      
  nop                              #  34    0x49427  1      
  nop                              #  35    0x49428  1      
  nop                              #  36    0x49429  1      
  nop                              #  37    0x4942a  1      
  nop                              #  38    0x4942b  1      
  nop                              #  39    0x4942c  1      
                                                            
.size _ZNSsaSESt16initializer_listIcE, .-_ZNSsaSESt16initializer_listIcE

