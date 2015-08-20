  .text
  .globl __gmpn_lshiftc
  .type __gmpn_lshiftc, @function

#! file-offset 0x9b0c0
#! rip-offset  0x5b0c0
#! capacity    192 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
.__gmpn_lshiftc:                #        0x5b0c0  0      OPC=<label>         
  pushq %r13                    #  1     0x5b0c0  2      OPC=pushq_r64_1     
  leal (,%rdx,4), %eax          #  2     0x5b0c2  7      OPC=leal_r32_m16    
  movl %edx, %r8d               #  3     0x5b0c9  3      OPC=movl_r32_r32    
  pushq %r12                    #  4     0x5b0cc  2      OPC=pushq_r64_1     
  leal -0x4(%rax,%rsi,1), %esi  #  5     0x5b0ce  4      OPC=leal_r32_m16    
  addl %eax, %edi               #  6     0x5b0d2  2      OPC=addl_r32_r32    
  movl %ecx, %r12d              #  7     0x5b0d4  3      OPC=movl_r32_r32    
  pushq %rbx                    #  8     0x5b0d7  1      OPC=pushq_r64_1     
  movl %esi, %esi               #  9     0x5b0d8  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax      #  10    0x5b0da  4      OPC=movl_r32_m32    
  xchgw %ax, %ax                #  11    0x5b0de  2      OPC=xchgw_ax_r16    
  movl $0x20, %ebx              #  12    0x5b0e0  5      OPC=movl_r32_imm32  
  subl %ecx, %ebx               #  13    0x5b0e5  2      OPC=subl_r32_r32    
  movl %eax, %r11d              #  14    0x5b0e7  3      OPC=movl_r32_r32    
  shll %cl, %r11d               #  15    0x5b0ea  3      OPC=shll_r32_cl     
  subl $0x1, %r8d               #  16    0x5b0ed  4      OPC=subl_r32_imm8   
  je .L_5b140                   #  17    0x5b0f1  2      OPC=je_label        
  movq %rdi, %r9                #  18    0x5b0f3  3      OPC=movq_r64_r64    
  nop                           #  19    0x5b0f6  1      OPC=nop             
  nop                           #  20    0x5b0f7  1      OPC=nop             
  nop                           #  21    0x5b0f8  1      OPC=nop             
  nop                           #  22    0x5b0f9  1      OPC=nop             
  nop                           #  23    0x5b0fa  1      OPC=nop             
  nop                           #  24    0x5b0fb  1      OPC=nop             
  nop                           #  25    0x5b0fc  1      OPC=nop             
  nop                           #  26    0x5b0fd  1      OPC=nop             
  nop                           #  27    0x5b0fe  1      OPC=nop             
  nop                           #  28    0x5b0ff  1      OPC=nop             
.L_5b100:                       #        0x5b100  0      OPC=<label>         
  subl $0x4, %esi               #  29    0x5b100  3      OPC=subl_r32_imm8   
  movl %ebx, %ecx               #  30    0x5b103  2      OPC=movl_r32_r32    
  subl $0x4, %r9d               #  31    0x5b105  4      OPC=subl_r32_imm8   
  movl %esi, %esi               #  32    0x5b109  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %r10d     #  33    0x5b10b  4      OPC=movl_r32_m32    
  movl %r10d, %r13d             #  34    0x5b10f  3      OPC=movl_r32_r32    
  shrl %cl, %r13d               #  35    0x5b112  3      OPC=shrl_r32_cl     
  movl %r12d, %ecx              #  36    0x5b115  3      OPC=movl_r32_r32    
  orl %r11d, %r13d              #  37    0x5b118  3      OPC=orl_r32_r32     
  movl %r10d, %r11d             #  38    0x5b11b  3      OPC=movl_r32_r32    
  xchgw %ax, %ax                #  39    0x5b11e  2      OPC=xchgw_ax_r16    
  notl %r13d                    #  40    0x5b120  3      OPC=notl_r32        
  shll %cl, %r11d               #  41    0x5b123  3      OPC=shll_r32_cl     
  subl $0x1, %r8d               #  42    0x5b126  4      OPC=subl_r32_imm8   
  movl %r9d, %r9d               #  43    0x5b12a  3      OPC=movl_r32_r32    
  movl %r13d, (%r15,%r9,1)      #  44    0x5b12d  4      OPC=movl_m32_r32    
  jne .L_5b100                  #  45    0x5b131  2      OPC=jne_label       
  subl $0x2, %edx               #  46    0x5b133  3      OPC=subl_r32_imm8   
  notl %edx                     #  47    0x5b136  2      OPC=notl_r32        
  leal (%rdi,%rdx,4), %edi      #  48    0x5b138  3      OPC=leal_r32_m16    
  nop                           #  49    0x5b13b  1      OPC=nop             
  nop                           #  50    0x5b13c  1      OPC=nop             
  nop                           #  51    0x5b13d  1      OPC=nop             
  nop                           #  52    0x5b13e  1      OPC=nop             
  nop                           #  53    0x5b13f  1      OPC=nop             
