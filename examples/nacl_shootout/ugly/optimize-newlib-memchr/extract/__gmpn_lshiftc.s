  .text
  .globl __gmpn_lshiftc
  .type __gmpn_lshiftc, @function

#! file-offset 0x9b7e0
#! rip-offset  0x5b7e0
#! capacity    192 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
.__gmpn_lshiftc:                #        0x5b7e0  0      OPC=<label>         
  pushq %r13                    #  1     0x5b7e0  2      OPC=pushq_r64_1     
  leal (,%rdx,4), %eax          #  2     0x5b7e2  7      OPC=leal_r32_m16    
  movl %edx, %r8d               #  3     0x5b7e9  3      OPC=movl_r32_r32    
  pushq %r12                    #  4     0x5b7ec  2      OPC=pushq_r64_1     
  leal -0x4(%rax,%rsi,1), %esi  #  5     0x5b7ee  4      OPC=leal_r32_m16    
  addl %eax, %edi               #  6     0x5b7f2  2      OPC=addl_r32_r32    
  movl %ecx, %r12d              #  7     0x5b7f4  3      OPC=movl_r32_r32    
  pushq %rbx                    #  8     0x5b7f7  1      OPC=pushq_r64_1     
  movl %esi, %esi               #  9     0x5b7f8  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax      #  10    0x5b7fa  4      OPC=movl_r32_m32    
  xchgw %ax, %ax                #  11    0x5b7fe  2      OPC=xchgw_ax_r16    
  movl $0x20, %ebx              #  12    0x5b800  5      OPC=movl_r32_imm32  
  subl %ecx, %ebx               #  13    0x5b805  2      OPC=subl_r32_r32    
  movl %eax, %r11d              #  14    0x5b807  3      OPC=movl_r32_r32    
  shll %cl, %r11d               #  15    0x5b80a  3      OPC=shll_r32_cl     
  subl $0x1, %r8d               #  16    0x5b80d  4      OPC=subl_r32_imm8   
  je .L_5b860                   #  17    0x5b811  2      OPC=je_label        
  movq %rdi, %r9                #  18    0x5b813  3      OPC=movq_r64_r64    
  nop                           #  19    0x5b816  1      OPC=nop             
  nop                           #  20    0x5b817  1      OPC=nop             
  nop                           #  21    0x5b818  1      OPC=nop             
  nop                           #  22    0x5b819  1      OPC=nop             
  nop                           #  23    0x5b81a  1      OPC=nop             
  nop                           #  24    0x5b81b  1      OPC=nop             
  nop                           #  25    0x5b81c  1      OPC=nop             
  nop                           #  26    0x5b81d  1      OPC=nop             
  nop                           #  27    0x5b81e  1      OPC=nop             
  nop                           #  28    0x5b81f  1      OPC=nop             
.L_5b820:                       #        0x5b820  0      OPC=<label>         
  subl $0x4, %esi               #  29    0x5b820  3      OPC=subl_r32_imm8   
  movl %ebx, %ecx               #  30    0x5b823  2      OPC=movl_r32_r32    
  subl $0x4, %r9d               #  31    0x5b825  4      OPC=subl_r32_imm8   
  movl %esi, %esi               #  32    0x5b829  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %r10d     #  33    0x5b82b  4      OPC=movl_r32_m32    
  movl %r10d, %r13d             #  34    0x5b82f  3      OPC=movl_r32_r32    
  shrl %cl, %r13d               #  35    0x5b832  3      OPC=shrl_r32_cl     
  movl %r12d, %ecx              #  36    0x5b835  3      OPC=movl_r32_r32    
  orl %r11d, %r13d              #  37    0x5b838  3      OPC=orl_r32_r32     
  movl %r10d, %r11d             #  38    0x5b83b  3      OPC=movl_r32_r32    
  xchgw %ax, %ax                #  39    0x5b83e  2      OPC=xchgw_ax_r16    
  notl %r13d                    #  40    0x5b840  3      OPC=notl_r32        
  shll %cl, %r11d               #  41    0x5b843  3      OPC=shll_r32_cl     
  subl $0x1, %r8d               #  42    0x5b846  4      OPC=subl_r32_imm8   
  movl %r9d, %r9d               #  43    0x5b84a  3      OPC=movl_r32_r32    
  movl %r13d, (%r15,%r9,1)      #  44    0x5b84d  4      OPC=movl_m32_r32    
  jne .L_5b820                  #  45    0x5b851  2      OPC=jne_label       
  subl $0x2, %edx               #  46    0x5b853  3      OPC=subl_r32_imm8   
  notl %edx                     #  47    0x5b856  2      OPC=notl_r32        
  leal (%rdi,%rdx,4), %edi      #  48    0x5b858  3      OPC=leal_r32_m16    
  nop                           #  49    0x5b85b  1      OPC=nop             
  nop                           #  50    0x5b85c  1      OPC=nop             
  nop                           #  51    0x5b85d  1      OPC=nop             
  nop                           #  52    0x5b85e  1      OPC=nop             
  nop                           #  53    0x5b85f  1      OPC=nop             
