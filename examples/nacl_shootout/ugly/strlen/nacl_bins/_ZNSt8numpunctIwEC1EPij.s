  .text
  .globl _ZNSt8numpunctIwEC1EPij
  .type _ZNSt8numpunctIwEC1EPij, @function

#! file-offset 0xf6000
#! rip-offset  0xb6000
#! capacity    160 bytes

# Text                                                 #  Line  RIP      Bytes  Opcode    
._ZNSt8numpunctIwEC1EPij:                              #        0xb6000  0      OPC=0     
  pushq %rbx                                           #  1     0xb6000  1      OPC=1861  
  xorl %eax, %eax                                      #  2     0xb6001  2      OPC=3758  
  movl %edi, %ebx                                      #  3     0xb6003  2      OPC=1157  
  movl %esi, %esi                                      #  4     0xb6005  2      OPC=1157  
  movl %ebx, %edi                                      #  5     0xb6007  2      OPC=1157  
  subl $0x10, %esp                                     #  6     0xb6009  3      OPC=2384  
  addq %r15, %rsp                                      #  7     0xb600c  3      OPC=72    
  testl %edx, %edx                                     #  8     0xb600f  2      OPC=2436  
  movl %ebx, %ebx                                      #  9     0xb6011  2      OPC=1157  
  movl $0x1003c228, (%r15,%rbx,1)                      #  10    0xb6013  8      OPC=1135  
  setne %al                                            #  11    0xb601b  3      OPC=2208  
  xchgw %ax, %ax                                       #  12    0xb601e  2      OPC=3700  
  movl %ebx, %ebx                                      #  13    0xb6020  2      OPC=1157  
  movl $0x0, 0x8(%r15,%rbx,1)                          #  14    0xb6022  9      OPC=1135  
  movl %ebx, %ebx                                      #  15    0xb602b  2      OPC=1157  
  movl %eax, 0x4(%r15,%rbx,1)                          #  16    0xb602d  5      OPC=1136  
  nop                                                  #  17    0xb6032  1      OPC=1343  
  nop                                                  #  18    0xb6033  1      OPC=1343  
  nop                                                  #  19    0xb6034  1      OPC=1343  
  nop                                                  #  20    0xb6035  1      OPC=1343  
  nop                                                  #  21    0xb6036  1      OPC=1343  
  nop                                                  #  22    0xb6037  1      OPC=1343  
  nop                                                  #  23    0xb6038  1      OPC=1343  
  nop                                                  #  24    0xb6039  1      OPC=1343  
  nop                                                  #  25    0xb603a  1      OPC=1343  
  callq ._ZNSt8numpunctIwE22_M_initialize_numpunctEPi  #  26    0xb603b  5      OPC=260   
  addl $0x10, %esp                                     #  27    0xb6040  3      OPC=65    
  addq %r15, %rsp                                      #  28    0xb6043  3      OPC=72    
  popq %rbx                                            #  29    0xb6046  1      OPC=1694  
  popq %r11                                            #  30    0xb6047  2      OPC=1694  
  andl $0xffffffe0, %r11d                              #  31    0xb6049  7      OPC=131   
  nop                                                  #  32    0xb6050  1      OPC=1343  
  nop                                                  #  33    0xb6051  1      OPC=1343  
  nop                                                  #  34    0xb6052  1      OPC=1343  
  nop                                                  #  35    0xb6053  1      OPC=1343  
  addq %r15, %r11                                      #  36    0xb6054  3      OPC=72    
  jmpq %r11                                            #  37    0xb6057  3      OPC=928   
  nop                                                  #  38    0xb605a  1      OPC=1343  
  nop                                                  #  39    0xb605b  1      OPC=1343  
  nop                                                  #  40    0xb605c  1      OPC=1343  
  nop                                                  #  41    0xb605d  1      OPC=1343  
  nop                                                  #  42    0xb605e  1      OPC=1343  
  nop                                                  #  43    0xb605f  1      OPC=1343  
  nop                                                  #  44    0xb6060  1      OPC=1343  
  nop                                                  #  45    0xb6061  1      OPC=1343  
  nop                                                  #  46    0xb6062  1      OPC=1343  
  nop                                                  #  47    0xb6063  1      OPC=1343  
  nop                                                  #  48    0xb6064  1      OPC=1343  
  nop                                                  #  49    0xb6065  1      OPC=1343  
  nop                                                  #  50    0xb6066  1      OPC=1343  
  movl %ebx, %edi                                      #  51    0xb6067  2      OPC=1157  
  movl %eax, 0x8(%rsp)                                 #  52    0xb6069  4      OPC=1136  
  nop                                                  #  53    0xb606d  1      OPC=1343  
  nop                                                  #  54    0xb606e  1      OPC=1343  
  nop                                                  #  55    0xb606f  1      OPC=1343  
  nop                                                  #  56    0xb6070  1      OPC=1343  
  nop                                                  #  57    0xb6071  1      OPC=1343  
  nop                                                  #  58    0xb6072  1      OPC=1343  
  nop                                                  #  59    0xb6073  1      OPC=1343  
  nop                                                  #  60    0xb6074  1      OPC=1343  
  nop                                                  #  61    0xb6075  1      OPC=1343  
  nop                                                  #  62    0xb6076  1      OPC=1343  
  nop                                                  #  63    0xb6077  1      OPC=1343  
  nop                                                  #  64    0xb6078  1      OPC=1343  
  nop                                                  #  65    0xb6079  1      OPC=1343  
  nop                                                  #  66    0xb607a  1      OPC=1343  
  nop                                                  #  67    0xb607b  1      OPC=1343  
  nop                                                  #  68    0xb607c  1      OPC=1343  
  nop                                                  #  69    0xb607d  1      OPC=1343  
  nop                                                  #  70    0xb607e  1      OPC=1343  
  nop                                                  #  71    0xb607f  1      OPC=1343  
  nop                                                  #  72    0xb6080  1      OPC=1343  
  nop                                                  #  73    0xb6081  1      OPC=1343  
  callq ._ZNSt6locale5facetD2Ev                        #  74    0xb6082  5      OPC=260   
  movl 0x8(%rsp), %eax                                 #  75    0xb6087  4      OPC=1156  
  movl %eax, %edi                                      #  76    0xb608b  2      OPC=1157  
  nop                                                  #  77    0xb608d  1      OPC=1343  
  nop                                                  #  78    0xb608e  1      OPC=1343  
  nop                                                  #  79    0xb608f  1      OPC=1343  
  nop                                                  #  80    0xb6090  1      OPC=1343  
  nop                                                  #  81    0xb6091  1      OPC=1343  
  nop                                                  #  82    0xb6092  1      OPC=1343  
  nop                                                  #  83    0xb6093  1      OPC=1343  
  nop                                                  #  84    0xb6094  1      OPC=1343  
  nop                                                  #  85    0xb6095  1      OPC=1343  
  nop                                                  #  86    0xb6096  1      OPC=1343  
  nop                                                  #  87    0xb6097  1      OPC=1343  
  nop                                                  #  88    0xb6098  1      OPC=1343  
  nop                                                  #  89    0xb6099  1      OPC=1343  
  nop                                                  #  90    0xb609a  1      OPC=1343  
  nop                                                  #  91    0xb609b  1      OPC=1343  
  nop                                                  #  92    0xb609c  1      OPC=1343  
  nop                                                  #  93    0xb609d  1      OPC=1343  
  nop                                                  #  94    0xb609e  1      OPC=1343  
  nop                                                  #  95    0xb609f  1      OPC=1343  
  nop                                                  #  96    0xb60a0  1      OPC=1343  
  nop                                                  #  97    0xb60a1  1      OPC=1343  
  callq ._Unwind_Resume                                #  98    0xb60a2  5      OPC=260   
                                                                                          
.size _ZNSt8numpunctIwEC1EPij, .-_ZNSt8numpunctIwEC1EPij

