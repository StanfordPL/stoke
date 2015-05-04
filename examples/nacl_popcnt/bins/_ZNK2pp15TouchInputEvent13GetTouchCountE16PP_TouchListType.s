  .text
  .globl _ZNK2pp15TouchInputEvent13GetTouchCountE16PP_TouchListType
  .type _ZNK2pp15TouchInputEvent13GetTouchCountE16PP_TouchListType, @function

#! file-offset 0x3af40
#! rip-offset  0x3af40
#! capacity    704 bytes

# Text                                                        #  Line  RIP      Bytes  
._ZNK2pp15TouchInputEvent13GetTouchCountE16PP_TouchListType:  #        0x3af40  0      
  movq %rbx, -0x10(%rsp)                                      #  1     0x3af40  5      
  movq %r12, -0x8(%rsp)                                       #  2     0x3af45  5      
  subl $0x18, %esp                                            #  3     0x3af4a  3      
  addq %r15, %rsp                                             #  4     0x3af4d  3      
  cmpb $0x0, 0xfff5dc9(%rip)                                  #  5     0x3af50  7      
  movl %esi, %r12d                                            #  6     0x3af57  3      
  movl %edi, %ebx                                             #  7     0x3af5a  2      
  nop                                                         #  8     0x3af5c  1      
  je .L_3afc0                                                 #  9     0x3af5d  6      
  nop                                                         #  10    0x3af63  1      
  nop                                                         #  11    0x3af64  1      
.L_3af80:                                                     #        0x3af65  0      
  movl 0xfff5dbd(%rip), %eax                                  #  12    0x3af65  6      
  testq %rax, %rax                                            #  13    0x3af6b  3      
  jne .L_3b060                                                #  14    0x3af6e  6      
  xchgw %ax, %ax                                              #  15    0x3af74  3      
  nop                                                         #  16    0x3af77  1      
.L_3afa0:                                                     #        0x3af78  0      
  movq 0x8(%rsp), %rbx                                        #  17    0x3af78  5      
  movq 0x10(%rsp), %r12                                       #  18    0x3af7d  5      
  addl $0x18, %esp                                            #  19    0x3af82  3      
  addq %r15, %rsp                                             #  20    0x3af85  3      
  popq %r11                                                   #  21    0x3af88  3      
  andl $0xffffffe0, %r11d                                     #  22    0x3af8b  7      
  addq %r15, %r11                                             #  23    0x3af92  3      
  jmpq %r11                                                   #  24    0x3af95  3      
  nop                                                         #  25    0x3af98  1      
.L_3afc0:                                                     #        0x3af99  0      
  movl $0x10030d20, %edi                                      #  26    0x3af99  5      
  nop                                                         #  27    0x3af9e  1      
  nop                                                         #  28    0x3af9f  1      
  callq .__cxa_guard_acquire                                  #  29    0x3afa0  5      
  testl %eax, %eax                                            #  30    0x3afa5  2      
  je .L_3af80                                                 #  31    0x3afa7  6      
  nop                                                         #  32    0x3afad  1      
  nop                                                         #  33    0x3afae  1      
  callq ._ZN2pp6Module3GetEv                                  #  34    0x3afaf  5      
  movl %eax, %edi                                             #  35    0x3afb4  2      
  movl $0x100206d8, %esi                                      #  36    0x3afb6  5      
  nop                                                         #  37    0x3afbb  1      
  nop                                                         #  38    0x3afbc  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc               #  39    0x3afbd  5      
  movl $0x10030d20, %edi                                      #  40    0x3afc2  5      
  movl %eax, 0xfff5d5b(%rip)                                  #  41    0x3afc7  6      
  nop                                                         #  42    0x3afcd  1      
  nop                                                         #  43    0x3afce  1      
  callq .__cxa_guard_release                                  #  44    0x3afcf  5      
  movl 0xfff5d4e(%rip), %eax                                  #  45    0x3afd4  6      
  testq %rax, %rax                                            #  46    0x3afda  3      
  je .L_3afa0                                                 #  47    0x3afdd  6      
  xchgw %ax, %ax                                              #  48    0x3afe3  3      
  nop                                                         #  49    0x3afe6  1      
