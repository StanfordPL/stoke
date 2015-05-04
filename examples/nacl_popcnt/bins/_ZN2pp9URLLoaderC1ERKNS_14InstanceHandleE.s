  .text
  .globl _ZN2pp9URLLoaderC1ERKNS_14InstanceHandleE
  .type _ZN2pp9URLLoaderC1ERKNS_14InstanceHandleE, @function

#! file-offset 0x27a80
#! rip-offset  0x27a80
#! capacity    800 bytes

# Text                                              #  Line  RIP      Bytes  
._ZN2pp9URLLoaderC1ERKNS_14InstanceHandleE:         #        0x27a80  0      
  pushq %r12                                        #  1     0x27a80  3      
  movl %esi, %r12d                                  #  2     0x27a83  3      
  pushq %rbx                                        #  3     0x27a86  2      
  movl %edi, %ebx                                   #  4     0x27a88  2      
  movl %ebx, %edi                                   #  5     0x27a8a  2      
  subl $0x8, %esp                                   #  6     0x27a8c  3      
  addq %r15, %rsp                                   #  7     0x27a8f  3      
  nop                                               #  8     0x27a92  1      
  callq ._ZN2pp8ResourceC2Ev                        #  9     0x27a93  5      
  movl %ebx, %ebx                                   #  10    0x27a98  2      
  movl $0x100203f8, (%r15,%rbx,1)                   #  11    0x27a9a  8      
  cmpb $0x0, 0x100091b7(%rip)                       #  12    0x27aa2  7      
  je .L_27b00                                       #  13    0x27aa9  6      
  nop                                               #  14    0x27aaf  1      
.L_27ac0:                                           #        0x27ab0  0      
  movl 0x100091b2(%rip), %eax                       #  15    0x27ab0  6      
  testq %rax, %rax                                  #  16    0x27ab6  3      
  jne .L_27ba0                                      #  17    0x27ab9  6      
  xchgw %ax, %ax                                    #  18    0x27abf  3      
  nop                                               #  19    0x27ac2  1      
.L_27ae0:                                           #        0x27ac3  0      
  addl $0x8, %esp                                   #  20    0x27ac3  3      
  addq %r15, %rsp                                   #  21    0x27ac6  3      
  popq %rbx                                         #  22    0x27ac9  2      
  popq %r12                                         #  23    0x27acb  3      
  popq %r11                                         #  24    0x27ace  3      
  andl $0xffffffe0, %r11d                           #  25    0x27ad1  7      
  addq %r15, %r11                                   #  26    0x27ad8  3      
  jmpq %r11                                         #  27    0x27adb  3      
  nop                                               #  28    0x27ade  1      
.L_27b00:                                           #        0x27adf  0      
  movl $0x10030c60, %edi                            #  29    0x27adf  5      
  nop                                               #  30    0x27ae4  1      
  nop                                               #  31    0x27ae5  1      
  callq .__cxa_guard_acquire                        #  32    0x27ae6  5      
  testl %eax, %eax                                  #  33    0x27aeb  2      
  je .L_27ac0                                       #  34    0x27aed  6      
  nop                                               #  35    0x27af3  1      
  nop                                               #  36    0x27af4  1      
  callq ._ZN2pp6Module3GetEv                        #  37    0x27af5  5      
  movl %eax, %edi                                   #  38    0x27afa  2      
  movl $0x10020478, %esi                            #  39    0x27afc  5      
  nop                                               #  40    0x27b01  1      
  nop                                               #  41    0x27b02  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc     #  42    0x27b03  5      
  movl $0x10030c60, %edi                            #  43    0x27b08  5      
  movl %eax, 0x10009155(%rip)                       #  44    0x27b0d  6      
  nop                                               #  45    0x27b13  1      
  nop                                               #  46    0x27b14  1      
  callq .__cxa_guard_release                        #  47    0x27b15  5      
  movl 0x10009148(%rip), %eax                       #  48    0x27b1a  6      
  testq %rax, %rax                                  #  49    0x27b20  3      
  je .L_27ae0                                       #  50    0x27b23  6      
  xchgw %ax, %ax                                    #  51    0x27b29  3      
  nop                                               #  52    0x27b2c  1      
.L_27ba0:                                           #        0x27b2d  0      
  cmpb $0x0, 0x1000912c(%rip)                       #  53    0x27b2d  7      
  je .L_27c20                                       #  54    0x27b34  6      
  nop                                               #  55    0x27b3a  1      
  nop                                               #  56    0x27b3b  1      
