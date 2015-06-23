  .text
  .globl __gmpn_mul_1
  .type __gmpn_mul_1, @function

#! file-offset 0x7cd00
#! rip-offset  0x3cd00
#! capacity    224 bytes

# Text                       #  Line  RIP      Bytes  Opcode    
.__gmpn_mul_1:               #        0x3cd00  0      OPC=0     
  pushq %r12                 #  1     0x3cd00  2      OPC=1861  
  movl %esi, %esi            #  2     0x3cd02  2      OPC=1157  
  movl %edi, %edi            #  3     0x3cd04  2      OPC=1157  
  xorl %eax, %eax            #  4     0x3cd06  2      OPC=3758  
  pushq %rbx                 #  5     0x3cd08  1      OPC=1861  
  movzwl %cx, %ebx           #  6     0x3cd09  3      OPC=1303  
  movl %esi, %esi            #  7     0x3cd0c  2      OPC=1157  
  movl (%r15,%rsi,1), %r8d   #  8     0x3cd0e  4      OPC=1156  
  shrl $0x10, %ecx           #  9     0x3cd12  3      OPC=2312  
  jmpq .L_3cd40              #  10    0x3cd15  5      OPC=930   
  nop                        #  11    0x3cd1a  1      OPC=1343  
  nop                        #  12    0x3cd1b  1      OPC=1343  
  nop                        #  13    0x3cd1c  1      OPC=1343  
  nop                        #  14    0x3cd1d  1      OPC=1343  
  nop                        #  15    0x3cd1e  1      OPC=1343  
  nop                        #  16    0x3cd1f  1      OPC=1343  
  nop                        #  17    0x3cd20  1      OPC=1343  
  nop                        #  18    0x3cd21  1      OPC=1343  
  nop                        #  19    0x3cd22  1      OPC=1343  
  nop                        #  20    0x3cd23  1      OPC=1343  
  nop                        #  21    0x3cd24  1      OPC=1343  
.L_3cd20:                    #        0x3cd25  0      OPC=0     
  addl $0x4, %esi            #  22    0x3cd25  3      OPC=65    
  addl $0x4, %edi            #  23    0x3cd28  3      OPC=65    
  movl %esi, %esi            #  24    0x3cd2b  2      OPC=1157  
  movl (%r15,%rsi,1), %r8d   #  25    0x3cd2d  4      OPC=1156  
  nop                        #  26    0x3cd31  1      OPC=1343  
  nop                        #  27    0x3cd32  1      OPC=1343  
  nop                        #  28    0x3cd33  1      OPC=1343  
  nop                        #  29    0x3cd34  1      OPC=1343  
  nop                        #  30    0x3cd35  1      OPC=1343  
  nop                        #  31    0x3cd36  1      OPC=1343  
  nop                        #  32    0x3cd37  1      OPC=1343  
  nop                        #  33    0x3cd38  1      OPC=1343  
  nop                        #  34    0x3cd39  1      OPC=1343  
  nop                        #  35    0x3cd3a  1      OPC=1343  
  nop                        #  36    0x3cd3b  1      OPC=1343  
  nop                        #  37    0x3cd3c  1      OPC=1343  
  nop                        #  38    0x3cd3d  1      OPC=1343  
  nop                        #  39    0x3cd3e  1      OPC=1343  
  nop                        #  40    0x3cd3f  1      OPC=1343  
  nop                        #  41    0x3cd40  1      OPC=1343  
  nop                        #  42    0x3cd41  1      OPC=1343  
  nop                        #  43    0x3cd42  1      OPC=1343  
  nop                        #  44    0x3cd43  1      OPC=1343  
  nop                        #  45    0x3cd44  1      OPC=1343  