.L_3b060:                                                     #        0x3afe7  0      
  cmpb $0x0, 0xfff5d32(%rip)                                  #  50    0x3afe7  7      
  je .L_3b0c0                                                 #  51    0x3afee  6      
  nop                                                         #  52    0x3aff4  1      
  nop                                                         #  53    0x3aff5  1      
.L_3b080:                                                     #        0x3aff6  0      
  movl %eax, %eax                                             #  54    0x3aff6  2      
  movl 0xc(%r15,%rax,1), %eax                                 #  55    0x3aff8  5      
  movl %ebx, %ebx                                             #  56    0x3affd  2      
  movl 0x4(%r15,%rbx,1), %edi                                 #  57    0x3afff  5      
  movl %r12d, %esi                                            #  58    0x3b004  3      
  movq 0x8(%rsp), %rbx                                        #  59    0x3b007  5      
  movq 0x10(%rsp), %r12                                       #  60    0x3b00c  5      
  nop                                                         #  61    0x3b011  1      
  addl $0x18, %esp                                            #  62    0x3b012  3      
  addq %r15, %rsp                                             #  63    0x3b015  3      
  andl $0xffffffe0, %eax                                      #  64    0x3b018  5      
  addq %r15, %rax                                             #  65    0x3b01d  3      
  jmpq %rax                                                   #  66    0x3b020  2      
  nop                                                         #  67    0x3b022  1      
  nop                                                         #  68    0x3b023  1      
.L_3b0c0:                                                     #        0x3b024  0      
  movl $0x10030d20, %edi                                      #  69    0x3b024  5      
  nop                                                         #  70    0x3b029  1      
  nop                                                         #  71    0x3b02a  1      
  callq .__cxa_guard_acquire                                  #  72    0x3b02b  5      
  testl %eax, %eax                                            #  73    0x3b030  2      
  jne .L_3b120                                                #  74    0x3b032  6      
  nop                                                         #  75    0x3b038  1      
  nop                                                         #  76    0x3b039  1      
.L_3b100:                                                     #        0x3b03a  0      
  movl 0xfff5ce8(%rip), %eax                                  #  77    0x3b03a  6      
  jmpq .L_3b080                                               #  78    0x3b040  5      
  nop                                                         #  79    0x3b045  1      
  nop                                                         #  80    0x3b046  1      
.L_3b120:                                                     #        0x3b047  0      
  nop                                                         #  81    0x3b047  1      
  nop                                                         #  82    0x3b048  1      
  callq ._ZN2pp6Module3GetEv                                  #  83    0x3b049  5      
  movl %eax, %edi                                             #  84    0x3b04e  2      
  movl $0x100206d8, %esi                                      #  85    0x3b050  5      
  nop                                                         #  86    0x3b055  1      
  nop                                                         #  87    0x3b056  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc               #  88    0x3b057  5      
  movl $0x10030d20, %edi                                      #  89    0x3b05c  5      
  movl %eax, 0xfff5cc1(%rip)                                  #  90    0x3b061  6      
  nop                                                         #  91    0x3b067  1      
  nop                                                         #  92    0x3b068  1      
  callq .__cxa_guard_release                                  #  93    0x3b069  5      
  jmpq .L_3b100                                               #  94    0x3b06e  5      
  nop                                                         #  95    0x3b073  1      
  nop                                                         #  96    0x3b074  1      
.L_3b1a0:                                                     #        0x3b075  0      
  movl %eax, %ebx                                             #  97    0x3b075  2      
  movl $0x10030d20, %edi                                      #  98    0x3b077  5      
  nop                                                         #  99    0x3b07c  1      
  nop                                                         #  100   0x3b07d  1      
  callq .__cxa_guard_abort                                    #  101   0x3b07e  5      
  movl %ebx, %edi                                             #  102   0x3b083  2      
  nop                                                         #  103   0x3b085  1      
  nop                                                         #  104   0x3b086  1      
  callq ._Unwind_Resume                                       #  105   0x3b087  5      
  jmpq .L_3b1a0                                               #  106   0x3b08c  5      
  nop                                                         #  107   0x3b091  1      
  nop                                                         #  108   0x3b092  1      
                                                                                       
.size _ZNK2pp15TouchInputEvent13GetTouchCountE16PP_TouchListType, .-_ZNK2pp15TouchInputEvent13GetTouchCountE16PP_TouchListType

