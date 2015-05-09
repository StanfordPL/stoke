  .text
  .globl _ZNK2pp13IMEInputEvent7GetTextEv
  .type _ZNK2pp13IMEInputEvent7GetTextEv, @function

#! file-offset 0x3cdc0
#! rip-offset  0x3cdc0
#! capacity    704 bytes

# Text                                           #  Line  RIP      Bytes  
._ZNK2pp13IMEInputEvent7GetTextEv:               #        0x3cdc0  0      
  pushq %r12                                     #  1     0x3cdc0  3      
  movl %esi, %r12d                               #  2     0x3cdc3  3      
  pushq %rbx                                     #  3     0x3cdc6  2      
  movl %edi, %ebx                                #  4     0x3cdc8  2      
  subl $0x28, %esp                               #  5     0x3cdca  3      
  addq %r15, %rsp                                #  6     0x3cdcd  3      
  cmpb $0x0, 0xfff3f39(%rip)                     #  7     0x3cdd0  7      
  je .L_3cea0                                    #  8     0x3cdd7  6      
  nop                                            #  9     0x3cddd  1      
.L_3cde0:                                        #        0x3cdde  0      
  movl 0xfff3f34(%rip), %eax                     #  10    0x3cdde  6      
  testq %rax, %rax                               #  11    0x3cde4  3      
  jne .L_3ce20                                   #  12    0x3cde7  6      
  movl %ebx, %edi                                #  13    0x3cded  2      
  nop                                            #  14    0x3cdef  1      
  callq ._ZN2pp3VarC1Ev                          #  15    0x3cdf0  5      
  addl $0x28, %esp                               #  16    0x3cdf5  3      
  addq %r15, %rsp                                #  17    0x3cdf8  3      
  movl %ebx, %eax                                #  18    0x3cdfb  2      
  popq %rbx                                      #  19    0x3cdfd  2      
  popq %r12                                      #  20    0x3cdff  3      
  popq %r11                                      #  21    0x3ce02  3      
  andl $0xffffffe0, %r11d                        #  22    0x3ce05  7      
  addq %r15, %r11                                #  23    0x3ce0c  3      
  jmpq %r11                                      #  24    0x3ce0f  3      
  nop                                            #  25    0x3ce12  1      
.L_3ce20:                                        #        0x3ce13  0      
  cmpb $0x0, 0xfff3ef6(%rip)                     #  26    0x3ce13  7      
  je .L_3cf40                                    #  27    0x3ce1a  6      
  nop                                            #  28    0x3ce20  1      
  nop                                            #  29    0x3ce21  1      
.L_3ce40:                                        #        0x3ce22  0      
  movl %eax, %eax                                #  30    0x3ce22  2      
  movl 0x8(%r15,%rax,1), %eax                    #  31    0x3ce24  5      
  movl %r12d, %r12d                              #  32    0x3ce29  3      
  movl 0x4(%r15,%r12,1), %edi                    #  33    0x3ce2c  5      
  nop                                            #  34    0x3ce31  1      
  andl $0xffffffe0, %eax                         #  35    0x3ce32  5      
  addq %r15, %rax                                #  36    0x3ce37  3      
  callq %rax                                     #  37    0x3ce3a  2      
  movl %ebx, %ebx                                #  38    0x3ce3c  2      
  movl $0x100205f8, (%r15,%rbx,1)                #  39    0x3ce3e  8      
  movl %ebx, %ebx                                #  40    0x3ce46  2      
  movq %rdx, 0x10(%r15,%rbx,1)                   #  41    0x3ce48  5      
  movl %ebx, %ebx                                #  42    0x3ce4d  2      
  movb $0x1, 0x18(%r15,%rbx,1)                   #  43    0x3ce4f  6      
  movl %ebx, %ebx                                #  44    0x3ce55  2      
  movq %rax, 0x8(%r15,%rbx,1)                    #  45    0x3ce57  5      
  addl $0x28, %esp                               #  46    0x3ce5c  3      
  addq %r15, %rsp                                #  47    0x3ce5f  3      
  movl %ebx, %eax                                #  48    0x3ce62  2      
  popq %rbx                                      #  49    0x3ce64  2      
  popq %r12                                      #  50    0x3ce66  3      
  popq %r11                                      #  51    0x3ce69  3      
  andl $0xffffffe0, %r11d                        #  52    0x3ce6c  7      
  addq %r15, %r11                                #  53    0x3ce73  3      
  jmpq %r11                                      #  54    0x3ce76  3      
  nop                                            #  55    0x3ce79  1      