.L_5b860:                       #        0x5b860  0      OPC=<label>         
  notl %r11d                    #  54    0x5b860  3      OPC=notl_r32        
  subl $0x4, %edi               #  55    0x5b863  3      OPC=subl_r32_imm8   
  movl %ebx, %ecx               #  56    0x5b866  2      OPC=movl_r32_r32    
  movl %edi, %edi               #  57    0x5b868  2      OPC=movl_r32_r32    
  movl %r11d, (%r15,%rdi,1)     #  58    0x5b86a  4      OPC=movl_m32_r32    
  shrl %cl, %eax                #  59    0x5b86e  2      OPC=shrl_r32_cl     
  popq %rbx                     #  60    0x5b870  1      OPC=popq_r64_1      
  popq %r12                     #  61    0x5b871  2      OPC=popq_r64_1      
  popq %r13                     #  62    0x5b873  2      OPC=popq_r64_1      
  popq %r11                     #  63    0x5b875  2      OPC=popq_r64_1      
  nop                           #  64    0x5b877  1      OPC=nop             
  nop                           #  65    0x5b878  1      OPC=nop             
  nop                           #  66    0x5b879  1      OPC=nop             
  nop                           #  67    0x5b87a  1      OPC=nop             
  nop                           #  68    0x5b87b  1      OPC=nop             
  nop                           #  69    0x5b87c  1      OPC=nop             
  nop                           #  70    0x5b87d  1      OPC=nop             
  nop                           #  71    0x5b87e  1      OPC=nop             
  nop                           #  72    0x5b87f  1      OPC=nop             
  andl $0xffffffe0, %r11d       #  73    0x5b880  7      OPC=andl_r32_imm32  
  nop                           #  74    0x5b887  1      OPC=nop             
  nop                           #  75    0x5b888  1      OPC=nop             
  nop                           #  76    0x5b889  1      OPC=nop             
  nop                           #  77    0x5b88a  1      OPC=nop             
  addq %r15, %r11               #  78    0x5b88b  3      OPC=addq_r64_r64    
  jmpq %r11                     #  79    0x5b88e  3      OPC=jmpq_r64        
  nop                           #  80    0x5b891  1      OPC=nop             
  nop                           #  81    0x5b892  1      OPC=nop             
  nop                           #  82    0x5b893  1      OPC=nop             
  nop                           #  83    0x5b894  1      OPC=nop             
  nop                           #  84    0x5b895  1      OPC=nop             
  nop                           #  85    0x5b896  1      OPC=nop             
  nop                           #  86    0x5b897  1      OPC=nop             
  nop                           #  87    0x5b898  1      OPC=nop             
  nop                           #  88    0x5b899  1      OPC=nop             
  nop                           #  89    0x5b89a  1      OPC=nop             
  nop                           #  90    0x5b89b  1      OPC=nop             
  nop                           #  91    0x5b89c  1      OPC=nop             
  nop                           #  92    0x5b89d  1      OPC=nop             
  nop                           #  93    0x5b89e  1      OPC=nop             
  nop                           #  94    0x5b89f  1      OPC=nop             
  nop                           #  95    0x5b8a0  1      OPC=nop             
  nop                           #  96    0x5b8a1  1      OPC=nop             
  nop                           #  97    0x5b8a2  1      OPC=nop             
  nop                           #  98    0x5b8a3  1      OPC=nop             
  nop                           #  99    0x5b8a4  1      OPC=nop             
  nop                           #  100   0x5b8a5  1      OPC=nop             
  nop                           #  101   0x5b8a6  1      OPC=nop             
                                                                             
.size __gmpn_lshiftc, .-__gmpn_lshiftc

