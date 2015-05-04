  .text
  .globl _ZN19HelloTutorialModule14CreateInstanceEi
  .type _ZN19HelloTutorialModule14CreateInstanceEi, @function

#! file-offset 0x20340
#! rip-offset  0x20340
#! capacity    192 bytes

# Text                                        #  Line  RIP      Bytes  
._ZN19HelloTutorialModule14CreateInstanceEi:  #        0x20340  0      
  movq %rbx, -0x10(%rsp)                      #  1     0x20340  5      
  movq %r12, -0x8(%rsp)                       #  2     0x20345  5      
  movl $0x20, %edi                            #  3     0x2034a  5      
  subl $0x18, %esp                            #  4     0x2034f  3      
  addq %r15, %rsp                             #  5     0x20352  3      
  movl %esi, %r12d                            #  6     0x20355  3      
  nop                                         #  7     0x20358  1      
  callq ._Znwj                                #  8     0x20359  5      
  movl %eax, %ebx                             #  9     0x2035e  2      
  movl %r12d, %esi                            #  10    0x20360  3      
  movl %ebx, %edi                             #  11    0x20363  2      
  nop                                         #  12    0x20365  1      
  nop                                         #  13    0x20366  1      
  callq ._ZN2pp8InstanceC2Ei                  #  14    0x20367  5      
  movl %ebx, %ebx                             #  15    0x2036c  2      
  movl $0x10020268, (%r15,%rbx,1)             #  16    0x2036e  8      
  movl %ebx, %eax                             #  17    0x20376  2      
  movq 0x10(%rsp), %r12                       #  18    0x20378  5      
  movq 0x8(%rsp), %rbx                        #  19    0x2037d  5      
  addl $0x18, %esp                            #  20    0x20382  3      
  addq %r15, %rsp                             #  21    0x20385  3      
  popq %r11                                   #  22    0x20388  3      
  xchgw %ax, %ax                              #  23    0x2038b  3      
  andl $0xffffffe0, %r11d                     #  24    0x2038e  7      
  addq %r15, %r11                             #  25    0x20395  3      
  jmpq %r11                                   #  26    0x20398  3      
  nop                                         #  27    0x2039b  1      
  nop                                         #  28    0x2039c  1      
  movl %eax, %r12d                            #  29    0x2039d  3      
  movl %ebx, %edi                             #  30    0x203a0  2      
  nop                                         #  31    0x203a2  1      
  nop                                         #  32    0x203a3  1      
  callq ._ZdlPv                               #  33    0x203a4  5      
  movl %r12d, %edi                            #  34    0x203a9  3      
  nop                                         #  35    0x203ac  1      
  nop                                         #  36    0x203ad  1      
  callq ._Unwind_Resume                       #  37    0x203ae  5      
                                                                       
.size _ZN19HelloTutorialModule14CreateInstanceEi, .-_ZN19HelloTutorialModule14CreateInstanceEi