.L_3cea0:                                        #        0x3ce7a  0      
  movl $0x10030d10, %edi                         #  56    0x3ce7a  5      
  nop                                            #  57    0x3ce7f  1      
  nop                                            #  58    0x3ce80  1      
  callq .__cxa_guard_acquire                     #  59    0x3ce81  5      
  testl %eax, %eax                               #  60    0x3ce86  2      
  je .L_3cde0                                    #  61    0x3ce88  6      
  nop                                            #  62    0x3ce8e  1      
  nop                                            #  63    0x3ce8f  1      
  callq ._ZN2pp6Module3GetEv                     #  64    0x3ce90  5      
  movl %eax, %edi                                #  65    0x3ce95  2      
  movl $0x10020674, %esi                         #  66    0x3ce97  5      
  nop                                            #  67    0x3ce9c  1      
  nop                                            #  68    0x3ce9d  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  69    0x3ce9e  5      
  movl $0x10030d10, %edi                         #  70    0x3cea3  5      
  movl %eax, 0xfff3e6a(%rip)                     #  71    0x3cea8  6      
  nop                                            #  72    0x3ceae  1      
  nop                                            #  73    0x3ceaf  1      
  callq .__cxa_guard_release                     #  74    0x3ceb0  5      
  jmpq .L_3cde0                                  #  75    0x3ceb5  5      
  nop                                            #  76    0x3ceba  1      
  nop                                            #  77    0x3cebb  1      
.L_3cf40:                                        #        0x3cebc  0      
  movl $0x10030d10, %edi                         #  78    0x3cebc  5      
  nop                                            #  79    0x3cec1  1      
  nop                                            #  80    0x3cec2  1      
  callq .__cxa_guard_acquire                     #  81    0x3cec3  5      
  testl %eax, %eax                               #  82    0x3cec8  2      
  jne .L_3cfa0                                   #  83    0x3ceca  6      
  nop                                            #  84    0x3ced0  1      
  nop                                            #  85    0x3ced1  1      
.L_3cf80:                                        #        0x3ced2  0      
  movl 0xfff3e40(%rip), %eax                     #  86    0x3ced2  6      
  jmpq .L_3ce40                                  #  87    0x3ced8  5      
  nop                                            #  88    0x3cedd  1      
  nop                                            #  89    0x3cede  1      
.L_3cfa0:                                        #        0x3cedf  0      
  nop                                            #  90    0x3cedf  1      
  nop                                            #  91    0x3cee0  1      
  callq ._ZN2pp6Module3GetEv                     #  92    0x3cee1  5      
  movl %eax, %edi                                #  93    0x3cee6  2      
  movl $0x10020674, %esi                         #  94    0x3cee8  5      
  nop                                            #  95    0x3ceed  1      
  nop                                            #  96    0x3ceee  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  97    0x3ceef  5      
  movl $0x10030d10, %edi                         #  98    0x3cef4  5      
  movl %eax, 0xfff3e19(%rip)                     #  99    0x3cef9  6      
  nop                                            #  100   0x3ceff  1      
  nop                                            #  101   0x3cf00  1      
  callq .__cxa_guard_release                     #  102   0x3cf01  5      
  jmpq .L_3cf80                                  #  103   0x3cf06  5      
  nop                                            #  104   0x3cf0b  1      
  nop                                            #  105   0x3cf0c  1      
.L_3d020:                                        #        0x3cf0d  0      
  movl %eax, %ebx                                #  106   0x3cf0d  2      
  movl $0x10030d10, %edi                         #  107   0x3cf0f  5      
  nop                                            #  108   0x3cf14  1      
  nop                                            #  109   0x3cf15  1      
  callq .__cxa_guard_abort                       #  110   0x3cf16  5      
  movl %ebx, %edi                                #  111   0x3cf1b  2      
  nop                                            #  112   0x3cf1d  1      
  nop                                            #  113   0x3cf1e  1      
  callq ._Unwind_Resume                          #  114   0x3cf1f  5      
  jmpq .L_3d020                                  #  115   0x3cf24  5      
  nop                                            #  116   0x3cf29  1      
  nop                                            #  117   0x3cf2a  1      
                                                                          
.size _ZNK2pp13IMEInputEvent7GetTextEv, .-_ZNK2pp13IMEInputEvent7GetTextEv

