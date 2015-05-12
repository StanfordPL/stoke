  .text
  .globl _ZN2pp10InputEventD0Ev
  .type _ZN2pp10InputEventD0Ev, @function

#! file-offset 0x36080
#! rip-offset  0x36080
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  
._ZN2pp10InputEventD0Ev:           #        0x36080  0      
  pushq %rbx                       #  1     0x36080  2      
  movl %edi, %ebx                  #  2     0x36082  2      
  movl %ebx, %edi                  #  3     0x36084  2      
  movl %ebx, %ebx                  #  4     0x36086  2      
  movl $0x10020718, (%r15,%rbx,1)  #  5     0x36088  8      
  nop                              #  6     0x36090  1      
  callq ._ZN2pp8ResourceD2Ev       #  7     0x36091  5      
  movl %ebx, %edi                  #  8     0x36096  2      
  popq %rbx                        #  9     0x36098  2      
  jmpq ._ZdlPv                     #  10    0x3609a  5      
  nop                              #  11    0x3609f  1      
  nop                              #  12    0x360a0  1      
                                                            
.size _ZN2pp10InputEventD0Ev, .-_ZN2pp10InputEventD0Ev

