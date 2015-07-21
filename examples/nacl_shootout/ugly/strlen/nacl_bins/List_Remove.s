  .text
  .globl List_Remove
  .type List_Remove, @function

#! file-offset 0x66040
#! rip-offset  0x26040
#! capacity    160 bytes

# Text                         #  Line  RIP      Bytes  Opcode    
.List_Remove:                  #        0x26040  0      OPC=0     
  movl %edi, %edi              #  1     0x26040  2      OPC=1157  
  movl %esi, %esi              #  2     0x26042  2      OPC=1157  
  movl %edi, %edi              #  3     0x26044  2      OPC=1157  
  movl (%r15,%rdi,1), %ecx     #  4     0x26046  4      OPC=1156  
  movl %edi, %edi              #  5     0x2604a  2      OPC=1157  
  movl 0x8(%r15,%rdi,1), %edx  #  6     0x2604c  5      OPC=1156  
  leal (%rcx,%rdx,4), %eax     #  7     0x26051  3      OPC=1066  
  movl %edi, %edi              #  8     0x26054  2      OPC=1157  
  movl 0xc(%r15,%rdi,1), %r9d  #  9     0x26056  5      OPC=1156  
  leal (%rcx,%r9,4), %r8d      #  10    0x2605b  4      OPC=1066  
  nop                          #  11    0x2605f  1      OPC=1343  
  subl %edx, %r9d              #  12    0x26060  3      OPC=2386  
  movl %edi, %edi              #  13    0x26063  2      OPC=1157  
  movl %r9d, 0xc(%r15,%rdi,1)  #  14    0x26065  5      OPC=1136  
  movl %edi, %edi              #  15    0x2606a  2      OPC=1157  
  movl $0x0, 0x8(%r15,%rdi,1)  #  16    0x2606c  9      OPC=1135  
  cmpl %r8d, %eax              #  17    0x26075  3      OPC=472   
  jbe .L_260a0                 #  18    0x26078  6      OPC=881   
  nop                          #  19    0x2607e  1      OPC=1343  
  nop                          #  20    0x2607f  1      OPC=1343  
  jmpq .L_260c0                #  21    0x26080  5      OPC=930   
  nop                          #  22    0x26085  1      OPC=1343  
  nop                          #  23    0x26086  1      OPC=1343  
  nop                          #  24    0x26087  1      OPC=1343  
  nop                          #  25    0x26088  1      OPC=1343  
  nop                          #  26    0x26089  1      OPC=1343  
  nop                          #  27    0x2608a  1      OPC=1343  
.L_26080:                      #        0x2608b  0      OPC=0     
  movl %ecx, %ecx              #  28    0x2608b  2      OPC=1157  
  movl %edx, (%r15,%rcx,1)     #  29    0x2608d  4      OPC=1136  
  addl $0x4, %ecx              #  30    0x26091  3      OPC=65    
  addl $0x4, %eax              #  31    0x26094  3      OPC=65    
  cmpl %eax, %r8d              #  32    0x26097  3      OPC=472   
  jb .L_260c0                  #  33    0x2609a  6      OPC=875   
  nop                          #  34    0x260a0  1      OPC=1343  
  nop                          #  35    0x260a1  1      OPC=1343  
  nop                          #  36    0x260a2  1      OPC=1343  
  nop                          #  37    0x260a3  1      OPC=1343  
  nop                          #  38    0x260a4  1      OPC=1343  
  nop                          #  39    0x260a5  1      OPC=1343  
  nop                          #  40    0x260a6  1      OPC=1343  
  nop                          #  41    0x260a7  1      OPC=1343  
  nop                          #  42    0x260a8  1      OPC=1343  
  nop                          #  43    0x260a9  1      OPC=1343  
  nop                          #  44    0x260aa  1      OPC=1343  
  nop                          #  45    0x260ab  1      OPC=1343  
  nop                          #  46    0x260ac  1      OPC=1343  
  nop                          #  47    0x260ad  1      OPC=1343  
  nop                          #  48    0x260ae  1      OPC=1343  
  nop                          #  49    0x260af  1      OPC=1343  
  nop                          #  50    0x260b0  1      OPC=1343  
.L_260a0:                      #        0x260b1  0      OPC=0     
  movl %eax, %eax              #  51    0x260b1  2      OPC=1157  
  movl (%r15,%rax,1), %edx     #  52    0x260b3  4      OPC=1156  
  cmpl %esi, %edx              #  53    0x260b7  2      OPC=472   
  jne .L_26080                 #  54    0x260b9  6      OPC=963   
  nop                          #  55    0x260bf  1      OPC=1343  
  nop                          #  56    0x260c0  1      OPC=1343  
  movl %edi, %edi              #  57    0x260c1  2      OPC=1157  
  subl $0x1, 0xc(%r15,%rdi,1)  #  58    0x260c3  6      OPC=2370  
  addl $0x4, %eax              #  59    0x260c9  3      OPC=65    
  cmpl %eax, %r8d              #  60    0x260cc  3      OPC=472   
  jae .L_260a0                 #  61    0x260cf  6      OPC=869   
  nop                          #  62    0x260d5  1      OPC=1343  
  nop                          #  63    0x260d6  1      OPC=1343  
  nop                          #  64    0x260d7  1      OPC=1343  
  nop                          #  65    0x260d8  1      OPC=1343  
  nop                          #  66    0x260d9  1      OPC=1343  
  nop                          #  67    0x260da  1      OPC=1343  
  nop                          #  68    0x260db  1      OPC=1343  
  nop                          #  69    0x260dc  1      OPC=1343  
.L_260c0:                      #        0x260dd  0      OPC=0     
  popq %r11                    #  70    0x260dd  2      OPC=1694  
  andl $0xffffffe0, %r11d      #  71    0x260df  7      OPC=131   
  nop                          #  72    0x260e6  1      OPC=1343  
  nop                          #  73    0x260e7  1      OPC=1343  
  nop                          #  74    0x260e8  1      OPC=1343  
  nop                          #  75    0x260e9  1      OPC=1343  
  addq %r15, %r11              #  76    0x260ea  3      OPC=72    
  jmpq %r11                    #  77    0x260ed  3      OPC=928   
  nop                          #  78    0x260f0  1      OPC=1343  
  nop                          #  79    0x260f1  1      OPC=1343  
  nop                          #  80    0x260f2  1      OPC=1343  
  nop                          #  81    0x260f3  1      OPC=1343  
  nop                          #  82    0x260f4  1      OPC=1343  
  nop                          #  83    0x260f5  1      OPC=1343  
  nop                          #  84    0x260f6  1      OPC=1343  
  nop                          #  85    0x260f7  1      OPC=1343  
  nop                          #  86    0x260f8  1      OPC=1343  
  nop                          #  87    0x260f9  1      OPC=1343  
  nop                          #  88    0x260fa  1      OPC=1343  
  nop                          #  89    0x260fb  1      OPC=1343  
  nop                          #  90    0x260fc  1      OPC=1343  
  nop                          #  91    0x260fd  1      OPC=1343  
  nop                          #  92    0x260fe  1      OPC=1343  
  nop                          #  93    0x260ff  1      OPC=1343  
  nop                          #  94    0x26100  1      OPC=1343  
  nop                          #  95    0x26101  1      OPC=1343  
  nop                          #  96    0x26102  1      OPC=1343  
  nop                          #  97    0x26103  1      OPC=1343  
                                                                  
.size List_Remove, .-List_Remove

