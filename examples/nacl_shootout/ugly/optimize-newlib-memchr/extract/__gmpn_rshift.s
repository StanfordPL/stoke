  .text
  .globl __gmpn_rshift
  .type __gmpn_rshift, @function

#! file-offset 0x787a0
#! rip-offset  0x387a0
#! capacity    160 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
.__gmpn_rshift:                 #        0x387a0  0      OPC=<label>         
  pushq %r13                    #  1     0x387a0  2      OPC=pushq_r64_1     
  movl %esi, %esi               #  2     0x387a2  2      OPC=movl_r32_r32    
  movl $0x20, %eax              #  3     0x387a4  5      OPC=movl_r32_imm32  
  movl %edx, %r8d               #  4     0x387a9  3      OPC=movl_r32_r32    
  subl %ecx, %eax               #  5     0x387ac  2      OPC=subl_r32_r32    
  movl %edi, %edi               #  6     0x387ae  2      OPC=movl_r32_r32    
  pushq %r12                    #  7     0x387b0  2      OPC=pushq_r64_1     
  pushq %rbx                    #  8     0x387b2  1      OPC=pushq_r64_1     
  movl %esi, %esi               #  9     0x387b3  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %r12d     #  10    0x387b5  4      OPC=movl_r32_m32    
  movl %ecx, %ebx               #  11    0x387b9  2      OPC=movl_r32_r32    
  movl %r12d, %r11d             #  12    0x387bb  3      OPC=movl_r32_r32    
  xchgw %ax, %ax                #  13    0x387be  2      OPC=xchgw_ax_r16    
  shrl %cl, %r11d               #  14    0x387c0  3      OPC=shrl_r32_cl     
  subl $0x1, %r8d               #  15    0x387c3  4      OPC=subl_r32_imm8   
  je .L_38820                   #  16    0x387c7  2      OPC=je_label        
  addl $0x4, %esi               #  17    0x387c9  3      OPC=addl_r32_imm8   
  movq %rdi, %r9                #  18    0x387cc  3      OPC=movq_r64_r64    
  xchgw %ax, %ax                #  19    0x387cf  2      OPC=xchgw_ax_r16    
  nop                           #  20    0x387d1  1      OPC=nop             
  nop                           #  21    0x387d2  1      OPC=nop             
  nop                           #  22    0x387d3  1      OPC=nop             
  nop                           #  23    0x387d4  1      OPC=nop             
  nop                           #  24    0x387d5  1      OPC=nop             
  nop                           #  25    0x387d6  1      OPC=nop             
  nop                           #  26    0x387d7  1      OPC=nop             
  nop                           #  27    0x387d8  1      OPC=nop             
  nop                           #  28    0x387d9  1      OPC=nop             
  nop                           #  29    0x387da  1      OPC=nop             
  nop                           #  30    0x387db  1      OPC=nop             
  nop                           #  31    0x387dc  1      OPC=nop             
  nop                           #  32    0x387dd  1      OPC=nop             
  nop                           #  33    0x387de  1      OPC=nop             
  nop                           #  34    0x387df  1      OPC=nop             
.L_387e0:                       #        0x387e0  0      OPC=<label>         
  movl %esi, %esi               #  35    0x387e0  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %r10d     #  36    0x387e2  4      OPC=movl_r32_m32    
  movl %eax, %ecx               #  37    0x387e6  2      OPC=movl_r32_r32    
  addl $0x4, %esi               #  38    0x387e8  3      OPC=addl_r32_imm8   
  movl %r10d, %r13d             #  39    0x387eb  3      OPC=movl_r32_r32    
  shll %cl, %r13d               #  40    0x387ee  3      OPC=shll_r32_cl     
  movl %ebx, %ecx               #  41    0x387f1  2      OPC=movl_r32_r32    
  orl %r11d, %r13d              #  42    0x387f3  3      OPC=orl_r32_r32     
  movl %r10d, %r11d             #  43    0x387f6  3      OPC=movl_r32_r32    
  movl %r9d, %r9d               #  44    0x387f9  3      OPC=movl_r32_r32    
  movl %r13d, (%r15,%r9,1)      #  45    0x387fc  4      OPC=movl_m32_r32    
  shrl %cl, %r11d               #  46    0x38800  3      OPC=shrl_r32_cl     
  addl $0x4, %r9d               #  47    0x38803  4      OPC=addl_r32_imm8   
  subl $0x1, %r8d               #  48    0x38807  4      OPC=subl_r32_imm8   
  jne .L_387e0                  #  49    0x3880b  2      OPC=jne_label       
  leal -0x4(%rdi,%rdx,4), %edi  #  50    0x3880d  4      OPC=leal_r32_m16    
  nop                           #  51    0x38811  1      OPC=nop             
  nop                           #  52    0x38812  1      OPC=nop             
  nop                           #  53    0x38813  1      OPC=nop             
  nop                           #  54    0x38814  1      OPC=nop             
  nop                           #  55    0x38815  1      OPC=nop             
  nop                           #  56    0x38816  1      OPC=nop             
  nop                           #  57    0x38817  1      OPC=nop             
  nop                           #  58    0x38818  1      OPC=nop             
  nop                           #  59    0x38819  1      OPC=nop             
  nop                           #  60    0x3881a  1      OPC=nop             
  nop                           #  61    0x3881b  1      OPC=nop             
  nop                           #  62    0x3881c  1      OPC=nop             
  nop                           #  63    0x3881d  1      OPC=nop             
  nop                           #  64    0x3881e  1      OPC=nop             
  nop                           #  65    0x3881f  1      OPC=nop             
.L_38820:                       #        0x38820  0      OPC=<label>         
  movl %eax, %ecx               #  66    0x38820  2      OPC=movl_r32_r32    
  movl %edi, %edi               #  67    0x38822  2      OPC=movl_r32_r32    
  movl %r11d, (%r15,%rdi,1)     #  68    0x38824  4      OPC=movl_m32_r32    
  shll %cl, %r12d               #  69    0x38828  3      OPC=shll_r32_cl     
  popq %rbx                     #  70    0x3882b  1      OPC=popq_r64_1      
  movl %r12d, %eax              #  71    0x3882c  3      OPC=movl_r32_r32    
  popq %r12                     #  72    0x3882f  2      OPC=popq_r64_1      
  popq %r13                     #  73    0x38831  2      OPC=popq_r64_1      
  popq %r11                     #  74    0x38833  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d       #  75    0x38835  7      OPC=andl_r32_imm32  
  nop                           #  76    0x3883c  1      OPC=nop             
  nop                           #  77    0x3883d  1      OPC=nop             
  nop                           #  78    0x3883e  1      OPC=nop             
  nop                           #  79    0x3883f  1      OPC=nop             
  addq %r15, %r11               #  80    0x38840  3      OPC=addq_r64_r64    
  jmpq %r11                     #  81    0x38843  3      OPC=jmpq_r64        
  nop                           #  82    0x38846  1      OPC=nop             
                                                                             
.size __gmpn_rshift, .-__gmpn_rshift

