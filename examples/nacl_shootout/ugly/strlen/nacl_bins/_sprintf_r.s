  .text
  .globl _sprintf_r
  .type _sprintf_r, @function

#! file-offset 0x1658c0
#! rip-offset  0x1258c0
#! capacity    288 bytes

# Text                              #  Line  RIP       Bytes  Opcode    
._sprintf_r:                        #        0x1258c0  0      OPC=0     
  subl $0x148, %esp                 #  1     0x1258c0  6      OPC=2383  
  addq %r15, %rsp                   #  2     0x1258c6  3      OPC=72    
  movl %esi, %esi                   #  3     0x1258c9  2      OPC=1157  
  movl %edx, %edx                   #  4     0x1258cb  2      OPC=1157  
  leal 0x13f(%rsp), %eax            #  5     0x1258cd  7      OPC=1066  
  movq %rcx, 0xa8(%rsp)             #  6     0x1258d4  8      OPC=1138  
  nop                               #  7     0x1258dc  1      OPC=1343  
  nop                               #  8     0x1258dd  1      OPC=1343  
  nop                               #  9     0x1258de  1      OPC=1343  
  nop                               #  10    0x1258df  1      OPC=1343  
  movq %r8, 0xb0(%rsp)              #  11    0x1258e0  8      OPC=1138  
  movq %r9, 0xb8(%rsp)              #  12    0x1258e8  8      OPC=1138  
  leal 0x80(%rsp), %ecx             #  13    0x1258f0  7      OPC=1066  
  movl %edi, %edi                   #  14    0x1258f7  2      OPC=1157  
  nop                               #  15    0x1258f9  1      OPC=1343  
  nop                               #  16    0x1258fa  1      OPC=1343  
  nop                               #  17    0x1258fb  1      OPC=1343  
  nop                               #  18    0x1258fc  1      OPC=1343  
  nop                               #  19    0x1258fd  1      OPC=1343  
  nop                               #  20    0x1258fe  1      OPC=1343  
  nop                               #  21    0x1258ff  1      OPC=1343  
  movl %eax, %eax                   #  22    0x125900  2      OPC=1157  
  movaps %xmm7, -0xf(%r15,%rax,1)   #  23    0x125902  6      OPC=1188  
  movl %eax, %eax                   #  24    0x125908  2      OPC=1157  
  movaps %xmm6, -0x1f(%r15,%rax,1)  #  25    0x12590a  6      OPC=1188  
  movl %eax, %eax                   #  26    0x125910  2      OPC=1157  
  movaps %xmm5, -0x2f(%r15,%rax,1)  #  27    0x125912  6      OPC=1188  
  movl %eax, %eax                   #  28    0x125918  2      OPC=1157  
  movaps %xmm4, -0x3f(%r15,%rax,1)  #  29    0x12591a  6      OPC=1188  
  movl %eax, %eax                   #  30    0x125920  2      OPC=1157  
  movaps %xmm3, -0x4f(%r15,%rax,1)  #  31    0x125922  6      OPC=1188  
  movl %eax, %eax                   #  32    0x125928  2      OPC=1157  
  movaps %xmm2, -0x5f(%r15,%rax,1)  #  33    0x12592a  6      OPC=1188  
  movl %eax, %eax                   #  34    0x125930  2      OPC=1157  
  movaps %xmm1, -0x6f(%r15,%rax,1)  #  35    0x125932  6      OPC=1188  
  movl %eax, %eax                   #  36    0x125938  2      OPC=1157  
  movaps %xmm0, -0x7f(%r15,%rax,1)  #  37    0x12593a  6      OPC=1188  
  leal 0x150(%rsp), %eax            #  38    0x125940  7      OPC=1066  
  movl %esi, (%rsp)                 #  39    0x125947  3      OPC=1136  
  movl %esi, 0x10(%rsp)             #  40    0x12594a  4      OPC=1136  
  movl %esp, %esi                   #  41    0x12594e  2      OPC=1157  
  movw $0x208, 0xc(%rsp)            #  42    0x125950  7      OPC=1132  
  movl %eax, 0x88(%rsp)             #  43    0x125957  7      OPC=1136  
  xchgw %ax, %ax                    #  44    0x12595e  2      OPC=3700  
  leal 0x90(%rsp), %eax             #  45    0x125960  7      OPC=1066  
  movl $0x7fffffff, 0x8(%rsp)       #  46    0x125967  8      OPC=1135  
  movl $0x7fffffff, 0x14(%rsp)      #  47    0x12596f  8      OPC=1135  
  movw $0xffff, 0xe(%rsp)           #  48    0x125977  7      OPC=1132  
  xchgw %ax, %ax                    #  49    0x12597e  2      OPC=3700  
  movl $0x18, 0x80(%rsp)            #  50    0x125980  11     OPC=1135  
  movl $0x30, 0x84(%rsp)            #  51    0x12598b  11     OPC=1135  
  movl %eax, 0x8c(%rsp)             #  52    0x125996  7      OPC=1136  
  nop                               #  53    0x12599d  1      OPC=1343  
  nop                               #  54    0x12599e  1      OPC=1343  
  nop                               #  55    0x12599f  1      OPC=1343  
  nop                               #  56    0x1259a0  1      OPC=1343  
  nop                               #  57    0x1259a1  1      OPC=1343  
  nop                               #  58    0x1259a2  1      OPC=1343  
  nop                               #  59    0x1259a3  1      OPC=1343  
  nop                               #  60    0x1259a4  1      OPC=1343  
  nop                               #  61    0x1259a5  1      OPC=1343  
  nop                               #  62    0x1259a6  1      OPC=1343  
  nop                               #  63    0x1259a7  1      OPC=1343  
  nop                               #  64    0x1259a8  1      OPC=1343  
  nop                               #  65    0x1259a9  1      OPC=1343  
  nop                               #  66    0x1259aa  1      OPC=1343  
  nop                               #  67    0x1259ab  1      OPC=1343  
  nop                               #  68    0x1259ac  1      OPC=1343  
  nop                               #  69    0x1259ad  1      OPC=1343  
  nop                               #  70    0x1259ae  1      OPC=1343  
  nop                               #  71    0x1259af  1      OPC=1343  
  nop                               #  72    0x1259b0  1      OPC=1343  
  nop                               #  73    0x1259b1  1      OPC=1343  
  nop                               #  74    0x1259b2  1      OPC=1343  
  nop                               #  75    0x1259b3  1      OPC=1343  
  nop                               #  76    0x1259b4  1      OPC=1343  
  nop                               #  77    0x1259b5  1      OPC=1343  
  nop                               #  78    0x1259b6  1      OPC=1343  
  nop                               #  79    0x1259b7  1      OPC=1343  
  nop                               #  80    0x1259b8  1      OPC=1343  
  nop                               #  81    0x1259b9  1      OPC=1343  
  nop                               #  82    0x1259ba  1      OPC=1343  
  callq ._svfprintf_r               #  83    0x1259bb  5      OPC=260   
  movl (%rsp), %edx                 #  84    0x1259c0  3      OPC=1156  
  movl %edx, %edx                   #  85    0x1259c3  2      OPC=1157  
  movb $0x0, (%r15,%rdx,1)          #  86    0x1259c5  5      OPC=1140  
  addl $0x148, %esp                 #  87    0x1259ca  6      OPC=64    
  addq %r15, %rsp                   #  88    0x1259d0  3      OPC=72    
  popq %r11                         #  89    0x1259d3  2      OPC=1694  
  andl $0xffffffe0, %r11d           #  90    0x1259d5  7      OPC=131   
  nop                               #  91    0x1259dc  1      OPC=1343  
  nop                               #  92    0x1259dd  1      OPC=1343  
  nop                               #  93    0x1259de  1      OPC=1343  
  nop                               #  94    0x1259df  1      OPC=1343  
  addq %r15, %r11                   #  95    0x1259e0  3      OPC=72    
  jmpq %r11                         #  96    0x1259e3  3      OPC=928   
  nop                               #  97    0x1259e6  1      OPC=1343  
                                                                        
.size _sprintf_r, .-_sprintf_r

