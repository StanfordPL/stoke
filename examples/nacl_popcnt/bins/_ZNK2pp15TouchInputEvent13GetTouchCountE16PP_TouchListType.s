  .text
  .globl _ZNK2pp15TouchInputEvent13GetTouchCountE16PP_TouchListType
  .type _ZNK2pp15TouchInputEvent13GetTouchCountE16PP_TouchListType, @function

#! file-offset 0x3aea0
#! rip-offset  0x3aea0
#! capacity    704 bytes

# Text                                                        #  Line  RIP      Bytes  
._ZNK2pp15TouchInputEvent13GetTouchCountE16PP_TouchListType:  #        0x3aea0  0      
  movq %rbx, -0x10(%rsp)                                      #  1     0x3aea0  5      
  movq %r12, -0x8(%rsp)                                       #  2     0x3aea5  5      
  subl $0x18, %esp                                            #  3     0x3aeaa  3      
  addq %r15, %rsp                                             #  4     0x3aead  3      
  cmpb $0x0, 0xfff5e69(%rip)                                  #  5     0x3aeb0  7      
  movl %esi, %r12d                                            #  6     0x3aeb7  3      
  movl %edi, %ebx                                             #  7     0x3aeba  2      
  nop                                                         #  8     0x3aebc  1      
  je .L_3af20                                                 #  9     0x3aebd  6      
  nop                                                         #  10    0x3aec3  1      
  nop                                                         #  11    0x3aec4  1      
.L_3aee0:                                                     #        0x3aec5  0      
  movl 0xfff5e5d(%rip), %eax                                  #  12    0x3aec5  6      
  testq %rax, %rax                                            #  13    0x3aecb  3      
  jne .L_3afc0                                                #  14    0x3aece  6      
  xchgw %ax, %ax                                              #  15    0x3aed4  3      
  nop                                                         #  16    0x3aed7  1      
.L_3af00:                                                     #        0x3aed8  0      
  movq 0x8(%rsp), %rbx                                        #  17    0x3aed8  5      
  movq 0x10(%rsp), %r12                                       #  18    0x3aedd  5      
  addl $0x18, %esp                                            #  19    0x3aee2  3      
  addq %r15, %rsp                                             #  20    0x3aee5  3      
  popq %r11                                                   #  21    0x3aee8  3      
  andl $0xffffffe0, %r11d                                     #  22    0x3aeeb  7      
  addq %r15, %r11                                             #  23    0x3aef2  3      
  jmpq %r11                                                   #  24    0x3aef5  3      
  nop                                                         #  25    0x3aef8  1      
.L_3af20:                                                     #        0x3aef9  0      
  movl $0x10030d20, %edi                                      #  26    0x3aef9  5      
  nop                                                         #  27    0x3aefe  1      
  nop                                                         #  28    0x3aeff  1      
  callq .__cxa_guard_acquire                                  #  29    0x3af00  5      
  testl %eax, %eax                                            #  30    0x3af05  2      
  je .L_3aee0                                                 #  31    0x3af07  6      
  nop                                                         #  32    0x3af0d  1      
  nop                                                         #  33    0x3af0e  1      
  callq ._ZN2pp6Module3GetEv                                  #  34    0x3af0f  5      
  movl %eax, %edi                                             #  35    0x3af14  2      
  movl $0x100206d8, %esi                                      #  36    0x3af16  5      
  nop                                                         #  37    0x3af1b  1      
  nop                                                         #  38    0x3af1c  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc               #  39    0x3af1d  5      
  movl $0x10030d20, %edi                                      #  40    0x3af22  5      
  movl %eax, 0xfff5dfb(%rip)                                  #  41    0x3af27  6      
  nop                                                         #  42    0x3af2d  1      
  nop                                                         #  43    0x3af2e  1      
  callq .__cxa_guard_release                                  #  44    0x3af2f  5      
  movl 0xfff5dee(%rip), %eax                                  #  45    0x3af34  6      
  testq %rax, %rax                                            #  46    0x3af3a  3      
  je .L_3af00                                                 #  47    0x3af3d  6      
  xchgw %ax, %ax                                              #  48    0x3af43  3      
  nop                                                         #  49    0x3af46  1      
