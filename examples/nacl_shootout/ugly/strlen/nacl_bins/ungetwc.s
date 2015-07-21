  .text
  .globl ungetwc
  .type ungetwc, @function

#! file-offset 0x176dc0
#! rip-offset  0x136dc0
#! capacity    160 bytes

# Text                          #  Line  RIP       Bytes  Opcode    
.ungetwc:                       #        0x136dc0  0      OPC=0     
  movq %rbx, -0x18(%rsp)        #  1     0x136dc0  5      OPC=1138  
  movq %r12, -0x10(%rsp)        #  2     0x136dc5  5      OPC=1138  
  movl %edi, %ebx               #  3     0x136dca  2      OPC=1157  
  movq %r13, -0x8(%rsp)         #  4     0x136dcc  5      OPC=1138  
  subl $0x18, %esp              #  5     0x136dd1  3      OPC=2384  
  addq %r15, %rsp               #  6     0x136dd4  3      OPC=72    
  movl %esi, %r13d              #  7     0x136dd7  3      OPC=1157  
  nop                           #  8     0x136dda  1      OPC=1343  
  callq .__nacl_read_tp         #  9     0x136ddb  5      OPC=260   
  leaq -0x480(%rax), %rax       #  10    0x136de0  7      OPC=1069  
  movl %eax, %eax               #  11    0x136de7  2      OPC=1157  
  movl (%r15,%rax,1), %r12d     #  12    0x136de9  4      OPC=1156  
  testq %r12, %r12              #  13    0x136ded  3      OPC=2438  
  je .L_136e20                  #  14    0x136df0  6      OPC=893   
  nop                           #  15    0x136df6  1      OPC=1343  
  nop                           #  16    0x136df7  1      OPC=1343  
  movl %r12d, %r12d             #  17    0x136df8  3      OPC=1157  
  movl 0x38(%r15,%r12,1), %eax  #  18    0x136dfb  5      OPC=1156  
  testl %eax, %eax              #  19    0x136e00  2      OPC=2436  
  nop                           #  20    0x136e02  1      OPC=1343  
  nop                           #  21    0x136e03  1      OPC=1343  
  nop                           #  22    0x136e04  1      OPC=1343  
  nop                           #  23    0x136e05  1      OPC=1343  
  jne .L_136e20                 #  24    0x136e06  6      OPC=963   
  nop                           #  25    0x136e0c  1      OPC=1343  
  nop                           #  26    0x136e0d  1      OPC=1343  
  movl %r12d, %edi              #  27    0x136e0e  3      OPC=1157  
  nop                           #  28    0x136e11  1      OPC=1343  
  nop                           #  29    0x136e12  1      OPC=1343  
  nop                           #  30    0x136e13  1      OPC=1343  
  nop                           #  31    0x136e14  1      OPC=1343  
  nop                           #  32    0x136e15  1      OPC=1343  
  nop                           #  33    0x136e16  1      OPC=1343  
  nop                           #  34    0x136e17  1      OPC=1343  
  nop                           #  35    0x136e18  1      OPC=1343  
  nop                           #  36    0x136e19  1      OPC=1343  
  nop                           #  37    0x136e1a  1      OPC=1343  
  nop                           #  38    0x136e1b  1      OPC=1343  
  nop                           #  39    0x136e1c  1      OPC=1343  
  nop                           #  40    0x136e1d  1      OPC=1343  
  nop                           #  41    0x136e1e  1      OPC=1343  
  nop                           #  42    0x136e1f  1      OPC=1343  
  nop                           #  43    0x136e20  1      OPC=1343  
  nop                           #  44    0x136e21  1      OPC=1343  
  nop                           #  45    0x136e22  1      OPC=1343  
  nop                           #  46    0x136e23  1      OPC=1343  
  nop                           #  47    0x136e24  1      OPC=1343  
  nop                           #  48    0x136e25  1      OPC=1343  
  nop                           #  49    0x136e26  1      OPC=1343  
  callq .__sinit                #  50    0x136e27  5      OPC=260   
.L_136e20:                      #        0x136e2c  0      OPC=0     
  movl %r13d, %edx              #  51    0x136e2c  3      OPC=1157  
  movl %ebx, %esi               #  52    0x136e2f  2      OPC=1157  
  movl %r12d, %edi              #  53    0x136e31  3      OPC=1157  
  movq (%rsp), %rbx             #  54    0x136e34  4      OPC=1161  
  movq 0x8(%rsp), %r12          #  55    0x136e38  5      OPC=1161  
  movq 0x10(%rsp), %r13         #  56    0x136e3d  5      OPC=1161  
  addl $0x18, %esp              #  57    0x136e42  3      OPC=65    
  addq %r15, %rsp               #  58    0x136e45  3      OPC=72    
  nop                           #  59    0x136e48  1      OPC=1343  
  nop                           #  60    0x136e49  1      OPC=1343  
  nop                           #  61    0x136e4a  1      OPC=1343  
  nop                           #  62    0x136e4b  1      OPC=1343  
  jmpq ._ungetwc_r              #  63    0x136e4c  5      OPC=930   
  nop                           #  64    0x136e51  1      OPC=1343  
  nop                           #  65    0x136e52  1      OPC=1343  
  nop                           #  66    0x136e53  1      OPC=1343  
  nop                           #  67    0x136e54  1      OPC=1343  
  nop                           #  68    0x136e55  1      OPC=1343  
  nop                           #  69    0x136e56  1      OPC=1343  
  nop                           #  70    0x136e57  1      OPC=1343  
  nop                           #  71    0x136e58  1      OPC=1343  
  nop                           #  72    0x136e59  1      OPC=1343  
  nop                           #  73    0x136e5a  1      OPC=1343  
  nop                           #  74    0x136e5b  1      OPC=1343  
  nop                           #  75    0x136e5c  1      OPC=1343  
  nop                           #  76    0x136e5d  1      OPC=1343  
  nop                           #  77    0x136e5e  1      OPC=1343  
  nop                           #  78    0x136e5f  1      OPC=1343  
  nop                           #  79    0x136e60  1      OPC=1343  
  nop                           #  80    0x136e61  1      OPC=1343  
  nop                           #  81    0x136e62  1      OPC=1343  
  nop                           #  82    0x136e63  1      OPC=1343  
  nop                           #  83    0x136e64  1      OPC=1343  
  nop                           #  84    0x136e65  1      OPC=1343  
  nop                           #  85    0x136e66  1      OPC=1343  
  nop                           #  86    0x136e67  1      OPC=1343  
  nop                           #  87    0x136e68  1      OPC=1343  
  nop                           #  88    0x136e69  1      OPC=1343  
  nop                           #  89    0x136e6a  1      OPC=1343  
  nop                           #  90    0x136e6b  1      OPC=1343  
                                                                    
.size ungetwc, .-ungetwc

