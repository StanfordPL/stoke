  .text
  .globl PpapiPluginStart
  .type PpapiPluginStart, @function

#! file-offset 0x3fb00
#! rip-offset  0x3fb00
#! capacity    384 bytes

# Text                                   #  Line  RIP      Bytes  
.PpapiPluginStart:                       #        0x3fb00  0      
  pushq %r12                             #  1     0x3fb00  3      
  movl %edi, %r12d                       #  2     0x3fb03  3      
  pushq %rbx                             #  3     0x3fb06  2      
  subl $0x18, %esp                       #  4     0x3fb08  3      
  addq %r15, %rsp                        #  5     0x3fb0b  3      
  movl 0xfff09e4(%rip), %eax             #  6     0x3fb0e  6      
  movl %eax, %eax                        #  7     0x3fb14  2      
  movl (%r15,%rax,1), %ecx               #  8     0x3fb16  4      
  testl %ecx, %ecx                       #  9     0x3fb1a  2      
  je .L_3fb40                            #  10    0x3fb1c  6      
  nop                                    #  11    0x3fb22  1      
.L_3fb20:                                #        0x3fb23  0      
  addl $0x4, %eax                        #  12    0x3fb23  3      
  movl %eax, %eax                        #  13    0x3fb26  2      
  movl (%r15,%rax,1), %edx               #  14    0x3fb28  4      
  testl %edx, %edx                       #  15    0x3fb2c  2      
  jne .L_3fb20                           #  16    0x3fb2e  6      
  nop                                    #  17    0x3fb34  1      
  nop                                    #  18    0x3fb35  1      
.L_3fb40:                                #        0x3fb36  0      
  addl $0x4, %eax                        #  19    0x3fb36  3      
  movl %eax, %eax                        #  20    0x3fb39  2      
  movl (%r15,%rax,1), %edx               #  21    0x3fb3b  4      
  testl %edx, %edx                       #  22    0x3fb3f  2      
  jne .L_3fb80                           #  23    0x3fb41  6      
  jmpq .L_3fc40                          #  24    0x3fb47  5      
  nop                                    #  25    0x3fb4c  1      
.L_3fb60:                                #        0x3fb4d  0      
  addl $0x8, %eax                        #  26    0x3fb4d  3      
  movl %eax, %eax                        #  27    0x3fb50  2      
  movl (%r15,%rax,1), %edx               #  28    0x3fb52  4      
  testl %edx, %edx                       #  29    0x3fb56  2      
  je .L_3fc40                            #  30    0x3fb58  6      
  nop                                    #  31    0x3fb5e  1      
.L_3fb80:                                #        0x3fb5f  0      
  cmpl $0x20, %edx                       #  32    0x3fb5f  3      
  jne .L_3fb60                           #  33    0x3fb62  6      
  movl %eax, %eax                        #  34    0x3fb68  2      
  movl 0x4(%r15,%rax,1), %eax            #  35    0x3fb6a  5      
  testq %rax, %rax                       #  36    0x3fb6f  3      
  je .L_3fc40                            #  37    0x3fb72  6      
  nop                                    #  38    0x3fb78  1      
.L_3fba0:                                #        0x3fb79  0      
  movl $0x8, %edx                        #  39    0x3fb79  5      
  movl %esp, %esi                        #  40    0x3fb7e  2      
  movl $0x10020921, %edi                 #  41    0x3fb80  5      
  nop                                    #  42    0x3fb85  1      
  andl $0xffffffe0, %eax                 #  43    0x3fb86  5      
  addq %r15, %rax                        #  44    0x3fb8b  3      
  callq %rax                             #  45    0x3fb8e  2      
  cmpl $0x8, %eax                        #  46    0x3fb90  3      
  movl %esp, %ebx                        #  47    0x3fb93  2      
  je .L_3fbe0                            #  48    0x3fb95  6      
  movl $0x100208f8, %edi                 #  49    0x3fb9b  5      
  nop                                    #  50    0x3fba0  1      
  callq .fatal_error                     #  51    0x3fba1  5      
.L_3fbe0:                                #        0x3fba6  0      
  movl %ebx, %edi                        #  52    0x3fba6  2      
  nop                                    #  53    0x3fba8  1      
  nop                                    #  54    0x3fba9  1      
  callq .__nacl_register_thread_creator  #  55    0x3fbaa  5      
  movl (%rsp), %eax                      #  56    0x3fbaf  3      
  movl %r12d, %edi                       #  57    0x3fbb2  3      
  nop                                    #  58    0x3fbb5  1      
  nop                                    #  59    0x3fbb6  1      
  andl $0xffffffe0, %eax                 #  60    0x3fbb7  5      
  addq %r15, %rax                        #  61    0x3fbbc  3      
  callq %rax                             #  62    0x3fbbf  2      
  addl $0x18, %esp                       #  63    0x3fbc1  3      
  addq %r15, %rsp                        #  64    0x3fbc4  3      
  popq %rbx                              #  65    0x3fbc7  2      
  popq %r12                              #  66    0x3fbc9  3      
  popq %r11                              #  67    0x3fbcc  3      
  andl $0xffffffe0, %r11d                #  68    0x3fbcf  7      
  addq %r15, %r11                        #  69    0x3fbd6  3      
  jmpq %r11                              #  70    0x3fbd9  3      
  nop                                    #  71    0x3fbdc  1      
.L_3fc40:                                #        0x3fbdd  0      
  movl $0x10020888, %edi                 #  72    0x3fbdd  5      
  nop                                    #  73    0x3fbe2  1      
  nop                                    #  74    0x3fbe3  1      
  callq .fatal_error                     #  75    0x3fbe4  5      
  xorl %eax, %eax                        #  76    0x3fbe9  2      
  jmpq .L_3fba0                          #  77    0x3fbeb  5      
  nop                                    #  78    0x3fbf0  1      
  nop                                    #  79    0x3fbf1  1      
  nop                                    #  80    0x3fbf2  1      
  nop                                    #  81    0x3fbf3  1      
  nop                                    #  82    0x3fbf4  1      
  nop                                    #  83    0x3fbf5  1      
  nop                                    #  84    0x3fbf6  1      
  nop                                    #  85    0x3fbf7  1      
  nop                                    #  86    0x3fbf8  1      
  nop                                    #  87    0x3fbf9  1      
  nop                                    #  88    0x3fbfa  1      
  nop                                    #  89    0x3fbfb  1      
  nop                                    #  90    0x3fbfc  1      
  nop                                    #  91    0x3fbfd  1      
  nop                                    #  92    0x3fbfe  1      
  nop                                    #  93    0x3fbff  1      
  nop                                    #  94    0x3fc00  1      
  nop                                    #  95    0x3fc01  1      
  nop                                    #  96    0x3fc02  1      
  nop                                    #  97    0x3fc03  1      
  nop                                    #  98    0x3fc04  1      
  nop                                    #  99    0x3fc05  1      
  nop                                    #  100   0x3fc06  1      
  nop                                    #  101   0x3fc07  1      
  nop                                    #  102   0x3fc08  1      
                                                                  
.size PpapiPluginStart, .-PpapiPluginStart

