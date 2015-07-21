  .text
  .globl _ZNSiC1Ev
  .type _ZNSiC1Ev, @function

#! file-offset 0xa7f60
#! rip-offset  0x67f60
#! capacity    256 bytes

# Text                                                                         #  Line  RIP      Bytes  Opcode    
._ZNSiC1Ev:                                                                    #        0x67f60  0      OPC=0     
  movq %r12, -0x8(%rsp)                                                        #  1     0x67f60  5      OPC=1138  
  movl %edi, %r12d                                                             #  2     0x67f65  3      OPC=1157  
  movq %rbx, -0x10(%rsp)                                                       #  3     0x67f68  5      OPC=1138  
  leal 0x8(%r12), %ebx                                                         #  4     0x67f6d  5      OPC=1066  
  subl $0x18, %esp                                                             #  5     0x67f72  3      OPC=2384  
  addq %r15, %rsp                                                              #  6     0x67f75  3      OPC=72    
  movl %ebx, %edi                                                              #  7     0x67f78  2      OPC=1157  
  nop                                                                          #  8     0x67f7a  1      OPC=1343  
  callq ._ZNSt8ios_baseC2Ev                                                    #  9     0x67f7b  5      OPC=260   
  movl %ebx, %ebx                                                              #  10    0x67f80  2      OPC=1157  
  movb $0x0, 0x74(%r15,%rbx,1)                                                 #  11    0x67f82  6      OPC=1140  
  movl %ebx, %ebx                                                              #  12    0x67f88  2      OPC=1157  
  movl $0x0, 0x70(%r15,%rbx,1)                                                 #  13    0x67f8a  9      OPC=1135  
  xorl %esi, %esi                                                              #  14    0x67f93  2      OPC=3758  
  movl %r12d, %r12d                                                            #  15    0x67f95  3      OPC=1157  
  movl $0x1003a82c, (%r15,%r12,1)                                              #  16    0x67f98  8      OPC=1135  
  movl %ebx, %ebx                                                              #  17    0x67fa0  2      OPC=1157  
  movb $0x0, 0x75(%r15,%rbx,1)                                                 #  18    0x67fa2  6      OPC=1140  
  movl %ebx, %edi                                                              #  19    0x67fa8  2      OPC=1157  
  movl %ebx, %ebx                                                              #  20    0x67faa  2      OPC=1157  
  movl $0x0, 0x78(%r15,%rbx,1)                                                 #  21    0x67fac  9      OPC=1135  
  movl %ebx, %ebx                                                              #  22    0x67fb5  2      OPC=1157  
  movl $0x0, 0x7c(%r15,%rbx,1)                                                 #  23    0x67fb7  9      OPC=1135  
  movl %ebx, %ebx                                                              #  24    0x67fc0  2      OPC=1157  
  movl $0x0, 0x80(%r15,%rbx,1)                                                 #  25    0x67fc2  12     OPC=1135  
  movl %ebx, %ebx                                                              #  26    0x67fce  2      OPC=1157  
  movl $0x0, 0x84(%r15,%rbx,1)                                                 #  27    0x67fd0  12     OPC=1135  
  nop                                                                          #  28    0x67fdc  1      OPC=1343  
  nop                                                                          #  29    0x67fdd  1      OPC=1343  
  nop                                                                          #  30    0x67fde  1      OPC=1343  
  nop                                                                          #  31    0x67fdf  1      OPC=1343  
  movl %ebx, %ebx                                                              #  32    0x67fe0  2      OPC=1157  
  movl $0x1003a840, (%r15,%rbx,1)                                              #  33    0x67fe2  8      OPC=1135  
  movl %r12d, %r12d                                                            #  34    0x67fea  3      OPC=1157  
  movl $0x0, 0x4(%r15,%r12,1)                                                  #  35    0x67fed  9      OPC=1135  
  nop                                                                          #  36    0x67ff6  1      OPC=1343  
  nop                                                                          #  37    0x67ff7  1      OPC=1343  
  nop                                                                          #  38    0x67ff8  1      OPC=1343  
  nop                                                                          #  39    0x67ff9  1      OPC=1343  
  nop                                                                          #  40    0x67ffa  1      OPC=1343  
  callq ._ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E  #  41    0x67ffb  5      OPC=260   
  movq 0x8(%rsp), %rbx                                                         #  42    0x68000  5      OPC=1161  
  movq 0x10(%rsp), %r12                                                        #  43    0x68005  5      OPC=1161  
  addl $0x18, %esp                                                             #  44    0x6800a  3      OPC=65    
  addq %r15, %rsp                                                              #  45    0x6800d  3      OPC=72    
  popq %r11                                                                    #  46    0x68010  2      OPC=1694  
  andl $0xffffffe0, %r11d                                                      #  47    0x68012  7      OPC=131   
  nop                                                                          #  48    0x68019  1      OPC=1343  
  nop                                                                          #  49    0x6801a  1      OPC=1343  
  nop                                                                          #  50    0x6801b  1      OPC=1343  
  nop                                                                          #  51    0x6801c  1      OPC=1343  
  addq %r15, %r11                                                              #  52    0x6801d  3      OPC=72    
  jmpq %r11                                                                    #  53    0x68020  3      OPC=928   
  nop                                                                          #  54    0x68023  1      OPC=1343  
  nop                                                                          #  55    0x68024  1      OPC=1343  
  nop                                                                          #  56    0x68025  1      OPC=1343  
  nop                                                                          #  57    0x68026  1      OPC=1343  
  movl %eax, %r12d                                                             #  58    0x68027  3      OPC=1157  
  movl %ebx, %edi                                                              #  59    0x6802a  2      OPC=1157  
  nop                                                                          #  60    0x6802c  1      OPC=1343  
  nop                                                                          #  61    0x6802d  1      OPC=1343  
  nop                                                                          #  62    0x6802e  1      OPC=1343  
  nop                                                                          #  63    0x6802f  1      OPC=1343  
  nop                                                                          #  64    0x68030  1      OPC=1343  
  nop                                                                          #  65    0x68031  1      OPC=1343  
  nop                                                                          #  66    0x68032  1      OPC=1343  
  nop                                                                          #  67    0x68033  1      OPC=1343  
  nop                                                                          #  68    0x68034  1      OPC=1343  
  nop                                                                          #  69    0x68035  1      OPC=1343  
  nop                                                                          #  70    0x68036  1      OPC=1343  
  nop                                                                          #  71    0x68037  1      OPC=1343  
  nop                                                                          #  72    0x68038  1      OPC=1343  
  nop                                                                          #  73    0x68039  1      OPC=1343  
  nop                                                                          #  74    0x6803a  1      OPC=1343  
  nop                                                                          #  75    0x6803b  1      OPC=1343  
  nop                                                                          #  76    0x6803c  1      OPC=1343  
  nop                                                                          #  77    0x6803d  1      OPC=1343  
  nop                                                                          #  78    0x6803e  1      OPC=1343  
  nop                                                                          #  79    0x6803f  1      OPC=1343  
  nop                                                                          #  80    0x68040  1      OPC=1343  
  nop                                                                          #  81    0x68041  1      OPC=1343  
  callq ._ZNSt9basic_iosIcSt11char_traitsIcEED2Ev                              #  82    0x68042  5      OPC=260   
  movl %r12d, %edi                                                             #  83    0x68047  3      OPC=1157  
  nop                                                                          #  84    0x6804a  1      OPC=1343  
  nop                                                                          #  85    0x6804b  1      OPC=1343  
  nop                                                                          #  86    0x6804c  1      OPC=1343  
  nop                                                                          #  87    0x6804d  1      OPC=1343  
  nop                                                                          #  88    0x6804e  1      OPC=1343  
  nop                                                                          #  89    0x6804f  1      OPC=1343  
  nop                                                                          #  90    0x68050  1      OPC=1343  
  nop                                                                          #  91    0x68051  1      OPC=1343  
  nop                                                                          #  92    0x68052  1      OPC=1343  
  nop                                                                          #  93    0x68053  1      OPC=1343  
  nop                                                                          #  94    0x68054  1      OPC=1343  
  nop                                                                          #  95    0x68055  1      OPC=1343  
  nop                                                                          #  96    0x68056  1      OPC=1343  
  nop                                                                          #  97    0x68057  1      OPC=1343  
  nop                                                                          #  98    0x68058  1      OPC=1343  
  nop                                                                          #  99    0x68059  1      OPC=1343  
  nop                                                                          #  100   0x6805a  1      OPC=1343  
  nop                                                                          #  101   0x6805b  1      OPC=1343  
  nop                                                                          #  102   0x6805c  1      OPC=1343  
  nop                                                                          #  103   0x6805d  1      OPC=1343  
  nop                                                                          #  104   0x6805e  1      OPC=1343  
  nop                                                                          #  105   0x6805f  1      OPC=1343  
  nop                                                                          #  106   0x68060  1      OPC=1343  
  nop                                                                          #  107   0x68061  1      OPC=1343  
  callq ._Unwind_Resume                                                        #  108   0x68062  5      OPC=260   
                                                                                                                  
.size _ZNSiC1Ev, .-_ZNSiC1Ev

