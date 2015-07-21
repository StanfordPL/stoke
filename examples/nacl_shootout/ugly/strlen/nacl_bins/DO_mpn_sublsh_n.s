  .text
  .globl DO_mpn_sublsh_n
  .type DO_mpn_sublsh_n, @function

#! file-offset 0x8f660
#! rip-offset  0x4f660
#! capacity    160 bytes

# Text                     #  Line  RIP      Bytes  Opcode    
.DO_mpn_sublsh_n:          #        0x4f660  0      OPC=0     
  movq %r13, -0x10(%rsp)   #  1     0x4f660  5      OPC=1138  
  movl %r8d, %r13d         #  2     0x4f665  3      OPC=1157  
  movq %rbx, -0x20(%rsp)   #  3     0x4f668  5      OPC=1138  
  movq %r12, -0x18(%rsp)   #  4     0x4f66d  5      OPC=1138  
  movl %edx, %ebx          #  5     0x4f672  2      OPC=1157  
  movl %edi, %r12d         #  6     0x4f674  3      OPC=1157  
  movq %r14, -0x8(%rsp)    #  7     0x4f677  5      OPC=1138  
  movl %r13d, %edi         #  8     0x4f67c  3      OPC=1157  
  nop                      #  9     0x4f67f  1      OPC=1343  
  subl $0x28, %esp         #  10    0x4f680  3      OPC=2384  
  addq %r15, %rsp          #  11    0x4f683  3      OPC=72    
  movl %esi, %esi          #  12    0x4f686  2      OPC=1157  
  nop                      #  13    0x4f688  1      OPC=1343  
  nop                      #  14    0x4f689  1      OPC=1343  
  nop                      #  15    0x4f68a  1      OPC=1343  
  nop                      #  16    0x4f68b  1      OPC=1343  
  nop                      #  17    0x4f68c  1      OPC=1343  
  nop                      #  18    0x4f68d  1      OPC=1343  
  nop                      #  19    0x4f68e  1      OPC=1343  
  nop                      #  20    0x4f68f  1      OPC=1343  
  nop                      #  21    0x4f690  1      OPC=1343  
  nop                      #  22    0x4f691  1      OPC=1343  
  nop                      #  23    0x4f692  1      OPC=1343  
  nop                      #  24    0x4f693  1      OPC=1343  
  nop                      #  25    0x4f694  1      OPC=1343  
  nop                      #  26    0x4f695  1      OPC=1343  
  nop                      #  27    0x4f696  1      OPC=1343  
  nop                      #  28    0x4f697  1      OPC=1343  
  nop                      #  29    0x4f698  1      OPC=1343  
  nop                      #  30    0x4f699  1      OPC=1343  
  nop                      #  31    0x4f69a  1      OPC=1343  
  callq .__gmpn_lshift     #  32    0x4f69b  5      OPC=260   
  movl %ebx, %ecx          #  33    0x4f6a0  2      OPC=1157  
  movl %eax, %r14d         #  34    0x4f6a2  3      OPC=1157  
  movl %r13d, %edx         #  35    0x4f6a5  3      OPC=1157  
  movl %r12d, %esi         #  36    0x4f6a8  3      OPC=1157  
  movl %r12d, %edi         #  37    0x4f6ab  3      OPC=1157  
  nop                      #  38    0x4f6ae  1      OPC=1343  
  nop                      #  39    0x4f6af  1      OPC=1343  
  nop                      #  40    0x4f6b0  1      OPC=1343  
  nop                      #  41    0x4f6b1  1      OPC=1343  
  nop                      #  42    0x4f6b2  1      OPC=1343  
  nop                      #  43    0x4f6b3  1      OPC=1343  
  nop                      #  44    0x4f6b4  1      OPC=1343  
  nop                      #  45    0x4f6b5  1      OPC=1343  
  nop                      #  46    0x4f6b6  1      OPC=1343  
  nop                      #  47    0x4f6b7  1      OPC=1343  
  nop                      #  48    0x4f6b8  1      OPC=1343  
  nop                      #  49    0x4f6b9  1      OPC=1343  
  nop                      #  50    0x4f6ba  1      OPC=1343  
  callq .__gmpn_sub_n      #  51    0x4f6bb  5      OPC=260   
  movq 0x8(%rsp), %rbx     #  52    0x4f6c0  5      OPC=1161  
  addl %r14d, %eax         #  53    0x4f6c5  3      OPC=67    
  movq 0x10(%rsp), %r12    #  54    0x4f6c8  5      OPC=1161  
  movq 0x18(%rsp), %r13    #  55    0x4f6cd  5      OPC=1161  
  movq 0x20(%rsp), %r14    #  56    0x4f6d2  5      OPC=1161  
  addl $0x28, %esp         #  57    0x4f6d7  3      OPC=65    
  addq %r15, %rsp          #  58    0x4f6da  3      OPC=72    
  popq %r11                #  59    0x4f6dd  2      OPC=1694  
  nop                      #  60    0x4f6df  1      OPC=1343  
  andl $0xffffffe0, %r11d  #  61    0x4f6e0  7      OPC=131   
  nop                      #  62    0x4f6e7  1      OPC=1343  
  nop                      #  63    0x4f6e8  1      OPC=1343  
  nop                      #  64    0x4f6e9  1      OPC=1343  
  nop                      #  65    0x4f6ea  1      OPC=1343  
  addq %r15, %r11          #  66    0x4f6eb  3      OPC=72    
  jmpq %r11                #  67    0x4f6ee  3      OPC=928   
  nop                      #  68    0x4f6f1  1      OPC=1343  
  nop                      #  69    0x4f6f2  1      OPC=1343  
  nop                      #  70    0x4f6f3  1      OPC=1343  
  nop                      #  71    0x4f6f4  1      OPC=1343  
  nop                      #  72    0x4f6f5  1      OPC=1343  
  nop                      #  73    0x4f6f6  1      OPC=1343  
  nop                      #  74    0x4f6f7  1      OPC=1343  
  nop                      #  75    0x4f6f8  1      OPC=1343  
  nop                      #  76    0x4f6f9  1      OPC=1343  
  nop                      #  77    0x4f6fa  1      OPC=1343  
  nop                      #  78    0x4f6fb  1      OPC=1343  
  nop                      #  79    0x4f6fc  1      OPC=1343  
  nop                      #  80    0x4f6fd  1      OPC=1343  
  nop                      #  81    0x4f6fe  1      OPC=1343  
  nop                      #  82    0x4f6ff  1      OPC=1343  
  nop                      #  83    0x4f700  1      OPC=1343  
  nop                      #  84    0x4f701  1      OPC=1343  
  nop                      #  85    0x4f702  1      OPC=1343  
  nop                      #  86    0x4f703  1      OPC=1343  
  nop                      #  87    0x4f704  1      OPC=1343  
  nop                      #  88    0x4f705  1      OPC=1343  
  nop                      #  89    0x4f706  1      OPC=1343  
                                                              
.size DO_mpn_sublsh_n, .-DO_mpn_sublsh_n

