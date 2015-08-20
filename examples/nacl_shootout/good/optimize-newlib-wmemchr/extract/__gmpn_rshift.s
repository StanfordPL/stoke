  .text
  .globl __gmpn_rshift
  .type __gmpn_rshift, @function

#! file-offset 0x78080
#! rip-offset  0x38080
#! capacity    160 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
.__gmpn_rshift:                 #        0x38080  0      OPC=<label>         
  pushq %r13                    #  1     0x38080  2      OPC=pushq_r64_1     
  movl %esi, %esi               #  2     0x38082  2      OPC=movl_r32_r32    
  movl $0x20, %eax              #  3     0x38084  5      OPC=movl_r32_imm32  
  movl %edx, %r8d               #  4     0x38089  3      OPC=movl_r32_r32    
  subl %ecx, %eax               #  5     0x3808c  2      OPC=subl_r32_r32    
  movl %edi, %edi               #  6     0x3808e  2      OPC=movl_r32_r32    
  pushq %r12                    #  7     0x38090  2      OPC=pushq_r64_1     
  pushq %rbx                    #  8     0x38092  1      OPC=pushq_r64_1     
  movl %esi, %esi               #  9     0x38093  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %r12d     #  10    0x38095  4      OPC=movl_r32_m32    
  movl %ecx, %ebx               #  11    0x38099  2      OPC=movl_r32_r32    
  movl %r12d, %r11d             #  12    0x3809b  3      OPC=movl_r32_r32    
  xchgw %ax, %ax                #  13    0x3809e  2      OPC=xchgw_ax_r16    
  shrl %cl, %r11d               #  14    0x380a0  3      OPC=shrl_r32_cl     
  subl $0x1, %r8d               #  15    0x380a3  4      OPC=subl_r32_imm8   
  je .L_38100                   #  16    0x380a7  2      OPC=je_label        
  addl $0x4, %esi               #  17    0x380a9  3      OPC=addl_r32_imm8   
  movq %rdi, %r9                #  18    0x380ac  3      OPC=movq_r64_r64    
  xchgw %ax, %ax                #  19    0x380af  2      OPC=xchgw_ax_r16    
  nop                           #  20    0x380b1  1      OPC=nop             
  nop                           #  21    0x380b2  1      OPC=nop             
  nop                           #  22    0x380b3  1      OPC=nop             
  nop                           #  23    0x380b4  1      OPC=nop             
  nop                           #  24    0x380b5  1      OPC=nop             
  nop                           #  25    0x380b6  1      OPC=nop             
  nop                           #  26    0x380b7  1      OPC=nop             
  nop                           #  27    0x380b8  1      OPC=nop             
  nop                           #  28    0x380b9  1      OPC=nop             
  nop                           #  29    0x380ba  1      OPC=nop             
  nop                           #  30    0x380bb  1      OPC=nop             
  nop                           #  31    0x380bc  1      OPC=nop             
  nop                           #  32    0x380bd  1      OPC=nop             
  nop                           #  33    0x380be  1      OPC=nop             
  nop                           #  34    0x380bf  1      OPC=nop             
.L_380c0:                       #        0x380c0  0      OPC=<label>         
  movl %esi, %esi               #  35    0x380c0  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %r10d     #  36    0x380c2  4      OPC=movl_r32_m32    
  movl %eax, %ecx               #  37    0x380c6  2      OPC=movl_r32_r32    
  addl $0x4, %esi               #  38    0x380c8  3      OPC=addl_r32_imm8   
  movl %r10d, %r13d             #  39    0x380cb  3      OPC=movl_r32_r32    
  shll %cl, %r13d               #  40    0x380ce  3      OPC=shll_r32_cl     
  movl %ebx, %ecx               #  41    0x380d1  2      OPC=movl_r32_r32    
  orl %r11d, %r13d              #  42    0x380d3  3      OPC=orl_r32_r32     
  movl %r10d, %r11d             #  43    0x380d6  3      OPC=movl_r32_r32    
  movl %r9d, %r9d               #  44    0x380d9  3      OPC=movl_r32_r32    
  movl %r13d, (%r15,%r9,1)      #  45    0x380dc  4      OPC=movl_m32_r32    
  shrl %cl, %r11d               #  46    0x380e0  3      OPC=shrl_r32_cl     
  addl $0x4, %r9d               #  47    0x380e3  4      OPC=addl_r32_imm8   
  subl $0x1, %r8d               #  48    0x380e7  4      OPC=subl_r32_imm8   
  jne .L_380c0                  #  49    0x380eb  2      OPC=jne_label       
  leal -0x4(%rdi,%rdx,4), %edi  #  50    0x380ed  4      OPC=leal_r32_m16    
  nop                           #  51    0x380f1  1      OPC=nop             
  nop                           #  52    0x380f2  1      OPC=nop             
  nop                           #  53    0x380f3  1      OPC=nop             
  nop                           #  54    0x380f4  1      OPC=nop             
  nop                           #  55    0x380f5  1      OPC=nop             
  nop                           #  56    0x380f6  1      OPC=nop             
  nop                           #  57    0x380f7  1      OPC=nop             
  nop                           #  58    0x380f8  1      OPC=nop             
  nop                           #  59    0x380f9  1      OPC=nop             
  nop                           #  60    0x380fa  1      OPC=nop             
  nop                           #  61    0x380fb  1      OPC=nop             
  nop                           #  62    0x380fc  1      OPC=nop             
  nop                           #  63    0x380fd  1      OPC=nop             
  nop                           #  64    0x380fe  1      OPC=nop             
  nop                           #  65    0x380ff  1      OPC=nop             
.L_38100:                       #        0x38100  0      OPC=<label>         
  movl %eax, %ecx               #  66    0x38100  2      OPC=movl_r32_r32    
  movl %edi, %edi               #  67    0x38102  2      OPC=movl_r32_r32    
  movl %r11d, (%r15,%rdi,1)     #  68    0x38104  4      OPC=movl_m32_r32    
  shll %cl, %r12d               #  69    0x38108  3      OPC=shll_r32_cl     
  popq %rbx                     #  70    0x3810b  1      OPC=popq_r64_1      
  movl %r12d, %eax              #  71    0x3810c  3      OPC=movl_r32_r32    
  popq %r12                     #  72    0x3810f  2      OPC=popq_r64_1      
  popq %r13                     #  73    0x38111  2      OPC=popq_r64_1      
  popq %r11                     #  74    0x38113  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d       #  75    0x38115  7      OPC=andl_r32_imm32  
  nop                           #  76    0x3811c  1      OPC=nop             
  nop                           #  77    0x3811d  1      OPC=nop             
  nop                           #  78    0x3811e  1      OPC=nop             
  nop                           #  79    0x3811f  1      OPC=nop             
  addq %r15, %r11               #  80    0x38120  3      OPC=addq_r64_r64    
  jmpq %r11                     #  81    0x38123  3      OPC=jmpq_r64        
  nop                           #  82    0x38126  1      OPC=nop             
                                                                             
.size __gmpn_rshift, .-__gmpn_rshift

