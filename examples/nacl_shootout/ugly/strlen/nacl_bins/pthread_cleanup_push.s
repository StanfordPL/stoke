  .text
  .globl pthread_cleanup_push
  .type pthread_cleanup_push, @function

#! file-offset 0x6e640
#! rip-offset  0x2e640
#! capacity    192 bytes

# Text                           #  Line  RIP      Bytes  Opcode    
.pthread_cleanup_push:           #        0x2e640  0      OPC=0     
  movq %rbx, -0x18(%rsp)         #  1     0x2e640  5      OPC=1138  
  movq %r12, -0x10(%rsp)         #  2     0x2e645  5      OPC=1138  
  movl %edi, %r12d               #  3     0x2e64a  3      OPC=1157  
  movq %r13, -0x8(%rsp)          #  4     0x2e64d  5      OPC=1138  
  movl $0xc, %edi                #  5     0x2e652  5      OPC=1154  
  subl $0x18, %esp               #  6     0x2e657  3      OPC=2384  
  addq %r15, %rsp                #  7     0x2e65a  3      OPC=72    
  movl %esi, %ebx                #  8     0x2e65d  2      OPC=1157  
  nop                            #  9     0x2e65f  1      OPC=1343  
  nop                            #  10    0x2e660  1      OPC=1343  
  nop                            #  11    0x2e661  1      OPC=1343  
  nop                            #  12    0x2e662  1      OPC=1343  
  nop                            #  13    0x2e663  1      OPC=1343  
  nop                            #  14    0x2e664  1      OPC=1343  
  nop                            #  15    0x2e665  1      OPC=1343  
  nop                            #  16    0x2e666  1      OPC=1343  
  nop                            #  17    0x2e667  1      OPC=1343  
  nop                            #  18    0x2e668  1      OPC=1343  
  nop                            #  19    0x2e669  1      OPC=1343  
  nop                            #  20    0x2e66a  1      OPC=1343  
  nop                            #  21    0x2e66b  1      OPC=1343  
  nop                            #  22    0x2e66c  1      OPC=1343  
  nop                            #  23    0x2e66d  1      OPC=1343  
  nop                            #  24    0x2e66e  1      OPC=1343  
  nop                            #  25    0x2e66f  1      OPC=1343  
  nop                            #  26    0x2e670  1      OPC=1343  
  nop                            #  27    0x2e671  1      OPC=1343  
  nop                            #  28    0x2e672  1      OPC=1343  
  nop                            #  29    0x2e673  1      OPC=1343  
  nop                            #  30    0x2e674  1      OPC=1343  
  nop                            #  31    0x2e675  1      OPC=1343  
  nop                            #  32    0x2e676  1      OPC=1343  
  nop                            #  33    0x2e677  1      OPC=1343  
  nop                            #  34    0x2e678  1      OPC=1343  
  nop                            #  35    0x2e679  1      OPC=1343  
  nop                            #  36    0x2e67a  1      OPC=1343  
  callq .malloc                  #  37    0x2e67b  5      OPC=260   
  movl %eax, %r13d               #  38    0x2e680  3      OPC=1157  
  movl %r13d, %r13d              #  39    0x2e683  3      OPC=1157  
  movl %r12d, 0x4(%r15,%r13,1)   #  40    0x2e686  5      OPC=1136  
  movl %r13d, %r13d              #  41    0x2e68b  3      OPC=1157  
  movl %ebx, 0x8(%r15,%r13,1)    #  42    0x2e68e  5      OPC=1136  
  nop                            #  43    0x2e693  1      OPC=1343  
  nop                            #  44    0x2e694  1      OPC=1343  
  nop                            #  45    0x2e695  1      OPC=1343  
  nop                            #  46    0x2e696  1      OPC=1343  
  nop                            #  47    0x2e697  1      OPC=1343  
  nop                            #  48    0x2e698  1      OPC=1343  
  nop                            #  49    0x2e699  1      OPC=1343  
  nop                            #  50    0x2e69a  1      OPC=1343  
  callq .__nacl_read_tp          #  51    0x2e69b  5      OPC=260   
  movl %eax, %eax                #  52    0x2e6a0  2      OPC=1157  
  movl -0x8(%r15,%rax,1), %eax   #  53    0x2e6a2  5      OPC=1156  
  nop                            #  54    0x2e6a7  1      OPC=1343  
  nop                            #  55    0x2e6a8  1      OPC=1343  
  nop                            #  56    0x2e6a9  1      OPC=1343  
  movl %r13d, %r13d              #  57    0x2e6aa  3      OPC=1157  
  movl %eax, (%r15,%r13,1)       #  58    0x2e6ad  4      OPC=1136  
  nop                            #  59    0x2e6b1  1      OPC=1343  
  nop                            #  60    0x2e6b2  1      OPC=1343  
  nop                            #  61    0x2e6b3  1      OPC=1343  
  nop                            #  62    0x2e6b4  1      OPC=1343  
  nop                            #  63    0x2e6b5  1      OPC=1343  
  nop                            #  64    0x2e6b6  1      OPC=1343  
  nop                            #  65    0x2e6b7  1      OPC=1343  
  nop                            #  66    0x2e6b8  1      OPC=1343  
  nop                            #  67    0x2e6b9  1      OPC=1343  
  nop                            #  68    0x2e6ba  1      OPC=1343  
  callq .__nacl_read_tp          #  69    0x2e6bb  5      OPC=260   
  movl %eax, %eax                #  70    0x2e6c0  2      OPC=1157  
  movl %r13d, -0x8(%r15,%rax,1)  #  71    0x2e6c2  5      OPC=1136  
  nop                            #  72    0x2e6c7  1      OPC=1343  
  nop                            #  73    0x2e6c8  1      OPC=1343  
  nop                            #  74    0x2e6c9  1      OPC=1343  
  movq (%rsp), %rbx              #  75    0x2e6ca  4      OPC=1161  
  movq 0x8(%rsp), %r12           #  76    0x2e6ce  5      OPC=1161  
  movq 0x10(%rsp), %r13          #  77    0x2e6d3  5      OPC=1161  
  addl $0x18, %esp               #  78    0x2e6d8  3      OPC=65    
  addq %r15, %rsp                #  79    0x2e6db  3      OPC=72    
  popq %r11                      #  80    0x2e6de  2      OPC=1694  
  andl $0xffffffe0, %r11d        #  81    0x2e6e0  7      OPC=131   
  nop                            #  82    0x2e6e7  1      OPC=1343  
  nop                            #  83    0x2e6e8  1      OPC=1343  
  nop                            #  84    0x2e6e9  1      OPC=1343  
  nop                            #  85    0x2e6ea  1      OPC=1343  
  addq %r15, %r11                #  86    0x2e6eb  3      OPC=72    
  jmpq %r11                      #  87    0x2e6ee  3      OPC=928   
  nop                            #  88    0x2e6f1  1      OPC=1343  
  nop                            #  89    0x2e6f2  1      OPC=1343  
  nop                            #  90    0x2e6f3  1      OPC=1343  
  nop                            #  91    0x2e6f4  1      OPC=1343  
  nop                            #  92    0x2e6f5  1      OPC=1343  
  nop                            #  93    0x2e6f6  1      OPC=1343  
  nop                            #  94    0x2e6f7  1      OPC=1343  
  nop                            #  95    0x2e6f8  1      OPC=1343  
  nop                            #  96    0x2e6f9  1      OPC=1343  
  nop                            #  97    0x2e6fa  1      OPC=1343  
  nop                            #  98    0x2e6fb  1      OPC=1343  
  nop                            #  99    0x2e6fc  1      OPC=1343  
  nop                            #  100   0x2e6fd  1      OPC=1343  
  nop                            #  101   0x2e6fe  1      OPC=1343  
  nop                            #  102   0x2e6ff  1      OPC=1343  
  nop                            #  103   0x2e700  1      OPC=1343  
  nop                            #  104   0x2e701  1      OPC=1343  
  nop                            #  105   0x2e702  1      OPC=1343  
  nop                            #  106   0x2e703  1      OPC=1343  
  nop                            #  107   0x2e704  1      OPC=1343  
  nop                            #  108   0x2e705  1      OPC=1343  
  nop                            #  109   0x2e706  1      OPC=1343  
                                                                    
.size pthread_cleanup_push, .-pthread_cleanup_push

