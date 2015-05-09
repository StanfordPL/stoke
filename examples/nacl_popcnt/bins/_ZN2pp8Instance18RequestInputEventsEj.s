  .text
  .globl _ZN2pp8Instance18RequestInputEventsEj
  .type _ZN2pp8Instance18RequestInputEventsEj, @function

#! file-offset 0x21b20
#! rip-offset  0x21b20
#! capacity    640 bytes

# Text                                           #  Line  RIP      Bytes  
._ZN2pp8Instance18RequestInputEventsEj:          #        0x21b20  0      
  pushq %r12                                     #  1     0x21b20  3      
  movl %esi, %r12d                               #  2     0x21b23  3      
  pushq %rbx                                     #  3     0x21b26  2      
  movl %edi, %ebx                                #  4     0x21b28  2      
  subl $0x8, %esp                                #  5     0x21b2a  3      
  addq %r15, %rsp                                #  6     0x21b2d  3      
  cmpb $0x0, 0x1000f101(%rip)                    #  7     0x21b30  7      
  je .L_21c00                                    #  8     0x21b37  6      
  nop                                            #  9     0x21b3d  1      
.L_21b40:                                        #        0x21b3e  0      
  movl 0x1000f0fc(%rip), %eax                    #  10    0x21b3e  6      
  testq %rax, %rax                               #  11    0x21b44  3      
  je .L_21ca0                                    #  12    0x21b47  6      
  xchgw %ax, %ax                                 #  13    0x21b4d  3      
  nop                                            #  14    0x21b50  1      
.L_21b60:                                        #        0x21b51  0      
  cmpb $0x0, 0x1000f0e0(%rip)                    #  15    0x21b51  7      
  je .L_21bc0                                    #  16    0x21b58  6      
  nop                                            #  17    0x21b5e  1      
  nop                                            #  18    0x21b5f  1      
.L_21b80:                                        #        0x21b60  0      
  movl %ebx, %ebx                                #  19    0x21b60  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  20    0x21b62  5      
  movl %eax, %eax                                #  21    0x21b67  2      
  movl (%r15,%rax,1), %eax                       #  22    0x21b69  4      
  addl $0x8, %esp                                #  23    0x21b6d  3      
  addq %r15, %rsp                                #  24    0x21b70  3      
  popq %rbx                                      #  25    0x21b73  2      
  movl %r12d, %esi                               #  26    0x21b75  3      
  popq %r12                                      #  27    0x21b78  3      
  nop                                            #  28    0x21b7b  1      
  andl $0xffffffe0, %eax                         #  29    0x21b7c  5      
  addq %r15, %rax                                #  30    0x21b81  3      
  jmpq %rax                                      #  31    0x21b84  2      
  nop                                            #  32    0x21b86  1      
  nop                                            #  33    0x21b87  1      
.L_21bc0:                                        #        0x21b88  0      
  movl $0x10030c38, %edi                         #  34    0x21b88  5      
  nop                                            #  35    0x21b8d  1      
  nop                                            #  36    0x21b8e  1      
  callq .__cxa_guard_acquire                     #  37    0x21b8f  5      
  testl %eax, %eax                               #  38    0x21b94  2      
  jne .L_21cc0                                   #  39    0x21b96  6      
  movl 0x1000f09e(%rip), %eax                    #  40    0x21b9c  6      
  jmpq .L_21b80                                  #  41    0x21ba2  5      
  nop                                            #  42    0x21ba7  1      
  nop                                            #  43    0x21ba8  1      
