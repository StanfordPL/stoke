  .text
  .globl DO_mpn_addlsh_n
  .type DO_mpn_addlsh_n, @function

#! file-offset 0x8b6c0
#! rip-offset  0x4b6c0
#! capacity    160 bytes

# Text                     #  Line  RIP      Bytes  Opcode    
.DO_mpn_addlsh_n:          #        0x4b6c0  0      OPC=0     
  movq %r13, -0x10(%rsp)   #  1     0x4b6c0  5      OPC=1138  
  movl %r8d, %r13d         #  2     0x4b6c5  3      OPC=1157  
  movq %rbx, -0x20(%rsp)   #  3     0x4b6c8  5      OPC=1138  
  movq %r12, -0x18(%rsp)   #  4     0x4b6cd  5      OPC=1138  
  movl %edx, %ebx          #  5     0x4b6d2  2      OPC=1157  
  movl %edi, %r12d         #  6     0x4b6d4  3      OPC=1157  
  movq %r14, -0x8(%rsp)    #  7     0x4b6d7  5      OPC=1138  
  movl %r13d, %edi         #  8     0x4b6dc  3      OPC=1157  
  nop                      #  9     0x4b6df  1      OPC=1343  
  subl $0x28, %esp         #  10    0x4b6e0  3      OPC=2384  
  addq %r15, %rsp          #  11    0x4b6e3  3      OPC=72    
  movl %esi, %esi          #  12    0x4b6e6  2      OPC=1157  
  nop                      #  13    0x4b6e8  1      OPC=1343  
  nop                      #  14    0x4b6e9  1      OPC=1343  
  nop                      #  15    0x4b6ea  1      OPC=1343  
  nop                      #  16    0x4b6eb  1      OPC=1343  
  nop                      #  17    0x4b6ec  1      OPC=1343  
  nop                      #  18    0x4b6ed  1      OPC=1343  
  nop                      #  19    0x4b6ee  1      OPC=1343  
  nop                      #  20    0x4b6ef  1      OPC=1343  
  nop                      #  21    0x4b6f0  1      OPC=1343  
  nop                      #  22    0x4b6f1  1      OPC=1343  
  nop                      #  23    0x4b6f2  1      OPC=1343  
  nop                      #  24    0x4b6f3  1      OPC=1343  
  nop                      #  25    0x4b6f4  1      OPC=1343  
  nop                      #  26    0x4b6f5  1      OPC=1343  
  nop                      #  27    0x4b6f6  1      OPC=1343  
  nop                      #  28    0x4b6f7  1      OPC=1343  
  nop                      #  29    0x4b6f8  1      OPC=1343  
  nop                      #  30    0x4b6f9  1      OPC=1343  
  nop                      #  31    0x4b6fa  1      OPC=1343  
  callq .__gmpn_lshift     #  32    0x4b6fb  5      OPC=260   
  movl %ebx, %ecx          #  33    0x4b700  2      OPC=1157  
  movl %eax, %r14d         #  34    0x4b702  3      OPC=1157  
  movl %r13d, %edx         #  35    0x4b705  3      OPC=1157  
  movl %r12d, %esi         #  36    0x4b708  3      OPC=1157  
  movl %r12d, %edi         #  37    0x4b70b  3      OPC=1157  
  nop                      #  38    0x4b70e  1      OPC=1343  
  nop                      #  39    0x4b70f  1      OPC=1343  
  nop                      #  40    0x4b710  1      OPC=1343  
  nop                      #  41    0x4b711  1      OPC=1343  
  nop                      #  42    0x4b712  1      OPC=1343  
  nop                      #  43    0x4b713  1      OPC=1343  
  nop                      #  44    0x4b714  1      OPC=1343  
  nop                      #  45    0x4b715  1      OPC=1343  
  nop                      #  46    0x4b716  1      OPC=1343  
  nop                      #  47    0x4b717  1      OPC=1343  
  nop                      #  48    0x4b718  1      OPC=1343  
  nop                      #  49    0x4b719  1      OPC=1343  
  nop                      #  50    0x4b71a  1      OPC=1343  
  callq .__gmpn_add_n      #  51    0x4b71b  5      OPC=260   
  movq 0x8(%rsp), %rbx     #  52    0x4b720  5      OPC=1161  
  addl %r14d, %eax         #  53    0x4b725  3      OPC=67    
  movq 0x10(%rsp), %r12    #  54    0x4b728  5      OPC=1161  
  movq 0x18(%rsp), %r13    #  55    0x4b72d  5      OPC=1161  
  movq 0x20(%rsp), %r14    #  56    0x4b732  5      OPC=1161  
  addl $0x28, %esp         #  57    0x4b737  3      OPC=65    
  addq %r15, %rsp          #  58    0x4b73a  3      OPC=72    
  popq %r11                #  59    0x4b73d  2      OPC=1694  
  nop                      #  60    0x4b73f  1      OPC=1343  
  andl $0xffffffe0, %r11d  #  61    0x4b740  7      OPC=131   
  nop                      #  62    0x4b747  1      OPC=1343  
  nop                      #  63    0x4b748  1      OPC=1343  
  nop                      #  64    0x4b749  1      OPC=1343  
  nop                      #  65    0x4b74a  1      OPC=1343  
  addq %r15, %r11          #  66    0x4b74b  3      OPC=72    
  jmpq %r11                #  67    0x4b74e  3      OPC=928   
  nop                      #  68    0x4b751  1      OPC=1343  
  nop                      #  69    0x4b752  1      OPC=1343  
  nop                      #  70    0x4b753  1      OPC=1343  
  nop                      #  71    0x4b754  1      OPC=1343  
  nop                      #  72    0x4b755  1      OPC=1343  
  nop                      #  73    0x4b756  1      OPC=1343  
  nop                      #  74    0x4b757  1      OPC=1343  
  nop                      #  75    0x4b758  1      OPC=1343  
  nop                      #  76    0x4b759  1      OPC=1343  
  nop                      #  77    0x4b75a  1      OPC=1343  
  nop                      #  78    0x4b75b  1      OPC=1343  
  nop                      #  79    0x4b75c  1      OPC=1343  
  nop                      #  80    0x4b75d  1      OPC=1343  
  nop                      #  81    0x4b75e  1      OPC=1343  
  nop                      #  82    0x4b75f  1      OPC=1343  
  nop                      #  83    0x4b760  1      OPC=1343  
  nop                      #  84    0x4b761  1      OPC=1343  
  nop                      #  85    0x4b762  1      OPC=1343  
  nop                      #  86    0x4b763  1      OPC=1343  
  nop                      #  87    0x4b764  1      OPC=1343  
  nop                      #  88    0x4b765  1      OPC=1343  
  nop                      #  89    0x4b766  1      OPC=1343  
                                                              
.size DO_mpn_addlsh_n, .-DO_mpn_addlsh_n

