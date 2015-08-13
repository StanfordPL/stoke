  .text
  .globl __gmpn_lshiftc
  .type __gmpn_lshiftc, @function

#! file-offset 0x9adc0
#! rip-offset  0x5adc0
#! capacity    192 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
.__gmpn_lshiftc:                #        0x5adc0  0      OPC=<label>         
  pushq %r13                    #  1     0x5adc0  2      OPC=pushq_r64_1     
  leal (,%rdx,4), %eax          #  2     0x5adc2  7      OPC=leal_r32_m16    
  movl %edx, %r8d               #  3     0x5adc9  3      OPC=movl_r32_r32    
  pushq %r12                    #  4     0x5adcc  2      OPC=pushq_r64_1     
  leal -0x4(%rax,%rsi,1), %esi  #  5     0x5adce  4      OPC=leal_r32_m16    
  addl %eax, %edi               #  6     0x5add2  2      OPC=addl_r32_r32    
  movl %ecx, %r12d              #  7     0x5add4  3      OPC=movl_r32_r32    
  pushq %rbx                    #  8     0x5add7  1      OPC=pushq_r64_1     
  movl %esi, %esi               #  9     0x5add8  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax      #  10    0x5adda  4      OPC=movl_r32_m32    
  xchgw %ax, %ax                #  11    0x5adde  2      OPC=xchgw_ax_r16    
  movl $0x20, %ebx              #  12    0x5ade0  5      OPC=movl_r32_imm32  
  subl %ecx, %ebx               #  13    0x5ade5  2      OPC=subl_r32_r32    
  movl %eax, %r11d              #  14    0x5ade7  3      OPC=movl_r32_r32    
  shll %cl, %r11d               #  15    0x5adea  3      OPC=shll_r32_cl     
  subl $0x1, %r8d               #  16    0x5aded  4      OPC=subl_r32_imm8   
  je .L_5ae40                   #  17    0x5adf1  2      OPC=je_label        
  movq %rdi, %r9                #  18    0x5adf3  3      OPC=movq_r64_r64    
  nop                           #  19    0x5adf6  1      OPC=nop             
  nop                           #  20    0x5adf7  1      OPC=nop             
  nop                           #  21    0x5adf8  1      OPC=nop             
  nop                           #  22    0x5adf9  1      OPC=nop             
  nop                           #  23    0x5adfa  1      OPC=nop             
  nop                           #  24    0x5adfb  1      OPC=nop             
  nop                           #  25    0x5adfc  1      OPC=nop             
  nop                           #  26    0x5adfd  1      OPC=nop             
  nop                           #  27    0x5adfe  1      OPC=nop             
  nop                           #  28    0x5adff  1      OPC=nop             
.L_5ae00:                       #        0x5ae00  0      OPC=<label>         
  subl $0x4, %esi               #  29    0x5ae00  3      OPC=subl_r32_imm8   
  movl %ebx, %ecx               #  30    0x5ae03  2      OPC=movl_r32_r32    
  subl $0x4, %r9d               #  31    0x5ae05  4      OPC=subl_r32_imm8   
  movl %esi, %esi               #  32    0x5ae09  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %r10d     #  33    0x5ae0b  4      OPC=movl_r32_m32    
  movl %r10d, %r13d             #  34    0x5ae0f  3      OPC=movl_r32_r32    
  shrl %cl, %r13d               #  35    0x5ae12  3      OPC=shrl_r32_cl     
  movl %r12d, %ecx              #  36    0x5ae15  3      OPC=movl_r32_r32    
  orl %r11d, %r13d              #  37    0x5ae18  3      OPC=orl_r32_r32     
  movl %r10d, %r11d             #  38    0x5ae1b  3      OPC=movl_r32_r32    
  xchgw %ax, %ax                #  39    0x5ae1e  2      OPC=xchgw_ax_r16    
  notl %r13d                    #  40    0x5ae20  3      OPC=notl_r32        
  shll %cl, %r11d               #  41    0x5ae23  3      OPC=shll_r32_cl     
  subl $0x1, %r8d               #  42    0x5ae26  4      OPC=subl_r32_imm8   
  movl %r9d, %r9d               #  43    0x5ae2a  3      OPC=movl_r32_r32    
  movl %r13d, (%r15,%r9,1)      #  44    0x5ae2d  4      OPC=movl_m32_r32    
  jne .L_5ae00                  #  45    0x5ae31  2      OPC=jne_label       
  subl $0x2, %edx               #  46    0x5ae33  3      OPC=subl_r32_imm8   
  notl %edx                     #  47    0x5ae36  2      OPC=notl_r32        
  leal (%rdi,%rdx,4), %edi      #  48    0x5ae38  3      OPC=leal_r32_m16    
  nop                           #  49    0x5ae3b  1      OPC=nop             
  nop                           #  50    0x5ae3c  1      OPC=nop             
  nop                           #  51    0x5ae3d  1      OPC=nop             
  nop                           #  52    0x5ae3e  1      OPC=nop             
  nop                           #  53    0x5ae3f  1      OPC=nop             
