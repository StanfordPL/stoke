  .text
  .globl _ZN2pp7FileRefC2Ei
  .type _ZN2pp7FileRefC2Ei, @function

#! file-offset 0x30a40
#! rip-offset  0x30a40
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  
._ZN2pp7FileRefC2Ei:               #        0x30a40  0      
  pushq %rbx                       #  1     0x30a40  2      
  movl %edi, %ebx                  #  2     0x30a42  2      
  movl %ebx, %edi                  #  3     0x30a44  2      
  nop                              #  4     0x30a46  1      
  nop                              #  5     0x30a47  1      
  callq ._ZN2pp8ResourceC2Ei       #  6     0x30a48  5      
  movl %ebx, %ebx                  #  7     0x30a4d  2      
  movl $0x100204e8, (%r15,%rbx,1)  #  8     0x30a4f  8      
  popq %rbx                        #  9     0x30a57  2      
  popq %r11                        #  10    0x30a59  3      
  andl $0xffffffe0, %r11d          #  11    0x30a5c  7      
  addq %r15, %r11                  #  12    0x30a63  3      
  jmpq %r11                        #  13    0x30a66  3      
  nop                              #  14    0x30a69  1      
  nop                              #  15    0x30a6a  1      
                                                            
.size _ZN2pp7FileRefC2Ei, .-_ZN2pp7FileRefC2Ei

