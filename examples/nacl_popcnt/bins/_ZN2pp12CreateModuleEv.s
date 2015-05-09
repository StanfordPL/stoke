  .text
  .globl _ZN2pp12CreateModuleEv
  .type _ZN2pp12CreateModuleEv, @function

#! file-offset 0x20240
#! rip-offset  0x20240
#! capacity    160 bytes

# Text                             #  Line  RIP      Bytes  
._ZN2pp12CreateModuleEv:           #        0x20240  0      
  pushq %rbx                       #  1     0x20240  2      
  movl $0x40, %edi                 #  2     0x20242  5      
  subl $0x10, %esp                 #  3     0x20247  3      
  addq %r15, %rsp                  #  4     0x2024a  3      
  nop                              #  5     0x2024d  1      
  callq ._Znwj                     #  6     0x2024e  5      
  movl %eax, %ebx                  #  7     0x20253  2      
  movl %ebx, %edi                  #  8     0x20255  2      
  nop                              #  9     0x20257  1      
  nop                              #  10    0x20258  1      
  callq ._ZN2pp6ModuleC2Ev         #  11    0x20259  5      
  movl %ebx, %ebx                  #  12    0x2025e  2      
  movl $0x10020208, (%r15,%rbx,1)  #  13    0x20260  8      
  movl %ebx, %eax                  #  14    0x20268  2      
  addl $0x10, %esp                 #  15    0x2026a  3      
  addq %r15, %rsp                  #  16    0x2026d  3      
  popq %rbx                        #  17    0x20270  2      
  popq %r11                        #  18    0x20272  3      
  andl $0xffffffe0, %r11d          #  19    0x20275  7      
  addq %r15, %r11                  #  20    0x2027c  3      
  jmpq %r11                        #  21    0x2027f  3      
  nop                              #  22    0x20282  1      
  movl %ebx, %edi                  #  23    0x20283  2      
  movl %eax, 0x8(%rsp)             #  24    0x20285  4      
  nop                              #  25    0x20289  1      
  nop                              #  26    0x2028a  1      
  callq ._ZdlPv                    #  27    0x2028b  5      
  movl 0x8(%rsp), %eax             #  28    0x20290  4      
  movl %eax, %edi                  #  29    0x20294  2      
  nop                              #  30    0x20296  1      
  nop                              #  31    0x20297  1      
  callq ._Unwind_Resume            #  32    0x20298  5      
                                                            
.size _ZN2pp12CreateModuleEv, .-_ZN2pp12CreateModuleEv