.L_5ae40:                       #        0x5ae40  0      OPC=<label>         
  notl %r11d                    #  54    0x5ae40  3      OPC=notl_r32        
  subl $0x4, %edi               #  55    0x5ae43  3      OPC=subl_r32_imm8   
  movl %ebx, %ecx               #  56    0x5ae46  2      OPC=movl_r32_r32    
  movl %edi, %edi               #  57    0x5ae48  2      OPC=movl_r32_r32    
  movl %r11d, (%r15,%rdi,1)     #  58    0x5ae4a  4      OPC=movl_m32_r32    
  shrl %cl, %eax                #  59    0x5ae4e  2      OPC=shrl_r32_cl     
  popq %rbx                     #  60    0x5ae50  1      OPC=popq_r64_1      
  popq %r12                     #  61    0x5ae51  2      OPC=popq_r64_1      
  popq %r13                     #  62    0x5ae53  2      OPC=popq_r64_1      
  popq %r11                     #  63    0x5ae55  2      OPC=popq_r64_1      
  nop                           #  64    0x5ae57  1      OPC=nop             
  nop                           #  65    0x5ae58  1      OPC=nop             
  nop                           #  66    0x5ae59  1      OPC=nop             
  nop                           #  67    0x5ae5a  1      OPC=nop             
  nop                           #  68    0x5ae5b  1      OPC=nop             
  nop                           #  69    0x5ae5c  1      OPC=nop             
  nop                           #  70    0x5ae5d  1      OPC=nop             
  nop                           #  71    0x5ae5e  1      OPC=nop             
  nop                           #  72    0x5ae5f  1      OPC=nop             
  andl $0xffffffe0, %r11d       #  73    0x5ae60  7      OPC=andl_r32_imm32  
  nop                           #  74    0x5ae67  1      OPC=nop             
  nop                           #  75    0x5ae68  1      OPC=nop             
  nop                           #  76    0x5ae69  1      OPC=nop             
  nop                           #  77    0x5ae6a  1      OPC=nop             
  addq %r15, %r11               #  78    0x5ae6b  3      OPC=addq_r64_r64    
  jmpq %r11                     #  79    0x5ae6e  3      OPC=jmpq_r64        
  nop                           #  80    0x5ae71  1      OPC=nop             
  nop                           #  81    0x5ae72  1      OPC=nop             
  nop                           #  82    0x5ae73  1      OPC=nop             
  nop                           #  83    0x5ae74  1      OPC=nop             
  nop                           #  84    0x5ae75  1      OPC=nop             
  nop                           #  85    0x5ae76  1      OPC=nop             
  nop                           #  86    0x5ae77  1      OPC=nop             
  nop                           #  87    0x5ae78  1      OPC=nop             
  nop                           #  88    0x5ae79  1      OPC=nop             
  nop                           #  89    0x5ae7a  1      OPC=nop             
  nop                           #  90    0x5ae7b  1      OPC=nop             
  nop                           #  91    0x5ae7c  1      OPC=nop             
  nop                           #  92    0x5ae7d  1      OPC=nop             
  nop                           #  93    0x5ae7e  1      OPC=nop             
  nop                           #  94    0x5ae7f  1      OPC=nop             
  nop                           #  95    0x5ae80  1      OPC=nop             
  nop                           #  96    0x5ae81  1      OPC=nop             
  nop                           #  97    0x5ae82  1      OPC=nop             
  nop                           #  98    0x5ae83  1      OPC=nop             
  nop                           #  99    0x5ae84  1      OPC=nop             
  nop                           #  100   0x5ae85  1      OPC=nop             
  nop                           #  101   0x5ae86  1      OPC=nop             
                                                                             
.size __gmpn_lshiftc, .-__gmpn_lshiftc

