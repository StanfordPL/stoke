  .text
  .globl _ZN19HelloTutorialModule14CreateInstanceEi
  .type _ZN19HelloTutorialModule14CreateInstanceEi, @function

#! file-offset 0x202e0
#! rip-offset  0x202e0
#! capacity    192 bytes

# Text                                        #  Line  RIP      Bytes  
._ZN19HelloTutorialModule14CreateInstanceEi:  #        0x202e0  0      
  movq %rbx, -0x10(%rsp)                      #  1     0x202e0  5      
  movq %r12, -0x8(%rsp)                       #  2     0x202e5  5      
  movl $0x20, %edi                            #  3     0x202ea  5      
  subl $0x18, %esp                            #  4     0x202ef  3      
  addq %r15, %rsp                             #  5     0x202f2  3      
  movl %esi, %r12d                            #  6     0x202f5  3      
  nop                                         #  7     0x202f8  1      
  callq ._Znwj                                #  8     0x202f9  5      
  movl %eax, %ebx                             #  9     0x202fe  2      
  movl %r12d, %esi                            #  10    0x20300  3      
  movl %ebx, %edi                             #  11    0x20303  2      
  nop                                         #  12    0x20305  1      
  nop                                         #  13    0x20306  1      
  callq ._ZN2pp8InstanceC2Ei                  #  14    0x20307  5      
  movl %ebx, %ebx                             #  15    0x2030c  2      
  movl $0x10020268, (%r15,%rbx,1)             #  16    0x2030e  8      
  movl %ebx, %eax                             #  17    0x20316  2      
  movq 0x10(%rsp), %r12                       #  18    0x20318  5      
  movq 0x8(%rsp), %rbx                        #  19    0x2031d  5      
  addl $0x18, %esp                            #  20    0x20322  3      
  addq %r15, %rsp                             #  21    0x20325  3      
  popq %r11                                   #  22    0x20328  3      
  xchgw %ax, %ax                              #  23    0x2032b  3      
  andl $0xffffffe0, %r11d                     #  24    0x2032e  7      
  addq %r15, %r11                             #  25    0x20335  3      
  jmpq %r11                                   #  26    0x20338  3      
  nop                                         #  27    0x2033b  1      
  nop                                         #  28    0x2033c  1      
  movl %eax, %r12d                            #  29    0x2033d  3      
  movl %ebx, %edi                             #  30    0x20340  2      
  nop                                         #  31    0x20342  1      
  nop                                         #  32    0x20343  1      
  callq ._ZdlPv                               #  33    0x20344  5      
  movl %r12d, %edi                            #  34    0x20349  3      
  nop                                         #  35    0x2034c  1      
  nop                                         #  36    0x2034d  1      
  callq ._Unwind_Resume                       #  37    0x2034e  5      
                                                                       
.size _ZN19HelloTutorialModule14CreateInstanceEi, .-_ZN19HelloTutorialModule14CreateInstanceEi

