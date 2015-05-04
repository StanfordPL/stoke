  .text
  .globl _ZNK2pp15MouseInputEvent9GetButtonEv
  .type _ZNK2pp15MouseInputEvent9GetButtonEv, @function

#! file-offset 0x3eb00
#! rip-offset  0x3eb00
#! capacity    608 bytes

# Text                                           #  Line  RIP      Bytes  
._ZNK2pp15MouseInputEvent9GetButtonEv:           #        0x3eb00  0      
  cmpb $0x0, 0xfff2259(%rip)                     #  1     0x3eb00  7      
  pushq %rbx                                     #  2     0x3eb07  2      
  movl %edi, %ebx                                #  3     0x3eb09  2      
  je .L_3eb60                                    #  4     0x3eb0b  6      
  nop                                            #  5     0x3eb11  1      
  nop                                            #  6     0x3eb12  1      
.L_3eb20:                                        #        0x3eb13  0      
  movl 0xfff224f(%rip), %eax                     #  7     0x3eb13  6      
  testq %rax, %rax                               #  8     0x3eb19  3      
  jne .L_3ec00                                   #  9     0x3eb1c  6      
  xchgw %ax, %ax                                 #  10    0x3eb22  3      
  nop                                            #  11    0x3eb25  1      
.L_3eb40:                                        #        0x3eb26  0      
  popq %rbx                                      #  12    0x3eb26  2      
  popq %r11                                      #  13    0x3eb28  3      
  movl $0xffffffff, %eax                         #  14    0x3eb2b  5      
  andl $0xffffffe0, %r11d                        #  15    0x3eb30  7      
  addq %r15, %r11                                #  16    0x3eb37  3      
  jmpq %r11                                      #  17    0x3eb3a  3      
  nop                                            #  18    0x3eb3d  1      
.L_3eb60:                                        #        0x3eb3e  0      
  movl $0x10030d60, %edi                         #  19    0x3eb3e  5      
  nop                                            #  20    0x3eb43  1      
  nop                                            #  21    0x3eb44  1      
  callq .__cxa_guard_acquire                     #  22    0x3eb45  5      
  testl %eax, %eax                               #  23    0x3eb4a  2      
  je .L_3eb20                                    #  24    0x3eb4c  6      
  nop                                            #  25    0x3eb52  1      
  nop                                            #  26    0x3eb53  1      
  callq ._ZN2pp6Module3GetEv                     #  27    0x3eb54  5      
  movl %eax, %edi                                #  28    0x3eb59  2      
  movl $0x100206f0, %esi                         #  29    0x3eb5b  5      
  nop                                            #  30    0x3eb60  1      
  nop                                            #  31    0x3eb61  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  32    0x3eb62  5      
  movl $0x10030d60, %edi                         #  33    0x3eb67  5      
  movl %eax, 0xfff21f6(%rip)                     #  34    0x3eb6c  6      
  nop                                            #  35    0x3eb72  1      
  nop                                            #  36    0x3eb73  1      
  callq .__cxa_guard_release                     #  37    0x3eb74  5      
  movl 0xfff21e9(%rip), %eax                     #  38    0x3eb79  6      
  testq %rax, %rax                               #  39    0x3eb7f  3      
  je .L_3eb40                                    #  40    0x3eb82  6      
  xchgw %ax, %ax                                 #  41    0x3eb88  3      
  nop                                            #  42    0x3eb8b  1      
.L_3ec00:                                        #        0x3eb8c  0      
  cmpb $0x0, 0xfff21cd(%rip)                     #  43    0x3eb8c  7      
  je .L_3ec20                                    #  44    0x3eb93  6      
  movl %ebx, %ebx                                #  45    0x3eb99  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  46    0x3eb9b  5      
  movl %eax, %eax                                #  47    0x3eba0  2      
  movl 0x8(%r15,%rax,1), %eax                    #  48    0x3eba2  5      
  popq %rbx                                      #  49    0x3eba7  2      
  andl $0xffffffe0, %eax                         #  50    0x3eba9  5      
  addq %r15, %rax                                #  51    0x3ebae  3      
  jmpq %rax                                      #  52    0x3ebb1  2      
.L_3ec20:                                        #        0x3ebb3  0      
  movl $0x10030d60, %edi                         #  53    0x3ebb3  5      
  nop                                            #  54    0x3ebb8  1      
  nop                                            #  55    0x3ebb9  1      
  callq .__cxa_guard_acquire                     #  56    0x3ebba  5      
  testl %eax, %eax                               #  57    0x3ebbf  2      
  jne .L_3ec80                                   #  58    0x3ebc1  6      
  nop                                            #  59    0x3ebc7  1      
  nop                                            #  60    0x3ebc8  1      
.L_3ec60:                                        #        0x3ebc9  0      
  movl 0xfff2199(%rip), %eax                     #  61    0x3ebc9  6      
  movl %ebx, %ebx                                #  62    0x3ebcf  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  63    0x3ebd1  5      
  popq %rbx                                      #  64    0x3ebd6  2      
  movl %eax, %eax                                #  65    0x3ebd8  2      
  movl 0x8(%r15,%rax,1), %eax                    #  66    0x3ebda  5      
  andl $0xffffffe0, %eax                         #  67    0x3ebdf  5      
  addq %r15, %rax                                #  68    0x3ebe4  3      
  jmpq %rax                                      #  69    0x3ebe7  2      
  nop                                            #  70    0x3ebe9  1      
.L_3ec80:                                        #        0x3ebea  0      
  nop                                            #  71    0x3ebea  1      
  nop                                            #  72    0x3ebeb  1      
  callq ._ZN2pp6Module3GetEv                     #  73    0x3ebec  5      
  movl %eax, %edi                                #  74    0x3ebf1  2      
  movl $0x100206f0, %esi                         #  75    0x3ebf3  5      
  nop                                            #  76    0x3ebf8  1      
  nop                                            #  77    0x3ebf9  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  78    0x3ebfa  5      
  movl $0x10030d60, %edi                         #  79    0x3ebff  5      
  movl %eax, 0xfff215e(%rip)                     #  80    0x3ec04  6      
  nop                                            #  81    0x3ec0a  1      
  nop                                            #  82    0x3ec0b  1      
  callq .__cxa_guard_release                     #  83    0x3ec0c  5      
  jmpq .L_3ec60                                  #  84    0x3ec11  5      
  nop                                            #  85    0x3ec16  1      
  nop                                            #  86    0x3ec17  1      
.L_3ed00:                                        #        0x3ec18  0      
  movl %eax, %ebx                                #  87    0x3ec18  2      
  movl $0x10030d60, %edi                         #  88    0x3ec1a  5      
  nop                                            #  89    0x3ec1f  1      
  nop                                            #  90    0x3ec20  1      
  callq .__cxa_guard_abort                       #  91    0x3ec21  5      
  movl %ebx, %edi                                #  92    0x3ec26  2      
  nop                                            #  93    0x3ec28  1      
  nop                                            #  94    0x3ec29  1      
  callq ._Unwind_Resume                          #  95    0x3ec2a  5      
  jmpq .L_3ed00                                  #  96    0x3ec2f  5      
  nop                                            #  97    0x3ec34  1      
  nop                                            #  98    0x3ec35  1      
                                                                          
.size _ZNK2pp15MouseInputEvent9GetButtonEv, .-_ZNK2pp15MouseInputEvent9GetButtonEv

