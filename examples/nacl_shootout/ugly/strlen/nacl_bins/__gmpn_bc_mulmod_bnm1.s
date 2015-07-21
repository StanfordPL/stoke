  .text
  .globl __gmpn_bc_mulmod_bnm1
  .type __gmpn_bc_mulmod_bnm1, @function

#! file-offset 0x92720
#! rip-offset  0x52720
#! capacity    192 bytes

# Text                      #  Line  RIP      Bytes  Opcode    
.__gmpn_bc_mulmod_bnm1:     #        0x52720  0      OPC=0     
  movq %r13, -0x8(%rsp)     #  1     0x52720  5      OPC=1138  
  movl %r8d, %r13d          #  2     0x52725  3      OPC=1157  
  movq %rbx, -0x18(%rsp)    #  3     0x52728  5      OPC=1138  
  movq %r12, -0x10(%rsp)    #  4     0x5272d  5      OPC=1138  
  movl %edi, %ebx           #  5     0x52732  2      OPC=1157  
  subl $0x18, %esp          #  6     0x52734  3      OPC=2384  
  addq %r15, %rsp           #  7     0x52737  3      OPC=72    
  movl %ecx, %r12d          #  8     0x5273a  3      OPC=1157  
  movl %esi, %esi           #  9     0x5273d  2      OPC=1157  
  nop                       #  10    0x5273f  1      OPC=1343  
  movl %edx, %edx           #  11    0x52740  2      OPC=1157  
  movl %r13d, %edi          #  12    0x52742  3      OPC=1157  
  nop                       #  13    0x52745  1      OPC=1343  
  nop                       #  14    0x52746  1      OPC=1343  
  nop                       #  15    0x52747  1      OPC=1343  
  nop                       #  16    0x52748  1      OPC=1343  
  nop                       #  17    0x52749  1      OPC=1343  
  nop                       #  18    0x5274a  1      OPC=1343  
  nop                       #  19    0x5274b  1      OPC=1343  
  nop                       #  20    0x5274c  1      OPC=1343  
  nop                       #  21    0x5274d  1      OPC=1343  
  nop                       #  22    0x5274e  1      OPC=1343  
  nop                       #  23    0x5274f  1      OPC=1343  
  nop                       #  24    0x52750  1      OPC=1343  
  nop                       #  25    0x52751  1      OPC=1343  
  nop                       #  26    0x52752  1      OPC=1343  
  nop                       #  27    0x52753  1      OPC=1343  
  nop                       #  28    0x52754  1      OPC=1343  
  nop                       #  29    0x52755  1      OPC=1343  
  nop                       #  30    0x52756  1      OPC=1343  
  nop                       #  31    0x52757  1      OPC=1343  
  nop                       #  32    0x52758  1      OPC=1343  
  nop                       #  33    0x52759  1      OPC=1343  
  nop                       #  34    0x5275a  1      OPC=1343  
  callq .__gmpn_mul_n       #  35    0x5275b  5      OPC=260   
  leal (%r13,%r12,4), %edx  #  36    0x52760  5      OPC=1066  
  movl %r12d, %ecx          #  37    0x52765  3      OPC=1157  
  movl %r13d, %esi          #  38    0x52768  3      OPC=1157  
  movl %ebx, %edi           #  39    0x5276b  2      OPC=1157  
  nop                       #  40    0x5276d  1      OPC=1343  
  nop                       #  41    0x5276e  1      OPC=1343  
  nop                       #  42    0x5276f  1      OPC=1343  
  nop                       #  43    0x52770  1      OPC=1343  
  nop                       #  44    0x52771  1      OPC=1343  
  nop                       #  45    0x52772  1      OPC=1343  
  nop                       #  46    0x52773  1      OPC=1343  
  nop                       #  47    0x52774  1      OPC=1343  
  nop                       #  48    0x52775  1      OPC=1343  
  nop                       #  49    0x52776  1      OPC=1343  
  nop                       #  50    0x52777  1      OPC=1343  
  nop                       #  51    0x52778  1      OPC=1343  
  nop                       #  52    0x52779  1      OPC=1343  
  nop                       #  53    0x5277a  1      OPC=1343  
  callq .__gmpn_add_n       #  54    0x5277b  5      OPC=260   
  movl %ebx, %ebx           #  55    0x52780  2      OPC=1157  
  movl (%r15,%rbx,1), %edx  #  56    0x52782  4      OPC=1156  
  addl %eax, %edx           #  57    0x52786  2      OPC=67    
  cmpl %edx, %eax           #  58    0x52788  2      OPC=472   
  movl %ebx, %ebx           #  59    0x5278a  2      OPC=1157  
  movl %edx, (%r15,%rbx,1)  #  60    0x5278c  4      OPC=1136  
  jbe .L_527c0              #  61    0x52790  6      OPC=881   
  nop                       #  62    0x52796  1      OPC=1343  
  nop                       #  63    0x52797  1      OPC=1343  
  nop                       #  64    0x52798  1      OPC=1343  
  nop                       #  65    0x52799  1      OPC=1343  
  nop                       #  66    0x5279a  1      OPC=1343  
  nop                       #  67    0x5279b  1      OPC=1343  
  nop                       #  68    0x5279c  1      OPC=1343  
  nop                       #  69    0x5279d  1      OPC=1343  
  nop                       #  70    0x5279e  1      OPC=1343  
  nop                       #  71    0x5279f  1      OPC=1343  
  nop                       #  72    0x527a0  1      OPC=1343  
  nop                       #  73    0x527a1  1      OPC=1343  
  nop                       #  74    0x527a2  1      OPC=1343  
  nop                       #  75    0x527a3  1      OPC=1343  
  nop                       #  76    0x527a4  1      OPC=1343  
  nop                       #  77    0x527a5  1      OPC=1343  
