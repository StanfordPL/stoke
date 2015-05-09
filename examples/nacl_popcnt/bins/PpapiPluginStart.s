  .text
  .globl PpapiPluginStart
  .type PpapiPluginStart, @function

#! file-offset 0x3fa60
#! rip-offset  0x3fa60
#! capacity    384 bytes

# Text                                   #  Line  RIP      Bytes  
.PpapiPluginStart:                       #        0x3fa60  0      
  pushq %r12                             #  1     0x3fa60  3      
  movl %edi, %r12d                       #  2     0x3fa63  3      
  pushq %rbx                             #  3     0x3fa66  2      
  subl $0x18, %esp                       #  4     0x3fa68  3      
  addq %r15, %rsp                        #  5     0x3fa6b  3      
  movl 0xfff0a84(%rip), %eax             #  6     0x3fa6e  6      
  movl %eax, %eax                        #  7     0x3fa74  2      
  movl (%r15,%rax,1), %ecx               #  8     0x3fa76  4      
  testl %ecx, %ecx                       #  9     0x3fa7a  2      
  je .L_3faa0                            #  10    0x3fa7c  6      
  nop                                    #  11    0x3fa82  1      
.L_3fa80:                                #        0x3fa83  0      
  addl $0x4, %eax                        #  12    0x3fa83  3      
  movl %eax, %eax                        #  13    0x3fa86  2      
  movl (%r15,%rax,1), %edx               #  14    0x3fa88  4      
  testl %edx, %edx                       #  15    0x3fa8c  2      
  jne .L_3fa80                           #  16    0x3fa8e  6      
  nop                                    #  17    0x3fa94  1      
  nop                                    #  18    0x3fa95  1      
.L_3faa0:                                #        0x3fa96  0      
  addl $0x4, %eax                        #  19    0x3fa96  3      
  movl %eax, %eax                        #  20    0x3fa99  2      
  movl (%r15,%rax,1), %edx               #  21    0x3fa9b  4      
  testl %edx, %edx                       #  22    0x3fa9f  2      
  jne .L_3fae0                           #  23    0x3faa1  6      
  jmpq .L_3fba0                          #  24    0x3faa7  5      
  nop                                    #  25    0x3faac  1      
.L_3fac0:                                #        0x3faad  0      
  addl $0x8, %eax                        #  26    0x3faad  3      
  movl %eax, %eax                        #  27    0x3fab0  2      
  movl (%r15,%rax,1), %edx               #  28    0x3fab2  4      
  testl %edx, %edx                       #  29    0x3fab6  2      
  je .L_3fba0                            #  30    0x3fab8  6      
  nop                                    #  31    0x3fabe  1      
.L_3fae0:                                #        0x3fabf  0      
  cmpl $0x20, %edx                       #  32    0x3fabf  3      
  jne .L_3fac0                           #  33    0x3fac2  6      
  movl %eax, %eax                        #  34    0x3fac8  2      
  movl 0x4(%r15,%rax,1), %eax            #  35    0x3faca  5      
  testq %rax, %rax                       #  36    0x3facf  3      
  je .L_3fba0                            #  37    0x3fad2  6      
  nop                                    #  38    0x3fad8  1      
.L_3fb00:                                #        0x3fad9  0      
  movl $0x8, %edx                        #  39    0x3fad9  5      
  movl %esp, %esi                        #  40    0x3fade  2      
  movl $0x10020921, %edi                 #  41    0x3fae0  5      
  nop                                    #  42    0x3fae5  1      
  andl $0xffffffe0, %eax                 #  43    0x3fae6  5      
  addq %r15, %rax                        #  44    0x3faeb  3      
  callq %rax                             #  45    0x3faee  2      
  cmpl $0x8, %eax                        #  46    0x3faf0  3      
  movl %esp, %ebx                        #  47    0x3faf3  2      
  je .L_3fb40                            #  48    0x3faf5  6      
  movl $0x100208f8, %edi                 #  49    0x3fafb  5      
  nop                                    #  50    0x3fb00  1      
  callq .fatal_error                     #  51    0x3fb01  5      
.L_3fb40:                                #        0x3fb06  0      
  movl %ebx, %edi                        #  52    0x3fb06  2      
  nop                                    #  53    0x3fb08  1      
  nop                                    #  54    0x3fb09  1      
  callq .__nacl_register_thread_creator  #  55    0x3fb0a  5      
  movl (%rsp), %eax                      #  56    0x3fb0f  3      
  movl %r12d, %edi                       #  57    0x3fb12  3      
  nop                                    #  58    0x3fb15  1      
  nop                                    #  59    0x3fb16  1      
  andl $0xffffffe0, %eax                 #  60    0x3fb17  5      
  addq %r15, %rax                        #  61    0x3fb1c  3      
  callq %rax                             #  62    0x3fb1f  2      
  addl $0x18, %esp                       #  63    0x3fb21  3      
  addq %r15, %rsp                        #  64    0x3fb24  3      
  popq %rbx                              #  65    0x3fb27  2      
  popq %r12                              #  66    0x3fb29  3      
  popq %r11                              #  67    0x3fb2c  3      
  andl $0xffffffe0, %r11d                #  68    0x3fb2f  7      
  addq %r15, %r11                        #  69    0x3fb36  3      
  jmpq %r11                              #  70    0x3fb39  3      
  nop                                    #  71    0x3fb3c  1      
.L_3fba0:                                #        0x3fb3d  0      
  movl $0x10020888, %edi                 #  72    0x3fb3d  5      
  nop                                    #  73    0x3fb42  1      
  nop                                    #  74    0x3fb43  1      
  callq .fatal_error                     #  75    0x3fb44  5      
  xorl %eax, %eax                        #  76    0x3fb49  2      
  jmpq .L_3fb00                          #  77    0x3fb4b  5      
  nop                                    #  78    0x3fb50  1      
  nop                                    #  79    0x3fb51  1      
  nop                                    #  80    0x3fb52  1      
  nop                                    #  81    0x3fb53  1      
  nop                                    #  82    0x3fb54  1      
  nop                                    #  83    0x3fb55  1      
  nop                                    #  84    0x3fb56  1      
  nop                                    #  85    0x3fb57  1      
  nop                                    #  86    0x3fb58  1      
  nop                                    #  87    0x3fb59  1      
  nop                                    #  88    0x3fb5a  1      
  nop                                    #  89    0x3fb5b  1      
  nop                                    #  90    0x3fb5c  1      
  nop                                    #  91    0x3fb5d  1      
  nop                                    #  92    0x3fb5e  1      
  nop                                    #  93    0x3fb5f  1      
  nop                                    #  94    0x3fb60  1      
  nop                                    #  95    0x3fb61  1      
  nop                                    #  96    0x3fb62  1      
  nop                                    #  97    0x3fb63  1      
  nop                                    #  98    0x3fb64  1      
  nop                                    #  99    0x3fb65  1      
  nop                                    #  100   0x3fb66  1      
  nop                                    #  101   0x3fb67  1      
  nop                                    #  102   0x3fb68  1      
                                                                  
.size PpapiPluginStart, .-PpapiPluginStart

