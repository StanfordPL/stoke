  .text
  .globl _ZNKSt5ctypeIcE10do_tolowerEPcPKc
  .type _ZNKSt5ctypeIcE10do_tolowerEPcPKc, @function

#! file-offset 0x124660
#! rip-offset  0xe4660
#! capacity    128 bytes

# Text                               #  Line  RIP      Bytes  Opcode    
._ZNKSt5ctypeIcE10do_tolowerEPcPKc:  #        0xe4660  0      OPC=0     
  pushq %r13                         #  1     0xe4660  2      OPC=1861  
  movl %edx, %r13d                   #  2     0xe4662  3      OPC=1157  
  pushq %r12                         #  3     0xe4665  2      OPC=1861  
  movl %edi, %r12d                   #  4     0xe4667  3      OPC=1157  
  pushq %rbx                         #  5     0xe466a  1      OPC=1861  
  movl %esi, %ebx                    #  6     0xe466b  2      OPC=1157  
  cmpl %r13d, %ebx                   #  7     0xe466d  3      OPC=472   
  jae .L_e46c0                       #  8     0xe4670  6      OPC=869   
  nop                                #  9     0xe4676  1      OPC=1343  
  nop                                #  10    0xe4677  1      OPC=1343  
  nop                                #  11    0xe4678  1      OPC=1343  
  nop                                #  12    0xe4679  1      OPC=1343  
  nop                                #  13    0xe467a  1      OPC=1343  
  nop                                #  14    0xe467b  1      OPC=1343  
  nop                                #  15    0xe467c  1      OPC=1343  
  nop                                #  16    0xe467d  1      OPC=1343  
  nop                                #  17    0xe467e  1      OPC=1343  
  nop                                #  18    0xe467f  1      OPC=1343  
  nop                                #  19    0xe4680  1      OPC=1343  
  nop                                #  20    0xe4681  1      OPC=1343  
  nop                                #  21    0xe4682  1      OPC=1343  
  nop                                #  22    0xe4683  1      OPC=1343  
  nop                                #  23    0xe4684  1      OPC=1343  
  nop                                #  24    0xe4685  1      OPC=1343  
.L_e4680:                            #        0xe4686  0      OPC=0     
  movl %r12d, %r12d                  #  25    0xe4686  3      OPC=1157  
  movl (%r15,%r12,1), %eax           #  26    0xe4689  4      OPC=1156  
  movl %ebx, %ebx                    #  27    0xe468d  2      OPC=1157  
  movsbl (%r15,%rbx,1), %esi         #  28    0xe468f  5      OPC=1280  
  movl %r12d, %edi                   #  29    0xe4694  3      OPC=1157  
  movl %eax, %eax                    #  30    0xe4697  2      OPC=1157  
  movl 0x10(%r15,%rax,1), %eax       #  31    0xe4699  5      OPC=1156  
  andl $0xffffffe0, %eax             #  32    0xe469e  6      OPC=131   
  nop                                #  33    0xe46a4  1      OPC=1343  
  nop                                #  34    0xe46a5  1      OPC=1343  
  nop                                #  35    0xe46a6  1      OPC=1343  
  addq %r15, %rax                    #  36    0xe46a7  3      OPC=72    
  callq %rax                         #  37    0xe46aa  2      OPC=258   
  movl %ebx, %ebx                    #  38    0xe46ac  2      OPC=1157  
  movb %al, (%r15,%rbx,1)            #  39    0xe46ae  4      OPC=1141  
  addl $0x1, %ebx                    #  40    0xe46b2  3      OPC=65    
  cmpl %ebx, %r13d                   #  41    0xe46b5  3      OPC=472   
  ja .L_e4680                        #  42    0xe46b8  6      OPC=863   
  nop                                #  43    0xe46be  1      OPC=1343  
  nop                                #  44    0xe46bf  1      OPC=1343  
  nop                                #  45    0xe46c0  1      OPC=1343  
  nop                                #  46    0xe46c1  1      OPC=1343  
  nop                                #  47    0xe46c2  1      OPC=1343  
  nop                                #  48    0xe46c3  1      OPC=1343  
  nop                                #  49    0xe46c4  1      OPC=1343  
  nop                                #  50    0xe46c5  1      OPC=1343  
  nop                                #  51    0xe46c6  1      OPC=1343  
  nop                                #  52    0xe46c7  1      OPC=1343  
  nop                                #  53    0xe46c8  1      OPC=1343  
  nop                                #  54    0xe46c9  1      OPC=1343  
  nop                                #  55    0xe46ca  1      OPC=1343  
  nop                                #  56    0xe46cb  1      OPC=1343  
  nop                                #  57    0xe46cc  1      OPC=1343  
  nop                                #  58    0xe46cd  1      OPC=1343  
  nop                                #  59    0xe46ce  1      OPC=1343  
  nop                                #  60    0xe46cf  1      OPC=1343  
  nop                                #  61    0xe46d0  1      OPC=1343  
  nop                                #  62    0xe46d1  1      OPC=1343  
.L_e46c0:                            #        0xe46d2  0      OPC=0     
  popq %rbx                          #  63    0xe46d2  1      OPC=1694  
  popq %r12                          #  64    0xe46d3  2      OPC=1694  
  movl %r13d, %eax                   #  65    0xe46d5  3      OPC=1157  
  popq %r13                          #  66    0xe46d8  2      OPC=1694  
  popq %r11                          #  67    0xe46da  2      OPC=1694  
  andl $0xffffffe0, %r11d            #  68    0xe46dc  7      OPC=131   
  nop                                #  69    0xe46e3  1      OPC=1343  
  nop                                #  70    0xe46e4  1      OPC=1343  
  nop                                #  71    0xe46e5  1      OPC=1343  
  nop                                #  72    0xe46e6  1      OPC=1343  
  addq %r15, %r11                    #  73    0xe46e7  3      OPC=72    
  jmpq %r11                          #  74    0xe46ea  3      OPC=928   
  nop                                #  75    0xe46ed  1      OPC=1343  
  nop                                #  76    0xe46ee  1      OPC=1343  
  nop                                #  77    0xe46ef  1      OPC=1343  
  nop                                #  78    0xe46f0  1      OPC=1343  
  nop                                #  79    0xe46f1  1      OPC=1343  
  nop                                #  80    0xe46f2  1      OPC=1343  
  nop                                #  81    0xe46f3  1      OPC=1343  
  nop                                #  82    0xe46f4  1      OPC=1343  
  nop                                #  83    0xe46f5  1      OPC=1343  
  nop                                #  84    0xe46f6  1      OPC=1343  
  nop                                #  85    0xe46f7  1      OPC=1343  
  nop                                #  86    0xe46f8  1      OPC=1343  
                                                                        
.size _ZNKSt5ctypeIcE10do_tolowerEPcPKc, .-_ZNKSt5ctypeIcE10do_tolowerEPcPKc