.L_527a0:                   #        0x527a6  0      OPC=0     
  addl $0x4, %ebx           #  78    0x527a6  3      OPC=65    
  movl %ebx, %ebx           #  79    0x527a9  2      OPC=1157  
  movl (%r15,%rbx,1), %eax  #  80    0x527ab  4      OPC=1156  
  addl $0x1, %eax           #  81    0x527af  3      OPC=65    
  testl %eax, %eax          #  82    0x527b2  2      OPC=2436  
  movl %ebx, %ebx           #  83    0x527b4  2      OPC=1157  
  movl %eax, (%r15,%rbx,1)  #  84    0x527b6  4      OPC=1136  
  je .L_527a0               #  85    0x527ba  6      OPC=893   
  nop                       #  86    0x527c0  1      OPC=1343  
  nop                       #  87    0x527c1  1      OPC=1343  
  nop                       #  88    0x527c2  1      OPC=1343  
  nop                       #  89    0x527c3  1      OPC=1343  
  nop                       #  90    0x527c4  1      OPC=1343  
  nop                       #  91    0x527c5  1      OPC=1343  
  nop                       #  92    0x527c6  1      OPC=1343  
  nop                       #  93    0x527c7  1      OPC=1343  
  nop                       #  94    0x527c8  1      OPC=1343  
  nop                       #  95    0x527c9  1      OPC=1343  
  nop                       #  96    0x527ca  1      OPC=1343  
  nop                       #  97    0x527cb  1      OPC=1343  
.L_527c0:                   #        0x527cc  0      OPC=0     
  movq (%rsp), %rbx         #  98    0x527cc  4      OPC=1161  
  movq 0x8(%rsp), %r12      #  99    0x527d0  5      OPC=1161  
  movq 0x10(%rsp), %r13     #  100   0x527d5  5      OPC=1161  
  addl $0x18, %esp          #  101   0x527da  3      OPC=65    
  addq %r15, %rsp           #  102   0x527dd  3      OPC=72    
  popq %r11                 #  103   0x527e0  2      OPC=1694  
  andl $0xffffffe0, %r11d   #  104   0x527e2  7      OPC=131   
  nop                       #  105   0x527e9  1      OPC=1343  
  nop                       #  106   0x527ea  1      OPC=1343  
  nop                       #  107   0x527eb  1      OPC=1343  
  nop                       #  108   0x527ec  1      OPC=1343  
  addq %r15, %r11           #  109   0x527ed  3      OPC=72    
  jmpq %r11                 #  110   0x527f0  3      OPC=928   
                                                               
.size __gmpn_bc_mulmod_bnm1, .-__gmpn_bc_mulmod_bnm1

