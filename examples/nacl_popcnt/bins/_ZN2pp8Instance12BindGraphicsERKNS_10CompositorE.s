  .text
  .globl _ZN2pp8Instance12BindGraphicsERKNS_10CompositorE
  .type _ZN2pp8Instance12BindGraphicsERKNS_10CompositorE, @function

#! file-offset 0x22d20
#! rip-offset  0x22d20
#! capacity    672 bytes

# Text                                              #  Line  RIP      Bytes  
._ZN2pp8Instance12BindGraphicsERKNS_10CompositorE:  #        0x22d20  0      
  pushq %r12                                        #  1     0x22d20  3      
  movl %edi, %r12d                                  #  2     0x22d23  3      
  pushq %rbx                                        #  3     0x22d26  2      
  movl %esi, %ebx                                   #  4     0x22d28  2      
  subl $0x8, %esp                                   #  5     0x22d2a  3      
  addq %r15, %rsp                                   #  6     0x22d2d  3      
  cmpb $0x0, 0x1000df11(%rip)                       #  7     0x22d30  7      
  je .L_22d80                                       #  8     0x22d37  6      
  nop                                               #  9     0x22d3d  1      
.L_22d40:                                           #        0x22d3e  0      
  movl 0x1000df0c(%rip), %edx                       #  10    0x22d3e  6      
  xorl %eax, %eax                                   #  11    0x22d44  2      
  testq %rdx, %rdx                                  #  12    0x22d46  3      
  jne .L_22e20                                      #  13    0x22d49  6      
  nop                                               #  14    0x22d4f  1      
.L_22d60:                                           #        0x22d50  0      
  addl $0x8, %esp                                   #  15    0x22d50  3      
  addq %r15, %rsp                                   #  16    0x22d53  3      
  popq %rbx                                         #  17    0x22d56  2      
  popq %r12                                         #  18    0x22d58  3      
  popq %r11                                         #  19    0x22d5b  3      
  andl $0xffffffe0, %r11d                           #  20    0x22d5e  7      
  addq %r15, %r11                                   #  21    0x22d65  3      
  jmpq %r11                                         #  22    0x22d68  3      
  nop                                               #  23    0x22d6b  1      
.L_22d80:                                           #        0x22d6c  0      
  movl $0x10030c48, %edi                            #  24    0x22d6c  5      
  nop                                               #  25    0x22d71  1      
  nop                                               #  26    0x22d72  1      
  callq .__cxa_guard_acquire                        #  27    0x22d73  5      
  testl %eax, %eax                                  #  28    0x22d78  2      
  je .L_22d40                                       #  29    0x22d7a  6      
  nop                                               #  30    0x22d80  1      
  nop                                               #  31    0x22d81  1      
  callq ._ZN2pp6Module3GetEv                        #  32    0x22d82  5      
  movl %eax, %edi                                   #  33    0x22d87  2      
  movl $0x100202ed, %esi                            #  34    0x22d89  5      
  nop                                               #  35    0x22d8e  1      
  nop                                               #  36    0x22d8f  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc     #  37    0x22d90  5      
  movl $0x10030c48, %edi                            #  38    0x22d95  5      
  movl %eax, 0x1000deb0(%rip)                       #  39    0x22d9a  6      
  nop                                               #  40    0x22da0  1      
  nop                                               #  41    0x22da1  1      
  callq .__cxa_guard_release                        #  42    0x22da2  5      
  movl 0x1000dea3(%rip), %edx                       #  43    0x22da7  6      
  xorl %eax, %eax                                   #  44    0x22dad  2      
  testq %rdx, %rdx                                  #  45    0x22daf  3      
  je .L_22d60                                       #  46    0x22db2  6      
  nop                                               #  47    0x22db8  1      
.L_22e20:                                           #        0x22db9  0      
  cmpb $0x0, 0x1000de88(%rip)                       #  48    0x22db9  7      
  je .L_22e80                                       #  49    0x22dc0  6      
  nop                                               #  50    0x22dc6  1      
  nop                                               #  51    0x22dc7  1      