.L_5b140:                       #        0x5b140  0      OPC=<label>         
  notl %r11d                    #  54    0x5b140  3      OPC=notl_r32        
  subl $0x4, %edi               #  55    0x5b143  3      OPC=subl_r32_imm8   
  movl %ebx, %ecx               #  56    0x5b146  2      OPC=movl_r32_r32    
  movl %edi, %edi               #  57    0x5b148  2      OPC=movl_r32_r32    
  movl %r11d, (%r15,%rdi,1)     #  58    0x5b14a  4      OPC=movl_m32_r32    
  shrl %cl, %eax                #  59    0x5b14e  2      OPC=shrl_r32_cl     
  popq %rbx                     #  60    0x5b150  1      OPC=popq_r64_1      
  popq %r12                     #  61    0x5b151  2      OPC=popq_r64_1      
  popq %r13                     #  62    0x5b153  2      OPC=popq_r64_1      
  popq %r11                     #  63    0x5b155  2      OPC=popq_r64_1      
  nop                           #  64    0x5b157  1      OPC=nop             
  nop                           #  65    0x5b158  1      OPC=nop             
  nop                           #  66    0x5b159  1      OPC=nop             
  nop                           #  67    0x5b15a  1      OPC=nop             
  nop                           #  68    0x5b15b  1      OPC=nop             
  nop                           #  69    0x5b15c  1      OPC=nop             
  nop                           #  70    0x5b15d  1      OPC=nop             
  nop                           #  71    0x5b15e  1      OPC=nop             
  nop                           #  72    0x5b15f  1      OPC=nop             
  andl $0xffffffe0, %r11d       #  73    0x5b160  7      OPC=andl_r32_imm32  
  nop                           #  74    0x5b167  1      OPC=nop             
  nop                           #  75    0x5b168  1      OPC=nop             
  nop                           #  76    0x5b169  1      OPC=nop             
  nop                           #  77    0x5b16a  1      OPC=nop             
  addq %r15, %r11               #  78    0x5b16b  3      OPC=addq_r64_r64    
  jmpq %r11                     #  79    0x5b16e  3      OPC=jmpq_r64        
  nop                           #  80    0x5b171  1      OPC=nop             
  nop                           #  81    0x5b172  1      OPC=nop             
  nop                           #  82    0x5b173  1      OPC=nop             
  nop                           #  83    0x5b174  1      OPC=nop             
  nop                           #  84    0x5b175  1      OPC=nop             
  nop                           #  85    0x5b176  1      OPC=nop             
  nop                           #  86    0x5b177  1      OPC=nop             
  nop                           #  87    0x5b178  1      OPC=nop             
  nop                           #  88    0x5b179  1      OPC=nop             
  nop                           #  89    0x5b17a  1      OPC=nop             
  nop                           #  90    0x5b17b  1      OPC=nop             
  nop                           #  91    0x5b17c  1      OPC=nop             
  nop                           #  92    0x5b17d  1      OPC=nop             
  nop                           #  93    0x5b17e  1      OPC=nop             
  nop                           #  94    0x5b17f  1      OPC=nop             
  nop                           #  95    0x5b180  1      OPC=nop             
  nop                           #  96    0x5b181  1      OPC=nop             
  nop                           #  97    0x5b182  1      OPC=nop             
  nop                           #  98    0x5b183  1      OPC=nop             
  nop                           #  99    0x5b184  1      OPC=nop             
  nop                           #  100   0x5b185  1      OPC=nop             
  nop                           #  101   0x5b186  1      OPC=nop             
                                                                             
.size __gmpn_lshiftc, .-__gmpn_lshiftc

