  .text
  .globl _ZN2pp8Instance13DidChangeViewERKNS_4ViewE
  .type _ZN2pp8Instance13DidChangeViewERKNS_4ViewE, @function

#! file-offset 0x20ae0
#! rip-offset  0x20ae0
#! capacity    288 bytes

# Text                                        #  Line  RIP      Bytes  
._ZN2pp8Instance13DidChangeViewERKNS_4ViewE:  #        0x20ae0  0      
  movq %rbx, -0x20(%rsp)                      #  1     0x20ae0  5      
  movl %edi, %ebx                             #  2     0x20ae5  2      
  movq %r12, -0x18(%rsp)                      #  3     0x20ae7  5      
  movq %r13, -0x10(%rsp)                      #  4     0x20aec  5      
  movq %r14, -0x8(%rsp)                       #  5     0x20af1  5      
  subl $0x58, %esp                            #  6     0x20af6  3      
  addq %r15, %rsp                             #  7     0x20af9  3      
  nop                                         #  8     0x20afc  1      
  movl %ebx, %ebx                             #  9     0x20afd  2      
  movl (%r15,%rbx,1), %edx                    #  10    0x20aff  4      
  leal 0x10(%rsp), %r12d                      #  11    0x20b03  5      
  movl %esi, %eax                             #  12    0x20b08  2      
  movl %eax, %esi                             #  13    0x20b0a  2      
  movq %rax, 0x8(%rsp)                        #  14    0x20b0c  5      
  leal 0x20(%rsp), %r13d                      #  15    0x20b11  5      
  movl %r12d, %edi                            #  16    0x20b16  3      
  nop                                         #  17    0x20b19  1      
  movl %edx, %edx                             #  18    0x20b1a  2      
  movl 0x10(%r15,%rdx,1), %r14d               #  19    0x20b1c  5      
  nop                                         #  20    0x20b21  1      
  nop                                         #  21    0x20b22  1      
  callq ._ZNK2pp4View11GetClipRectEv          #  22    0x20b23  5      
  movq 0x8(%rsp), %rax                        #  23    0x20b28  5      
  movl %r13d, %edi                            #  24    0x20b2d  3      
  movl %eax, %esi                             #  25    0x20b30  2      
  xchgw %ax, %ax                              #  26    0x20b32  3      
  nop                                         #  27    0x20b35  1      
  callq ._ZNK2pp4View7GetRectEv               #  28    0x20b36  5      
  movl %r12d, %edx                            #  29    0x20b3b  3      
  movl %r13d, %esi                            #  30    0x20b3e  3      
  movl %ebx, %edi                             #  31    0x20b41  2      
  nop                                         #  32    0x20b43  1      
  andl $0xffffffe0, %r14d                     #  33    0x20b44  7      
  addq %r15, %r14                             #  34    0x20b4b  3      
  callq %r14                                  #  35    0x20b4e  3      
  movq 0x38(%rsp), %rbx                       #  36    0x20b51  5      
  movq 0x40(%rsp), %r12                       #  37    0x20b56  5      
  movq 0x48(%rsp), %r13                       #  38    0x20b5b  5      
  movq 0x50(%rsp), %r14                       #  39    0x20b60  5      
  addl $0x58, %esp                            #  40    0x20b65  3      
  addq %r15, %rsp                             #  41    0x20b68  3      
  popq %r11                                   #  42    0x20b6b  3      
  nop                                         #  43    0x20b6e  1      
  andl $0xffffffe0, %r11d                     #  44    0x20b6f  7      
  addq %r15, %r11                             #  45    0x20b76  3      
  jmpq %r11                                   #  46    0x20b79  3      
  nop                                         #  47    0x20b7c  1      
  nop                                         #  48    0x20b7d  1      
.L_20bc0:                                     #        0x20b7e  0      
  movl %eax, %edi                             #  49    0x20b7e  2      
  nop                                         #  50    0x20b80  1      
  nop                                         #  51    0x20b81  1      
  callq ._Unwind_Resume                       #  52    0x20b82  5      
  jmpq .L_20bc0                               #  53    0x20b87  5      
  nop                                         #  54    0x20b8c  1      
  nop                                         #  55    0x20b8d  1      
                                                                       
.size _ZN2pp8Instance13DidChangeViewERKNS_4ViewE, .-_ZN2pp8Instance13DidChangeViewERKNS_4ViewE