.L_22e40:                                           #        0x22dc8  0      
  movl %edx, %edx                                   #  52    0x22dc8  2      
  movl (%r15,%rdx,1), %eax                          #  53    0x22dca  4      
  movl %ebx, %ebx                                   #  54    0x22dce  2      
  movl 0x4(%r15,%rbx,1), %esi                       #  55    0x22dd0  5      
  movl %r12d, %r12d                                 #  56    0x22dd5  3      
  movl 0x4(%r15,%r12,1), %edi                       #  57    0x22dd8  5      
  nop                                               #  58    0x22ddd  1      
  andl $0xffffffe0, %eax                            #  59    0x22dde  5      
  addq %r15, %rax                                   #  60    0x22de3  3      
  callq %rax                                        #  61    0x22de6  2      
  testl %eax, %eax                                  #  62    0x22de8  2      
  setne %al                                         #  63    0x22dea  3      
  addl $0x8, %esp                                   #  64    0x22ded  3      
  addq %r15, %rsp                                   #  65    0x22df0  3      
  popq %rbx                                         #  66    0x22df3  2      
  popq %r12                                         #  67    0x22df5  3      
  popq %r11                                         #  68    0x22df8  3      
  andl $0xffffffe0, %r11d                           #  69    0x22dfb  7      
  addq %r15, %r11                                   #  70    0x22e02  3      
  jmpq %r11                                         #  71    0x22e05  3      
  nop                                               #  72    0x22e08  1      
.L_22e80:                                           #        0x22e09  0      
  movl $0x10030c48, %edi                            #  73    0x22e09  5      
  nop                                               #  74    0x22e0e  1      
  nop                                               #  75    0x22e0f  1      
  callq .__cxa_guard_acquire                        #  76    0x22e10  5      
  testl %eax, %eax                                  #  77    0x22e15  2      
  jne .L_22ee0                                      #  78    0x22e17  6      
  nop                                               #  79    0x22e1d  1      
  nop                                               #  80    0x22e1e  1      
.L_22ec0:                                           #        0x22e1f  0      
  movl 0x1000de2b(%rip), %edx                       #  81    0x22e1f  6      
  jmpq .L_22e40                                     #  82    0x22e25  5      
  nop                                               #  83    0x22e2a  1      
  nop                                               #  84    0x22e2b  1      
.L_22ee0:                                           #        0x22e2c  0      
  nop                                               #  85    0x22e2c  1      
  nop                                               #  86    0x22e2d  1      
  callq ._ZN2pp6Module3GetEv                        #  87    0x22e2e  5      
  movl %eax, %edi                                   #  88    0x22e33  2      
  movl $0x100202ed, %esi                            #  89    0x22e35  5      
  nop                                               #  90    0x22e3a  1      
  nop                                               #  91    0x22e3b  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc     #  92    0x22e3c  5      
  movl $0x10030c48, %edi                            #  93    0x22e41  5      
  movl %eax, 0x1000de04(%rip)                       #  94    0x22e46  6      
  nop                                               #  95    0x22e4c  1      
  nop                                               #  96    0x22e4d  1      
  callq .__cxa_guard_release                        #  97    0x22e4e  5      
  jmpq .L_22ec0                                     #  98    0x22e53  5      
  nop                                               #  99    0x22e58  1      
  nop                                               #  100   0x22e59  1      
.L_22f60:                                           #        0x22e5a  0      
  movl %eax, %ebx                                   #  101   0x22e5a  2      
  movl $0x10030c48, %edi                            #  102   0x22e5c  5      
  nop                                               #  103   0x22e61  1      
  nop                                               #  104   0x22e62  1      
  callq .__cxa_guard_abort                          #  105   0x22e63  5      
  movl %ebx, %edi                                   #  106   0x22e68  2      
  nop                                               #  107   0x22e6a  1      
  nop                                               #  108   0x22e6b  1      
  callq ._Unwind_Resume                             #  109   0x22e6c  5      
  jmpq .L_22f60                                     #  110   0x22e71  5      
  nop                                               #  111   0x22e76  1      
  nop                                               #  112   0x22e77  1      
                                                                             
.size _ZN2pp8Instance12BindGraphicsERKNS_10CompositorE, .-_ZN2pp8Instance12BindGraphicsERKNS_10CompositorE

