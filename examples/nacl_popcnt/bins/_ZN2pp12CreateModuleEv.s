  .text
  .globl _ZN2pp12CreateModuleEv
  .type _ZN2pp12CreateModuleEv, @function

#! file-offset 0x202a0
#! rip-offset  0x202a0
#! capacity    160 bytes

# Text                             #  Line  RIP      Bytes  
._ZN2pp12CreateModuleEv:           #        0x202a0  0      
  pushq %rbx                       #  1     0x202a0  2      
  movl $0x40, %edi                 #  2     0x202a2  5      
  subl $0x10, %esp                 #  3     0x202a7  3      
  addq %r15, %rsp                  #  4     0x202aa  3      
  nop                              #  5     0x202ad  1      
  callq ._Znwj                     #  6     0x202ae  5      
  movl %eax, %ebx                  #  7     0x202b3  2      
  movl %ebx, %edi                  #  8     0x202b5  2      
  nop                              #  9     0x202b7  1      
  nop                              #  10    0x202b8  1      
  callq ._ZN2pp6ModuleC2Ev         #  11    0x202b9  5      
  movl %ebx, %ebx                  #  12    0x202be  2      
  movl $0x10020208, (%r15,%rbx,1)  #  13    0x202c0  8      
  movl %ebx, %eax                  #  14    0x202c8  2      
  addl $0x10, %esp                 #  15    0x202ca  3      
  addq %r15, %rsp                  #  16    0x202cd  3      
  popq %rbx                        #  17    0x202d0  2      
  popq %r11                        #  18    0x202d2  3      
  andl $0xffffffe0, %r11d          #  19    0x202d5  7      
  addq %r15, %r11                  #  20    0x202dc  3      
  jmpq %r11                        #  21    0x202df  3      
  nop                              #  22    0x202e2  1      
  movl %ebx, %edi                  #  23    0x202e3  2      
  movl %eax, 0x8(%rsp)             #  24    0x202e5  4      
  nop                              #  25    0x202e9  1      
  nop                              #  26    0x202ea  1      
  callq ._ZdlPv                    #  27    0x202eb  5      
  movl 0x8(%rsp), %eax             #  28    0x202f0  4      
  movl %eax, %edi                  #  29    0x202f4  2      
  nop                              #  30    0x202f6  1      
  nop                              #  31    0x202f7  1      
  callq ._Unwind_Resume            #  32    0x202f8  5      
                                                            
.size _ZN2pp12CreateModuleEv, .-_ZN2pp12CreateModuleEv