.L_3afc0:                                                     #        0x3af47  0      
  cmpb $0x0, 0xfff5dd2(%rip)                                  #  50    0x3af47  7      
  je .L_3b020                                                 #  51    0x3af4e  6      
  nop                                                         #  52    0x3af54  1      
  nop                                                         #  53    0x3af55  1      
.L_3afe0:                                                     #        0x3af56  0      
  movl %eax, %eax                                             #  54    0x3af56  2      
  movl 0xc(%r15,%rax,1), %eax                                 #  55    0x3af58  5      
  movl %ebx, %ebx                                             #  56    0x3af5d  2      
  movl 0x4(%r15,%rbx,1), %edi                                 #  57    0x3af5f  5      
  movl %r12d, %esi                                            #  58    0x3af64  3      
  movq 0x8(%rsp), %rbx                                        #  59    0x3af67  5      
  movq 0x10(%rsp), %r12                                       #  60    0x3af6c  5      
  nop                                                         #  61    0x3af71  1      
  addl $0x18, %esp                                            #  62    0x3af72  3      
  addq %r15, %rsp                                             #  63    0x3af75  3      
  andl $0xffffffe0, %eax                                      #  64    0x3af78  5      
  addq %r15, %rax                                             #  65    0x3af7d  3      
  jmpq %rax                                                   #  66    0x3af80  2      
  nop                                                         #  67    0x3af82  1      
  nop                                                         #  68    0x3af83  1      
.L_3b020:                                                     #        0x3af84  0      
  movl $0x10030d20, %edi                                      #  69    0x3af84  5      
  nop                                                         #  70    0x3af89  1      
  nop                                                         #  71    0x3af8a  1      
  callq .__cxa_guard_acquire                                  #  72    0x3af8b  5      
  testl %eax, %eax                                            #  73    0x3af90  2      
  jne .L_3b080                                                #  74    0x3af92  6      
  nop                                                         #  75    0x3af98  1      
  nop                                                         #  76    0x3af99  1      
.L_3b060:                                                     #        0x3af9a  0      
  movl 0xfff5d88(%rip), %eax                                  #  77    0x3af9a  6      
  jmpq .L_3afe0                                               #  78    0x3afa0  5      
  nop                                                         #  79    0x3afa5  1      
  nop                                                         #  80    0x3afa6  1      
.L_3b080:                                                     #        0x3afa7  0      
  nop                                                         #  81    0x3afa7  1      
  nop                                                         #  82    0x3afa8  1      
  callq ._ZN2pp6Module3GetEv                                  #  83    0x3afa9  5      
  movl %eax, %edi                                             #  84    0x3afae  2      
  movl $0x100206d8, %esi                                      #  85    0x3afb0  5      
  nop                                                         #  86    0x3afb5  1      
  nop                                                         #  87    0x3afb6  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc               #  88    0x3afb7  5      
  movl $0x10030d20, %edi                                      #  89    0x3afbc  5      
  movl %eax, 0xfff5d61(%rip)                                  #  90    0x3afc1  6      
  nop                                                         #  91    0x3afc7  1      
  nop                                                         #  92    0x3afc8  1      
  callq .__cxa_guard_release                                  #  93    0x3afc9  5      
  jmpq .L_3b060                                               #  94    0x3afce  5      
  nop                                                         #  95    0x3afd3  1      
  nop                                                         #  96    0x3afd4  1      
.L_3b100:                                                     #        0x3afd5  0      
  movl %eax, %ebx                                             #  97    0x3afd5  2      
  movl $0x10030d20, %edi                                      #  98    0x3afd7  5      
  nop                                                         #  99    0x3afdc  1      
  nop                                                         #  100   0x3afdd  1      
  callq .__cxa_guard_abort                                    #  101   0x3afde  5      
  movl %ebx, %edi                                             #  102   0x3afe3  2      
  nop                                                         #  103   0x3afe5  1      
  nop                                                         #  104   0x3afe6  1      
  callq ._Unwind_Resume                                       #  105   0x3afe7  5      
  jmpq .L_3b100                                               #  106   0x3afec  5      
  nop                                                         #  107   0x3aff1  1      
  nop                                                         #  108   0x3aff2  1      
                                                                                       
.size _ZNK2pp15TouchInputEvent13GetTouchCountE16PP_TouchListType, .-_ZNK2pp15TouchInputEvent13GetTouchCountE16PP_TouchListType

