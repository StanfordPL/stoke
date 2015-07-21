  .text
  .globl _ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
  .type _ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E, @function

#! file-offset 0xa5560
#! rip-offset  0x65560
#! capacity    160 bytes

# Text                                                                      #  Line  RIP      Bytes  Opcode    
._ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E:      #        0x65560  0      OPC=0     
  movq %rbx, -0x10(%rsp)                                                    #  1     0x65560  5      OPC=1138  
  movl %edi, %ebx                                                           #  2     0x65565  2      OPC=1157  
  movq %r12, -0x8(%rsp)                                                     #  3     0x65567  5      OPC=1138  
  movl %ebx, %edi                                                           #  4     0x6556c  2      OPC=1157  
  subl $0x18, %esp                                                          #  5     0x6556e  3      OPC=2384  
  addq %r15, %rsp                                                           #  6     0x65571  3      OPC=72    
  movl %esi, %r12d                                                          #  7     0x65574  3      OPC=1157  
  nop                                                                       #  8     0x65577  1      OPC=1343  
  nop                                                                       #  9     0x65578  1      OPC=1343  
  nop                                                                       #  10    0x65579  1      OPC=1343  
  nop                                                                       #  11    0x6557a  1      OPC=1343  
  callq ._ZNSt8ios_base7_M_initEv                                           #  12    0x6557b  5      OPC=260   
  leal 0x6c(%rbx), %esi                                                     #  13    0x65580  3      OPC=1066  
  movl %ebx, %edi                                                           #  14    0x65583  2      OPC=1157  
  nop                                                                       #  15    0x65585  1      OPC=1343  
  nop                                                                       #  16    0x65586  1      OPC=1343  
  nop                                                                       #  17    0x65587  1      OPC=1343  
  nop                                                                       #  18    0x65588  1      OPC=1343  
  nop                                                                       #  19    0x65589  1      OPC=1343  
  nop                                                                       #  20    0x6558a  1      OPC=1343  
  nop                                                                       #  21    0x6558b  1      OPC=1343  
  nop                                                                       #  22    0x6558c  1      OPC=1343  
  nop                                                                       #  23    0x6558d  1      OPC=1343  
  nop                                                                       #  24    0x6558e  1      OPC=1343  
  nop                                                                       #  25    0x6558f  1      OPC=1343  
  nop                                                                       #  26    0x65590  1      OPC=1343  
  nop                                                                       #  27    0x65591  1      OPC=1343  
  nop                                                                       #  28    0x65592  1      OPC=1343  
  nop                                                                       #  29    0x65593  1      OPC=1343  
  nop                                                                       #  30    0x65594  1      OPC=1343  
  nop                                                                       #  31    0x65595  1      OPC=1343  
  nop                                                                       #  32    0x65596  1      OPC=1343  
  nop                                                                       #  33    0x65597  1      OPC=1343  
  nop                                                                       #  34    0x65598  1      OPC=1343  
  nop                                                                       #  35    0x65599  1      OPC=1343  
  nop                                                                       #  36    0x6559a  1      OPC=1343  
  callq ._ZNSt9basic_iosIcSt11char_traitsIcEE15_M_cache_localeERKSt6locale  #  37    0x6559b  5      OPC=260   
  xorl %eax, %eax                                                           #  38    0x655a0  2      OPC=3758  
  testl %r12d, %r12d                                                        #  39    0x655a2  3      OPC=2436  
  movl %ebx, %ebx                                                           #  40    0x655a5  2      OPC=1157  
  movl %r12d, 0x78(%r15,%rbx,1)                                             #  41    0x655a7  5      OPC=1136  
  sete %al                                                                  #  42    0x655ac  3      OPC=2178  
  movl %ebx, %ebx                                                           #  43    0x655af  2      OPC=1157  
  movb $0x0, 0x74(%r15,%rbx,1)                                              #  44    0x655b1  6      OPC=1140  
  movl %ebx, %ebx                                                           #  45    0x655b7  2      OPC=1157  
  movb $0x0, 0x75(%r15,%rbx,1)                                              #  46    0x655b9  6      OPC=1140  
  nop                                                                       #  47    0x655bf  1      OPC=1343  
  movl %ebx, %ebx                                                           #  48    0x655c0  2      OPC=1157  
  movl $0x0, 0x70(%r15,%rbx,1)                                              #  49    0x655c2  9      OPC=1135  
  movl %ebx, %ebx                                                           #  50    0x655cb  2      OPC=1157  
  movl $0x0, 0x10(%r15,%rbx,1)                                              #  51    0x655cd  9      OPC=1135  
  movl %ebx, %ebx                                                           #  52    0x655d6  2      OPC=1157  
  movl %eax, 0x14(%r15,%rbx,1)                                              #  53    0x655d8  5      OPC=1136  
  nop                                                                       #  54    0x655dd  1      OPC=1343  
  nop                                                                       #  55    0x655de  1      OPC=1343  
  nop                                                                       #  56    0x655df  1      OPC=1343  
  movq 0x10(%rsp), %r12                                                     #  57    0x655e0  5      OPC=1161  
  movq 0x8(%rsp), %rbx                                                      #  58    0x655e5  5      OPC=1161  
  addl $0x18, %esp                                                          #  59    0x655ea  3      OPC=65    
  addq %r15, %rsp                                                           #  60    0x655ed  3      OPC=72    
  popq %r11                                                                 #  61    0x655f0  2      OPC=1694  
  andl $0xffffffe0, %r11d                                                   #  62    0x655f2  7      OPC=131   
  nop                                                                       #  63    0x655f9  1      OPC=1343  
  nop                                                                       #  64    0x655fa  1      OPC=1343  
  nop                                                                       #  65    0x655fb  1      OPC=1343  
  nop                                                                       #  66    0x655fc  1      OPC=1343  
  addq %r15, %r11                                                           #  67    0x655fd  3      OPC=72    
  jmpq %r11                                                                 #  68    0x65600  3      OPC=928   
  nop                                                                       #  69    0x65603  1      OPC=1343  
  nop                                                                       #  70    0x65604  1      OPC=1343  
  nop                                                                       #  71    0x65605  1      OPC=1343  
  nop                                                                       #  72    0x65606  1      OPC=1343  
                                                                                                               
.size _ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E, .-_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E

