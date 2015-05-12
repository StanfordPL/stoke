  .text
  .globl _ZN2pp8Instance18RequestInputEventsEj
  .type _ZN2pp8Instance18RequestInputEventsEj, @function

#! file-offset 0x21b40
#! rip-offset  0x21b40
#! capacity    640 bytes

# Text                                           #  Line  RIP      Bytes  
._ZN2pp8Instance18RequestInputEventsEj:          #        0x21b40  0      
  pushq %r12                                     #  1     0x21b40  3      
  movl %esi, %r12d                               #  2     0x21b43  3      
  pushq %rbx                                     #  3     0x21b46  2      
  movl %edi, %ebx                                #  4     0x21b48  2      
  subl $0x8, %esp                                #  5     0x21b4a  3      
  addq %r15, %rsp                                #  6     0x21b4d  3      
  cmpb $0x0, 0x1000f0e1(%rip)                    #  7     0x21b50  7      
  je .L_21c20                                    #  8     0x21b57  6      
  nop                                            #  9     0x21b5d  1      
.L_21b60:                                        #        0x21b5e  0      
  movl 0x1000f0dc(%rip), %eax                    #  10    0x21b5e  6      
  testq %rax, %rax                               #  11    0x21b64  3      
  je .L_21cc0                                    #  12    0x21b67  6      
  xchgw %ax, %ax                                 #  13    0x21b6d  3      
  nop                                            #  14    0x21b70  1      
.L_21b80:                                        #        0x21b71  0      
  cmpb $0x0, 0x1000f0c0(%rip)                    #  15    0x21b71  7      
  je .L_21be0                                    #  16    0x21b78  6      
  nop                                            #  17    0x21b7e  1      
  nop                                            #  18    0x21b7f  1      
.L_21ba0:                                        #        0x21b80  0      
  movl %ebx, %ebx                                #  19    0x21b80  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  20    0x21b82  5      
  movl %eax, %eax                                #  21    0x21b87  2      
  movl (%r15,%rax,1), %eax                       #  22    0x21b89  4      
  addl $0x8, %esp                                #  23    0x21b8d  3      
  addq %r15, %rsp                                #  24    0x21b90  3      
  popq %rbx                                      #  25    0x21b93  2      
  movl %r12d, %esi                               #  26    0x21b95  3      
  popq %r12                                      #  27    0x21b98  3      
  nop                                            #  28    0x21b9b  1      
  andl $0xffffffe0, %eax                         #  29    0x21b9c  5      
  addq %r15, %rax                                #  30    0x21ba1  3      
  jmpq %rax                                      #  31    0x21ba4  2      
  nop                                            #  32    0x21ba6  1      
  nop                                            #  33    0x21ba7  1      
.L_21be0:                                        #        0x21ba8  0      
  movl $0x10030c38, %edi                         #  34    0x21ba8  5      
  nop                                            #  35    0x21bad  1      
  nop                                            #  36    0x21bae  1      
  callq .__cxa_guard_acquire                     #  37    0x21baf  5      
  testl %eax, %eax                               #  38    0x21bb4  2      
  jne .L_21ce0                                   #  39    0x21bb6  6      
  movl 0x1000f07e(%rip), %eax                    #  40    0x21bbc  6      
  jmpq .L_21ba0                                  #  41    0x21bc2  5      
  nop                                            #  42    0x21bc7  1      
  nop                                            #  43    0x21bc8  1      
.L_21c20:                                        #        0x21bc9  0      
  movl $0x10030c38, %edi                         #  44    0x21bc9  5      
  nop                                            #  45    0x21bce  1      
  nop                                            #  46    0x21bcf  1      
  callq .__cxa_guard_acquire                     #  47    0x21bd0  5      
  testl %eax, %eax                               #  48    0x21bd5  2      
  je .L_21b60                                    #  49    0x21bd7  6      
  nop                                            #  50    0x21bdd  1      
  nop                                            #  51    0x21bde  1      
  callq ._ZN2pp6Module3GetEv                     #  52    0x21bdf  5      
  movl %eax, %edi                                #  53    0x21be4  2      
  movl $0x100202c8, %esi                         #  54    0x21be6  5      
  nop                                            #  55    0x21beb  1      
  nop                                            #  56    0x21bec  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  57    0x21bed  5      
  movl $0x10030c38, %edi                         #  58    0x21bf2  5      
  movl %eax, 0x1000f043(%rip)                    #  59    0x21bf7  6      
  nop                                            #  60    0x21bfd  1      
  nop                                            #  61    0x21bfe  1      
  callq .__cxa_guard_release                     #  62    0x21bff  5      
  movl 0x1000f036(%rip), %eax                    #  63    0x21c04  6      
  testq %rax, %rax                               #  64    0x21c0a  3      
  jne .L_21b80                                   #  65    0x21c0d  6      
  xchgw %ax, %ax                                 #  66    0x21c13  3      
  nop                                            #  67    0x21c16  1      
.L_21cc0:                                        #        0x21c17  0      
  addl $0x8, %esp                                #  68    0x21c17  3      
  addq %r15, %rsp                                #  69    0x21c1a  3      
  movl $0xfffffffa, %eax                         #  70    0x21c1d  5      
  popq %rbx                                      #  71    0x21c22  2      
  popq %r12                                      #  72    0x21c24  3      
  popq %r11                                      #  73    0x21c27  3      
  andl $0xffffffe0, %r11d                        #  74    0x21c2a  7      
  addq %r15, %r11                                #  75    0x21c31  3      
  jmpq %r11                                      #  76    0x21c34  3      
  nop                                            #  77    0x21c37  1      
.L_21ce0:                                        #        0x21c38  0      
  nop                                            #  78    0x21c38  1      
  nop                                            #  79    0x21c39  1      
  callq ._ZN2pp6Module3GetEv                     #  80    0x21c3a  5      
  movl %eax, %edi                                #  81    0x21c3f  2      
  movl $0x100202c8, %esi                         #  82    0x21c41  5      
  nop                                            #  83    0x21c46  1      
  nop                                            #  84    0x21c47  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  85    0x21c48  5      
  movl $0x10030c38, %edi                         #  86    0x21c4d  5      
  movl %eax, 0x1000efe8(%rip)                    #  87    0x21c52  6      
  nop                                            #  88    0x21c58  1      
  nop                                            #  89    0x21c59  1      
  callq .__cxa_guard_release                     #  90    0x21c5a  5      
  movl 0x1000efdb(%rip), %eax                    #  91    0x21c5f  6      
  jmpq .L_21ba0                                  #  92    0x21c65  5      
  nop                                            #  93    0x21c6a  1      
  nop                                            #  94    0x21c6b  1      
.L_21d60:                                        #        0x21c6c  0      
  movl %eax, %ebx                                #  95    0x21c6c  2      
  movl $0x10030c38, %edi                         #  96    0x21c6e  5      
  nop                                            #  97    0x21c73  1      
  nop                                            #  98    0x21c74  1      
  callq .__cxa_guard_abort                       #  99    0x21c75  5      
  movl %ebx, %edi                                #  100   0x21c7a  2      
  nop                                            #  101   0x21c7c  1      
  nop                                            #  102   0x21c7d  1      
  callq ._Unwind_Resume                          #  103   0x21c7e  5      
  jmpq .L_21d60                                  #  104   0x21c83  5      
  nop                                            #  105   0x21c88  1      
  nop                                            #  106   0x21c89  1      
                                                                          
.size _ZN2pp8Instance18RequestInputEventsEj, .-_ZN2pp8Instance18RequestInputEventsEj