.L_21c00:                                        #        0x21ba9  0      
  movl $0x10030c38, %edi                         #  44    0x21ba9  5      
  nop                                            #  45    0x21bae  1      
  nop                                            #  46    0x21baf  1      
  callq .__cxa_guard_acquire                     #  47    0x21bb0  5      
  testl %eax, %eax                               #  48    0x21bb5  2      
  je .L_21b40                                    #  49    0x21bb7  6      
  nop                                            #  50    0x21bbd  1      
  nop                                            #  51    0x21bbe  1      
  callq ._ZN2pp6Module3GetEv                     #  52    0x21bbf  5      
  movl %eax, %edi                                #  53    0x21bc4  2      
  movl $0x100202c8, %esi                         #  54    0x21bc6  5      
  nop                                            #  55    0x21bcb  1      
  nop                                            #  56    0x21bcc  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  57    0x21bcd  5      
  movl $0x10030c38, %edi                         #  58    0x21bd2  5      
  movl %eax, 0x1000f063(%rip)                    #  59    0x21bd7  6      
  nop                                            #  60    0x21bdd  1      
  nop                                            #  61    0x21bde  1      
  callq .__cxa_guard_release                     #  62    0x21bdf  5      
  movl 0x1000f056(%rip), %eax                    #  63    0x21be4  6      
  testq %rax, %rax                               #  64    0x21bea  3      
  jne .L_21b60                                   #  65    0x21bed  6      
  xchgw %ax, %ax                                 #  66    0x21bf3  3      
  nop                                            #  67    0x21bf6  1      
.L_21ca0:                                        #        0x21bf7  0      
  addl $0x8, %esp                                #  68    0x21bf7  3      
  addq %r15, %rsp                                #  69    0x21bfa  3      
  movl $0xfffffffa, %eax                         #  70    0x21bfd  5      
  popq %rbx                                      #  71    0x21c02  2      
  popq %r12                                      #  72    0x21c04  3      
  popq %r11                                      #  73    0x21c07  3      
  andl $0xffffffe0, %r11d                        #  74    0x21c0a  7      
  addq %r15, %r11                                #  75    0x21c11  3      
  jmpq %r11                                      #  76    0x21c14  3      
  nop                                            #  77    0x21c17  1      
.L_21cc0:                                        #        0x21c18  0      
  nop                                            #  78    0x21c18  1      
  nop                                            #  79    0x21c19  1      
  callq ._ZN2pp6Module3GetEv                     #  80    0x21c1a  5      
  movl %eax, %edi                                #  81    0x21c1f  2      
  movl $0x100202c8, %esi                         #  82    0x21c21  5      
  nop                                            #  83    0x21c26  1      
  nop                                            #  84    0x21c27  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  85    0x21c28  5      
  movl $0x10030c38, %edi                         #  86    0x21c2d  5      
  movl %eax, 0x1000f008(%rip)                    #  87    0x21c32  6      
  nop                                            #  88    0x21c38  1      
  nop                                            #  89    0x21c39  1      
  callq .__cxa_guard_release                     #  90    0x21c3a  5      
  movl 0x1000effb(%rip), %eax                    #  91    0x21c3f  6      
  jmpq .L_21b80                                  #  92    0x21c45  5      
  nop                                            #  93    0x21c4a  1      
  nop                                            #  94    0x21c4b  1      
.L_21d40:                                        #        0x21c4c  0      
  movl %eax, %ebx                                #  95    0x21c4c  2      
  movl $0x10030c38, %edi                         #  96    0x21c4e  5      
  nop                                            #  97    0x21c53  1      
  nop                                            #  98    0x21c54  1      
  callq .__cxa_guard_abort                       #  99    0x21c55  5      
  movl %ebx, %edi                                #  100   0x21c5a  2      
  nop                                            #  101   0x21c5c  1      
  nop                                            #  102   0x21c5d  1      
  callq ._Unwind_Resume                          #  103   0x21c5e  5      
  jmpq .L_21d40                                  #  104   0x21c63  5      
  nop                                            #  105   0x21c68  1      
  nop                                            #  106   0x21c69  1      
                                                                          
.size _ZN2pp8Instance18RequestInputEventsEj, .-_ZN2pp8Instance18RequestInputEventsEj

