  .text
  .globl _ZN2pp8Instance13DidChangeViewERKNS_4ViewE
  .type _ZN2pp8Instance13DidChangeViewERKNS_4ViewE, @function

#! file-offset 0x20b80
#! rip-offset  0x20b80
#! capacity    288 bytes

# Text                                        #  Line  RIP      Bytes  
._ZN2pp8Instance13DidChangeViewERKNS_4ViewE:  #        0x20b80  0      
  movq %rbx, -0x20(%rsp)                      #  1     0x20b80  5      
  movl %edi, %ebx                             #  2     0x20b85  2      
  movq %r12, -0x18(%rsp)                      #  3     0x20b87  5      
  movq %r13, -0x10(%rsp)                      #  4     0x20b8c  5      
  movq %r14, -0x8(%rsp)                       #  5     0x20b91  5      
  subl $0x58, %esp                            #  6     0x20b96  3      
  addq %r15, %rsp                             #  7     0x20b99  3      
  nop                                         #  8     0x20b9c  1      
  movl %ebx, %ebx                             #  9     0x20b9d  2      
  movl (%r15,%rbx,1), %edx                    #  10    0x20b9f  4      
  leal 0x10(%rsp), %r12d                      #  11    0x20ba3  5      
  movl %esi, %eax                             #  12    0x20ba8  2      
  movl %eax, %esi                             #  13    0x20baa  2      
  movq %rax, 0x8(%rsp)                        #  14    0x20bac  5      
  leal 0x20(%rsp), %r13d                      #  15    0x20bb1  5      
  movl %r12d, %edi                            #  16    0x20bb6  3      
  nop                                         #  17    0x20bb9  1      
  movl %edx, %edx                             #  18    0x20bba  2      
  movl 0x10(%r15,%rdx,1), %r14d               #  19    0x20bbc  5      
  nop                                         #  20    0x20bc1  1      
  nop                                         #  21    0x20bc2  1      
  callq ._ZNK2pp4View11GetClipRectEv          #  22    0x20bc3  5      
  movq 0x8(%rsp), %rax                        #  23    0x20bc8  5      
  movl %r13d, %edi                            #  24    0x20bcd  3      
  movl %eax, %esi                             #  25    0x20bd0  2      
  xchgw %ax, %ax                              #  26    0x20bd2  3      
  nop                                         #  27    0x20bd5  1      
  callq ._ZNK2pp4View7GetRectEv               #  28    0x20bd6  5      
  movl %r12d, %edx                            #  29    0x20bdb  3      
  movl %r13d, %esi                            #  30    0x20bde  3      
  movl %ebx, %edi                             #  31    0x20be1  2      
  nop                                         #  32    0x20be3  1      
  andl $0xffffffe0, %r14d                     #  33    0x20be4  7      
  addq %r15, %r14                             #  34    0x20beb  3      
  callq %r14                                  #  35    0x20bee  3      
  movq 0x38(%rsp), %rbx                       #  36    0x20bf1  5      
  movq 0x40(%rsp), %r12                       #  37    0x20bf6  5      
  movq 0x48(%rsp), %r13                       #  38    0x20bfb  5      
  movq 0x50(%rsp), %r14                       #  39    0x20c00  5      
  addl $0x58, %esp                            #  40    0x20c05  3      
  addq %r15, %rsp                             #  41    0x20c08  3      
  popq %r11                                   #  42    0x20c0b  3      
  nop                                         #  43    0x20c0e  1      
  andl $0xffffffe0, %r11d                     #  44    0x20c0f  7      
  addq %r15, %r11                             #  45    0x20c16  3      
  jmpq %r11                                   #  46    0x20c19  3      
  nop                                         #  47    0x20c1c  1      
  nop                                         #  48    0x20c1d  1      
.L_20c60:                                     #        0x20c1e  0      
  movl %eax, %edi                             #  49    0x20c1e  2      
  nop                                         #  50    0x20c20  1      
  nop                                         #  51    0x20c21  1      
  callq ._Unwind_Resume                       #  52    0x20c22  5      
  jmpq .L_20c60                               #  53    0x20c27  5      
  nop                                         #  54    0x20c2c  1      
  nop                                         #  55    0x20c2d  1      
                                                                       
.size _ZN2pp8Instance13DidChangeViewERKNS_4ViewE, .-_ZN2pp8Instance13DidChangeViewERKNS_4ViewE