.L_27bc0:                                           #        0x27b3c  0      
  movl %eax, %eax                                   #  57    0x27b3c  2      
  movl (%r15,%rax,1), %eax                          #  58    0x27b3e  4      
  movl %r12d, %r12d                                 #  59    0x27b42  3      
  movl (%r15,%r12,1), %edi                          #  60    0x27b45  4      
  nop                                               #  61    0x27b49  1      
  andl $0xffffffe0, %eax                            #  62    0x27b4a  5      
  addq %r15, %rax                                   #  63    0x27b4f  3      
  callq %rax                                        #  64    0x27b52  2      
  movl %eax, %esi                                   #  65    0x27b54  2      
  movl %ebx, %edi                                   #  66    0x27b56  2      
  nop                                               #  67    0x27b58  1      
  nop                                               #  68    0x27b59  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi  #  69    0x27b5a  5      
  addl $0x8, %esp                                   #  70    0x27b5f  3      
  addq %r15, %rsp                                   #  71    0x27b62  3      
  popq %rbx                                         #  72    0x27b65  2      
  popq %r12                                         #  73    0x27b67  3      
  popq %r11                                         #  74    0x27b6a  3      
  andl $0xffffffe0, %r11d                           #  75    0x27b6d  7      
  addq %r15, %r11                                   #  76    0x27b74  3      
  jmpq %r11                                         #  77    0x27b77  3      
  nop                                               #  78    0x27b7a  1      
.L_27c20:                                           #        0x27b7b  0      
  movl $0x10030c60, %edi                            #  79    0x27b7b  5      
  nop                                               #  80    0x27b80  1      
  nop                                               #  81    0x27b81  1      
  callq .__cxa_guard_acquire                        #  82    0x27b82  5      
  testl %eax, %eax                                  #  83    0x27b87  2      
  jne .L_27c80                                      #  84    0x27b89  6      
  nop                                               #  85    0x27b8f  1      
  nop                                               #  86    0x27b90  1      
.L_27c60:                                           #        0x27b91  0      
  movl 0x100090d1(%rip), %eax                       #  87    0x27b91  6      
  jmpq .L_27bc0                                     #  88    0x27b97  5      
  nop                                               #  89    0x27b9c  1      
  nop                                               #  90    0x27b9d  1      
.L_27c80:                                           #        0x27b9e  0      
  nop                                               #  91    0x27b9e  1      
  nop                                               #  92    0x27b9f  1      
  callq ._ZN2pp6Module3GetEv                        #  93    0x27ba0  5      
  movl %eax, %edi                                   #  94    0x27ba5  2      
  movl $0x10020478, %esi                            #  95    0x27ba7  5      
  nop                                               #  96    0x27bac  1      
  nop                                               #  97    0x27bad  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc     #  98    0x27bae  5      
  movl $0x10030c60, %edi                            #  99    0x27bb3  5      
  movl %eax, 0x100090aa(%rip)                       #  100   0x27bb8  6      
  nop                                               #  101   0x27bbe  1      
  nop                                               #  102   0x27bbf  1      
  callq .__cxa_guard_release                        #  103   0x27bc0  5      
  jmpq .L_27c60                                     #  104   0x27bc5  5      
  nop                                               #  105   0x27bca  1      
  nop                                               #  106   0x27bcb  1      
.L_27d00:                                           #        0x27bcc  0      
  movl $0x10030c60, %edi                            #  107   0x27bcc  5      
  movl %eax, %r12d                                  #  108   0x27bd1  3      
  nop                                               #  109   0x27bd4  1      
  nop                                               #  110   0x27bd5  1      
  callq .__cxa_guard_abort                          #  111   0x27bd6  5      
.L_27d20:                                           #        0x27bdb  0      
  movl %ebx, %edi                                   #  112   0x27bdb  2      
  nop                                               #  113   0x27bdd  1      
  nop                                               #  114   0x27bde  1      
  callq ._ZN2pp8ResourceD2Ev                        #  115   0x27bdf  5      
  movl %r12d, %edi                                  #  116   0x27be4  3      
  nop                                               #  117   0x27be7  1      
  nop                                               #  118   0x27be8  1      
  callq ._Unwind_Resume                             #  119   0x27be9  5      
  movl %eax, %r12d                                  #  120   0x27bee  3      
  jmpq .L_27d20                                     #  121   0x27bf1  5      
  nop                                               #  122   0x27bf6  1      
  nop                                               #  123   0x27bf7  1      
  jmpq .L_27d00                                     #  124   0x27bf8  5      
  nop                                               #  125   0x27bfd  1      
  nop                                               #  126   0x27bfe  1      
  nop                                               #  127   0x27bff  1      
                                                                             
.size _ZN2pp9URLLoaderC1ERKNS_14InstanceHandleE, .-_ZN2pp9URLLoaderC1ERKNS_14InstanceHandleE