.L_3cd40:                    #        0x3cd45  0      OPC=0     
  movzwl %r8w, %r9d          #  46    0x3cd45  4      OPC=1303  
  shrl $0x10, %r8d           #  47    0x3cd49  4      OPC=2312  
  movl %r9d, %r10d           #  48    0x3cd4d  3      OPC=1157  
  movl %r8d, %r11d           #  49    0x3cd50  3      OPC=1157  
  imull %ebx, %r10d          #  50    0x3cd53  4      OPC=821   
  imull %ebx, %r11d          #  51    0x3cd57  4      OPC=821   
  movl %r10d, %r12d          #  52    0x3cd5b  3      OPC=1157  
  imull %ecx, %r9d           #  53    0x3cd5e  4      OPC=821   
  nop                        #  54    0x3cd62  1      OPC=1343  
  nop                        #  55    0x3cd63  1      OPC=1343  
  nop                        #  56    0x3cd64  1      OPC=1343  
  shrl $0x10, %r12d          #  57    0x3cd65  4      OPC=2312  
  imull %ecx, %r8d           #  58    0x3cd69  4      OPC=821   
  leal (%r11,%r9,1), %r9d    #  59    0x3cd6d  4      OPC=1066  
  addl %r12d, %r9d           #  60    0x3cd71  3      OPC=67    
  leal 0x10000(%r8), %r12d   #  61    0x3cd74  7      OPC=1066  
  cmpl %r9d, %r11d           #  62    0x3cd7b  3      OPC=472   
  movl %r9d, %r11d           #  63    0x3cd7e  3      OPC=1157  
  cmoval %r12d, %r8d         #  64    0x3cd81  4      OPC=272   
  andl $0xffff, %r10d        #  65    0x3cd85  7      OPC=131   
  shll $0x10, %r11d          #  66    0x3cd8c  4      OPC=2269  
  addl %eax, %r10d           #  67    0x3cd90  3      OPC=67    
  addl %r11d, %r10d          #  68    0x3cd93  3      OPC=67    
  cmpl %eax, %r10d           #  69    0x3cd96  3      OPC=472   
  movl %edi, %edi            #  70    0x3cd99  2      OPC=1157  
  movl %r10d, (%r15,%rdi,1)  #  71    0x3cd9b  4      OPC=1136  
  setb %al                   #  72    0x3cd9f  3      OPC=2169  
  nop                        #  73    0x3cda2  1      OPC=1343  
  nop                        #  74    0x3cda3  1      OPC=1343  
  nop                        #  75    0x3cda4  1      OPC=1343  
  shrl $0x10, %r9d           #  76    0x3cda5  4      OPC=2312  
  movzbl %al, %eax           #  77    0x3cda9  3      OPC=1304  
  addl %r9d, %eax            #  78    0x3cdac  3      OPC=67    
  addl %r8d, %eax            #  79    0x3cdaf  3      OPC=67    
  subl $0x1, %edx            #  80    0x3cdb2  3      OPC=2384  
  jne .L_3cd20               #  81    0x3cdb5  6      OPC=963   
  popq %rbx                  #  82    0x3cdbb  1      OPC=1694  
  popq %r12                  #  83    0x3cdbc  2      OPC=1694  
  retq
#  popq %r11                  #  84    0x3cdbe  2      OPC=1694  
  nop                        #  85    0x3cdc0  1      OPC=1343  
  nop                        #  86    0x3cdc1  1      OPC=1343  
  nop                        #  87    0x3cdc2  1      OPC=1343  
  nop                        #  88    0x3cdc3  1      OPC=1343  
  nop                        #  89    0x3cdc4  1      OPC=1343  
#  andl $0xffffffe0, %r11d    #  90    0x3cdc5  7      OPC=131   
  nop                        #  91    0x3cdcc  1      OPC=1343  
  nop                        #  92    0x3cdcd  1      OPC=1343  
  nop                        #  93    0x3cdce  1      OPC=1343  
  nop                        #  94    0x3cdcf  1      OPC=1343  
#  addq %r15, %r11            #  95    0x3cdd0  3      OPC=72    
#  jmpq %r11                  #  96    0x3cdd3  3      OPC=928   
  nop                        #  97    0x3cdd6  1      OPC=1343  
  nop                        #  98    0x3cdd7  1      OPC=1343  
  nop                        #  99    0x3cdd8  1      OPC=1343  
  nop                        #  100   0x3cdd9  1      OPC=1343  
  nop                        #  101   0x3cdda  1      OPC=1343  
  nop                        #  102   0x3cddb  1      OPC=1343  
  nop                        #  103   0x3cddc  1      OPC=1343  
  nop                        #  104   0x3cddd  1      OPC=1343  
  nop                        #  105   0x3cdde  1      OPC=1343  
  nop                        #  106   0x3cddf  1      OPC=1343  
  nop                        #  107   0x3cde0  1      OPC=1343  
  nop                        #  108   0x3cde1  1      OPC=1343  
  nop                        #  109   0x3cde2  1      OPC=1343  
  nop                        #  110   0x3cde3  1      OPC=1343  
  nop                        #  111   0x3cde4  1      OPC=1343  
  nop                        #  112   0x3cde5  1      OPC=1343  
  nop                        #  113   0x3cde6  1      OPC=1343  
  nop                        #  114   0x3cde7  1      OPC=1343  
  nop                        #  115   0x3cde8  1      OPC=1343  
  nop                        #  116   0x3cde9  1      OPC=1343  
  nop                        #  117   0x3cdea  1      OPC=1343  
  nop                        #  118   0x3cdeb  1      OPC=1343  
                                                                
.size __gmpn_mul_1, .-__gmpn_mul_1

