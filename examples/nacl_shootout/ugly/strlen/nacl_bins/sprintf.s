  .text
  .globl sprintf
  .type sprintf, @function

#! file-offset 0x165760
#! rip-offset  0x125760
#! capacity    352 bytes

# Text                              #  Line  RIP       Bytes  Opcode    
.sprintf:                           #        0x125760  0      OPC=0     
  movq %rbx, -0x18(%rsp)            #  1     0x125760  5      OPC=1138  
  movq %r12, -0x10(%rsp)            #  2     0x125765  5      OPC=1138  
  movl %edi, %edi                   #  3     0x12576a  2      OPC=1157  
  movq %r13, -0x8(%rsp)             #  4     0x12576c  5      OPC=1138  
  subl $0x158, %esp                 #  5     0x125771  6      OPC=2383  
  addq %r15, %rsp                   #  6     0x125777  3      OPC=72    
  movl %esi, %r12d                  #  7     0x12577a  3      OPC=1157  
  nop                               #  8     0x12577d  1      OPC=1343  
  nop                               #  9     0x12577e  1      OPC=1343  
  nop                               #  10    0x12577f  1      OPC=1343  
  leal 0x13f(%rsp), %eax            #  11    0x125780  7      OPC=1066  
  movq %rdx, 0xa0(%rsp)             #  12    0x125787  8      OPC=1138  
  movq %rcx, 0xa8(%rsp)             #  13    0x12578f  8      OPC=1138  
  movq %r8, 0xb0(%rsp)              #  14    0x125797  8      OPC=1138  
  nop                               #  15    0x12579f  1      OPC=1343  
  movq %r9, 0xb8(%rsp)              #  16    0x1257a0  8      OPC=1138  
  leal 0x80(%rsp), %r13d            #  17    0x1257a8  8      OPC=1066  
  movl %eax, %eax                   #  18    0x1257b0  2      OPC=1157  
  movaps %xmm7, -0xf(%r15,%rax,1)   #  19    0x1257b2  6      OPC=1188  
  movl %eax, %eax                   #  20    0x1257b8  2      OPC=1157  
  movaps %xmm6, -0x1f(%r15,%rax,1)  #  21    0x1257ba  6      OPC=1188  
  movl %eax, %eax                   #  22    0x1257c0  2      OPC=1157  
  movaps %xmm5, -0x2f(%r15,%rax,1)  #  23    0x1257c2  6      OPC=1188  
  movl %eax, %eax                   #  24    0x1257c8  2      OPC=1157  
  movaps %xmm4, -0x3f(%r15,%rax,1)  #  25    0x1257ca  6      OPC=1188  
  movl %eax, %eax                   #  26    0x1257d0  2      OPC=1157  
  movaps %xmm3, -0x4f(%r15,%rax,1)  #  27    0x1257d2  6      OPC=1188  
  movl %eax, %eax                   #  28    0x1257d8  2      OPC=1157  
  movaps %xmm2, -0x5f(%r15,%rax,1)  #  29    0x1257da  6      OPC=1188  
  movl %eax, %eax                   #  30    0x1257e0  2      OPC=1157  
  movaps %xmm1, -0x6f(%r15,%rax,1)  #  31    0x1257e2  6      OPC=1188  
  movl %eax, %eax                   #  32    0x1257e8  2      OPC=1157  
  movaps %xmm0, -0x7f(%r15,%rax,1)  #  33    0x1257ea  6      OPC=1188  
  leal 0x160(%rsp), %eax            #  34    0x1257f0  7      OPC=1066  
  movl %edi, (%rsp)                 #  35    0x1257f7  3      OPC=1136  
  movl %edi, 0x10(%rsp)             #  36    0x1257fa  4      OPC=1136  
  xchgw %ax, %ax                    #  37    0x1257fe  2      OPC=3700  
  movw $0x208, 0xc(%rsp)            #  38    0x125800  7      OPC=1132  
  movl %eax, 0x88(%rsp)             #  39    0x125807  7      OPC=1136  
  leal 0x90(%rsp), %eax             #  40    0x12580e  7      OPC=1066  
  movl $0x7fffffff, 0x8(%rsp)       #  41    0x125815  8      OPC=1135  
  nop                               #  42    0x12581d  1      OPC=1343  
  nop                               #  43    0x12581e  1      OPC=1343  
  nop                               #  44    0x12581f  1      OPC=1343  
  movl $0x7fffffff, 0x14(%rsp)      #  45    0x125820  8      OPC=1135  
  movw $0xffff, 0xe(%rsp)           #  46    0x125828  7      OPC=1132  
  movl $0x10, 0x80(%rsp)            #  47    0x12582f  11     OPC=1135  
  nop                               #  48    0x12583a  1      OPC=1343  
  nop                               #  49    0x12583b  1      OPC=1343  
  nop                               #  50    0x12583c  1      OPC=1343  
  nop                               #  51    0x12583d  1      OPC=1343  
  nop                               #  52    0x12583e  1      OPC=1343  
  nop                               #  53    0x12583f  1      OPC=1343  
  movl $0x30, 0x84(%rsp)            #  54    0x125840  11     OPC=1135  
  movl %eax, 0x8c(%rsp)             #  55    0x12584b  7      OPC=1136  
  nop                               #  56    0x125852  1      OPC=1343  
  nop                               #  57    0x125853  1      OPC=1343  
  nop                               #  58    0x125854  1      OPC=1343  
  nop                               #  59    0x125855  1      OPC=1343  
  nop                               #  60    0x125856  1      OPC=1343  
  nop                               #  61    0x125857  1      OPC=1343  
  nop                               #  62    0x125858  1      OPC=1343  
  nop                               #  63    0x125859  1      OPC=1343  
  nop                               #  64    0x12585a  1      OPC=1343  
  callq .__nacl_read_tp             #  65    0x12585b  5      OPC=260   
  leaq -0x480(%rax), %rax           #  66    0x125860  7      OPC=1069  
  movl %r12d, %edx                  #  67    0x125867  3      OPC=1157  
  movl %r13d, %ecx                  #  68    0x12586a  3      OPC=1157  
  movl %esp, %esi                   #  69    0x12586d  2      OPC=1157  
  movl %eax, %eax                   #  70    0x12586f  2      OPC=1157  
  movl (%r15,%rax,1), %edi          #  71    0x125871  4      OPC=1156  
  nop                               #  72    0x125875  1      OPC=1343  
  nop                               #  73    0x125876  1      OPC=1343  
  nop                               #  74    0x125877  1      OPC=1343  
  nop                               #  75    0x125878  1      OPC=1343  
  nop                               #  76    0x125879  1      OPC=1343  
  nop                               #  77    0x12587a  1      OPC=1343  
  callq ._svfprintf_r               #  78    0x12587b  5      OPC=260   
  movl (%rsp), %edx                 #  79    0x125880  3      OPC=1156  
  movl %edx, %edx                   #  80    0x125883  2      OPC=1157  
  movb $0x0, (%r15,%rdx,1)          #  81    0x125885  5      OPC=1140  
  movq 0x140(%rsp), %rbx            #  82    0x12588a  8      OPC=1161  
  movq 0x148(%rsp), %r12            #  83    0x125892  8      OPC=1161  
  nop                               #  84    0x12589a  1      OPC=1343  
  nop                               #  85    0x12589b  1      OPC=1343  
  nop                               #  86    0x12589c  1      OPC=1343  
  nop                               #  87    0x12589d  1      OPC=1343  
  nop                               #  88    0x12589e  1      OPC=1343  
  nop                               #  89    0x12589f  1      OPC=1343  
  movq 0x150(%rsp), %r13            #  90    0x1258a0  8      OPC=1161  
  addl $0x158, %esp                 #  91    0x1258a8  6      OPC=64    
  addq %r15, %rsp                   #  92    0x1258ae  3      OPC=72    
  popq %r11                         #  93    0x1258b1  2      OPC=1694  
  andl $0xffffffe0, %r11d           #  94    0x1258b3  7      OPC=131   
  nop                               #  95    0x1258ba  1      OPC=1343  
  nop                               #  96    0x1258bb  1      OPC=1343  
  nop                               #  97    0x1258bc  1      OPC=1343  
  nop                               #  98    0x1258bd  1      OPC=1343  
  addq %r15, %r11                   #  99    0x1258be  3      OPC=72    
  jmpq %r11                         #  100   0x1258c1  3      OPC=928   
  nop                               #  101   0x1258c4  1      OPC=1343  
  nop                               #  102   0x1258c5  1      OPC=1343  
  nop                               #  103   0x1258c6  1      OPC=1343  
                                                                        
.size sprintf, .-sprintf

