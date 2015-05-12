  .text
  .globl _ZN2pp8Instance13DidChangeViewERKNS_4ViewE
  .type _ZN2pp8Instance13DidChangeViewERKNS_4ViewE, @function

#! file-offset 0x20b00
#! rip-offset  0x20b00
#! capacity    288 bytes

# Text                                        #  Line  RIP      Bytes  
._ZN2pp8Instance13DidChangeViewERKNS_4ViewE:  #        0x20b00  0      
  movq %rbx, -0x20(%rsp)                      #  1     0x20b00  5      
  movl %edi, %ebx                             #  2     0x20b05  2      
  movq %r12, -0x18(%rsp)                      #  3     0x20b07  5      
  movq %r13, -0x10(%rsp)                      #  4     0x20b0c  5      
  movq %r14, -0x8(%rsp)                       #  5     0x20b11  5      
  subl $0x58, %esp                            #  6     0x20b16  3      
  addq %r15, %rsp                             #  7     0x20b19  3      
  nop                                         #  8     0x20b1c  1      
  movl %ebx, %ebx                             #  9     0x20b1d  2      
  movl (%r15,%rbx,1), %edx                    #  10    0x20b1f  4      
  leal 0x10(%rsp), %r12d                      #  11    0x20b23  5      
  movl %esi, %eax                             #  12    0x20b28  2      
  movl %eax, %esi                             #  13    0x20b2a  2      
  movq %rax, 0x8(%rsp)                        #  14    0x20b2c  5      
  leal 0x20(%rsp), %r13d                      #  15    0x20b31  5      
  movl %r12d, %edi                            #  16    0x20b36  3      
  nop                                         #  17    0x20b39  1      
  movl %edx, %edx                             #  18    0x20b3a  2      
  movl 0x10(%r15,%rdx,1), %r14d               #  19    0x20b3c  5      
  nop                                         #  20    0x20b41  1      
  nop                                         #  21    0x20b42  1      
  callq ._ZNK2pp4View11GetClipRectEv          #  22    0x20b43  5      
  movq 0x8(%rsp), %rax                        #  23    0x20b48  5      
  movl %r13d, %edi                            #  24    0x20b4d  3      
  movl %eax, %esi                             #  25    0x20b50  2      
  xchgw %ax, %ax                              #  26    0x20b52  3      
  nop                                         #  27    0x20b55  1      
  callq ._ZNK2pp4View7GetRectEv               #  28    0x20b56  5      
  movl %r12d, %edx                            #  29    0x20b5b  3      
  movl %r13d, %esi                            #  30    0x20b5e  3      
  movl %ebx, %edi                             #  31    0x20b61  2      
  nop                                         #  32    0x20b63  1      
  andl $0xffffffe0, %r14d                     #  33    0x20b64  7      
  addq %r15, %r14                             #  34    0x20b6b  3      
  callq %r14                                  #  35    0x20b6e  3      
  movq 0x38(%rsp), %rbx                       #  36    0x20b71  5      
  movq 0x40(%rsp), %r12                       #  37    0x20b76  5      
  movq 0x48(%rsp), %r13                       #  38    0x20b7b  5      
  movq 0x50(%rsp), %r14                       #  39    0x20b80  5      
  addl $0x58, %esp                            #  40    0x20b85  3      
  addq %r15, %rsp                             #  41    0x20b88  3      
  popq %r11                                   #  42    0x20b8b  3      
  nop                                         #  43    0x20b8e  1      
  andl $0xffffffe0, %r11d                     #  44    0x20b8f  7      
  addq %r15, %r11                             #  45    0x20b96  3      
  jmpq %r11                                   #  46    0x20b99  3      
  nop                                         #  47    0x20b9c  1      
  nop                                         #  48    0x20b9d  1      
.L_20be0:                                     #        0x20b9e  0      
  movl %eax, %edi                             #  49    0x20b9e  2      
  nop                                         #  50    0x20ba0  1      
  nop                                         #  51    0x20ba1  1      
  callq ._Unwind_Resume                       #  52    0x20ba2  5      
  jmpq .L_20be0                               #  53    0x20ba7  5      
  nop                                         #  54    0x20bac  1      
  nop                                         #  55    0x20bad  1      
                                                                       
.size _ZN2pp8Instance13DidChangeViewERKNS_4ViewE, .-_ZN2pp8Instance13DidChangeViewERKNS_4ViewE

