  .text
  .globl fputwc
  .type fputwc, @function

#! file-offset 0x186ec0
#! rip-offset  0x146ec0
#! capacity    160 bytes

# Text                          #  Line  RIP       Bytes  Opcode    
.fputwc:                        #        0x146ec0  0      OPC=0     
  movq %rbx, -0x18(%rsp)        #  1     0x146ec0  5      OPC=1138  
  movq %r12, -0x10(%rsp)        #  2     0x146ec5  5      OPC=1138  
  movl %edi, %ebx               #  3     0x146eca  2      OPC=1157  
  movq %r13, -0x8(%rsp)         #  4     0x146ecc  5      OPC=1138  
  subl $0x18, %esp              #  5     0x146ed1  3      OPC=2384  
  addq %r15, %rsp               #  6     0x146ed4  3      OPC=72    
  movl %esi, %r13d              #  7     0x146ed7  3      OPC=1157  
  nop                           #  8     0x146eda  1      OPC=1343  
  callq .__nacl_read_tp         #  9     0x146edb  5      OPC=260   
  leaq -0x480(%rax), %rax       #  10    0x146ee0  7      OPC=1069  
  movl %eax, %eax               #  11    0x146ee7  2      OPC=1157  
  movl (%r15,%rax,1), %r12d     #  12    0x146ee9  4      OPC=1156  
  testq %r12, %r12              #  13    0x146eed  3      OPC=2438  
  je .L_146f20                  #  14    0x146ef0  6      OPC=893   
  nop                           #  15    0x146ef6  1      OPC=1343  
  nop                           #  16    0x146ef7  1      OPC=1343  
  movl %r12d, %r12d             #  17    0x146ef8  3      OPC=1157  
  movl 0x38(%r15,%r12,1), %eax  #  18    0x146efb  5      OPC=1156  
  testl %eax, %eax              #  19    0x146f00  2      OPC=2436  
  nop                           #  20    0x146f02  1      OPC=1343  
  nop                           #  21    0x146f03  1      OPC=1343  
  nop                           #  22    0x146f04  1      OPC=1343  
  nop                           #  23    0x146f05  1      OPC=1343  
  jne .L_146f20                 #  24    0x146f06  6      OPC=963   
  nop                           #  25    0x146f0c  1      OPC=1343  
  nop                           #  26    0x146f0d  1      OPC=1343  
  movl %r12d, %edi              #  27    0x146f0e  3      OPC=1157  
  nop                           #  28    0x146f11  1      OPC=1343  
  nop                           #  29    0x146f12  1      OPC=1343  
  nop                           #  30    0x146f13  1      OPC=1343  
  nop                           #  31    0x146f14  1      OPC=1343  
  nop                           #  32    0x146f15  1      OPC=1343  
  nop                           #  33    0x146f16  1      OPC=1343  
  nop                           #  34    0x146f17  1      OPC=1343  
  nop                           #  35    0x146f18  1      OPC=1343  
  nop                           #  36    0x146f19  1      OPC=1343  
  nop                           #  37    0x146f1a  1      OPC=1343  
  nop                           #  38    0x146f1b  1      OPC=1343  
  nop                           #  39    0x146f1c  1      OPC=1343  
  nop                           #  40    0x146f1d  1      OPC=1343  
  nop                           #  41    0x146f1e  1      OPC=1343  
  nop                           #  42    0x146f1f  1      OPC=1343  
  nop                           #  43    0x146f20  1      OPC=1343  
  nop                           #  44    0x146f21  1      OPC=1343  
  nop                           #  45    0x146f22  1      OPC=1343  
  nop                           #  46    0x146f23  1      OPC=1343  
  nop                           #  47    0x146f24  1      OPC=1343  
  nop                           #  48    0x146f25  1      OPC=1343  
  nop                           #  49    0x146f26  1      OPC=1343  
  callq .__sinit                #  50    0x146f27  5      OPC=260   
.L_146f20:                      #        0x146f2c  0      OPC=0     
  movl %r13d, %edx              #  51    0x146f2c  3      OPC=1157  
  movl %ebx, %esi               #  52    0x146f2f  2      OPC=1157  
  movl %r12d, %edi              #  53    0x146f31  3      OPC=1157  
  movq (%rsp), %rbx             #  54    0x146f34  4      OPC=1161  
  movq 0x8(%rsp), %r12          #  55    0x146f38  5      OPC=1161  
  movq 0x10(%rsp), %r13         #  56    0x146f3d  5      OPC=1161  
  addl $0x18, %esp              #  57    0x146f42  3      OPC=65    
  addq %r15, %rsp               #  58    0x146f45  3      OPC=72    
  nop                           #  59    0x146f48  1      OPC=1343  
  nop                           #  60    0x146f49  1      OPC=1343  
  nop                           #  61    0x146f4a  1      OPC=1343  
  nop                           #  62    0x146f4b  1      OPC=1343  
  jmpq ._fputwc_r               #  63    0x146f4c  5      OPC=930   
  nop                           #  64    0x146f51  1      OPC=1343  
  nop                           #  65    0x146f52  1      OPC=1343  
  nop                           #  66    0x146f53  1      OPC=1343  
  nop                           #  67    0x146f54  1      OPC=1343  
  nop                           #  68    0x146f55  1      OPC=1343  
  nop                           #  69    0x146f56  1      OPC=1343  
  nop                           #  70    0x146f57  1      OPC=1343  
  nop                           #  71    0x146f58  1      OPC=1343  
  nop                           #  72    0x146f59  1      OPC=1343  
  nop                           #  73    0x146f5a  1      OPC=1343  
  nop                           #  74    0x146f5b  1      OPC=1343  
  nop                           #  75    0x146f5c  1      OPC=1343  
  nop                           #  76    0x146f5d  1      OPC=1343  
  nop                           #  77    0x146f5e  1      OPC=1343  
  nop                           #  78    0x146f5f  1      OPC=1343  
  nop                           #  79    0x146f60  1      OPC=1343  
  nop                           #  80    0x146f61  1      OPC=1343  
  nop                           #  81    0x146f62  1      OPC=1343  
  nop                           #  82    0x146f63  1      OPC=1343  
  nop                           #  83    0x146f64  1      OPC=1343  
  nop                           #  84    0x146f65  1      OPC=1343  
  nop                           #  85    0x146f66  1      OPC=1343  
  nop                           #  86    0x146f67  1      OPC=1343  
  nop                           #  87    0x146f68  1      OPC=1343  
  nop                           #  88    0x146f69  1      OPC=1343  
  nop                           #  89    0x146f6a  1      OPC=1343  
  nop                           #  90    0x146f6b  1      OPC=1343  
                                                                    
.size fputwc, .-fputwc

