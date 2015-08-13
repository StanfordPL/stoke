  .text
  .globl __gmpn_rshift
  .type __gmpn_rshift, @function

#! file-offset 0x77d80
#! rip-offset  0x37d80
#! capacity    160 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
.__gmpn_rshift:                 #        0x37d80  0      OPC=<label>         
  pushq %r13                    #  1     0x37d80  2      OPC=pushq_r64_1     
  movl %esi, %esi               #  2     0x37d82  2      OPC=movl_r32_r32    
  movl $0x20, %eax              #  3     0x37d84  5      OPC=movl_r32_imm32  
  movl %edx, %r8d               #  4     0x37d89  3      OPC=movl_r32_r32    
  subl %ecx, %eax               #  5     0x37d8c  2      OPC=subl_r32_r32    
  movl %edi, %edi               #  6     0x37d8e  2      OPC=movl_r32_r32    
  pushq %r12                    #  7     0x37d90  2      OPC=pushq_r64_1     
  pushq %rbx                    #  8     0x37d92  1      OPC=pushq_r64_1     
  movl %esi, %esi               #  9     0x37d93  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %r12d     #  10    0x37d95  4      OPC=movl_r32_m32    
  movl %ecx, %ebx               #  11    0x37d99  2      OPC=movl_r32_r32    
  movl %r12d, %r11d             #  12    0x37d9b  3      OPC=movl_r32_r32    
  xchgw %ax, %ax                #  13    0x37d9e  2      OPC=xchgw_ax_r16    
  shrl %cl, %r11d               #  14    0x37da0  3      OPC=shrl_r32_cl     
  subl $0x1, %r8d               #  15    0x37da3  4      OPC=subl_r32_imm8   
  je .L_37e00                   #  16    0x37da7  2      OPC=je_label        
  addl $0x4, %esi               #  17    0x37da9  3      OPC=addl_r32_imm8   
  movq %rdi, %r9                #  18    0x37dac  3      OPC=movq_r64_r64    
  xchgw %ax, %ax                #  19    0x37daf  2      OPC=xchgw_ax_r16    
  nop                           #  20    0x37db1  1      OPC=nop             
  nop                           #  21    0x37db2  1      OPC=nop             
  nop                           #  22    0x37db3  1      OPC=nop             
  nop                           #  23    0x37db4  1      OPC=nop             
  nop                           #  24    0x37db5  1      OPC=nop             
  nop                           #  25    0x37db6  1      OPC=nop             
  nop                           #  26    0x37db7  1      OPC=nop             
  nop                           #  27    0x37db8  1      OPC=nop             
  nop                           #  28    0x37db9  1      OPC=nop             
  nop                           #  29    0x37dba  1      OPC=nop             
  nop                           #  30    0x37dbb  1      OPC=nop             
  nop                           #  31    0x37dbc  1      OPC=nop             
  nop                           #  32    0x37dbd  1      OPC=nop             
  nop                           #  33    0x37dbe  1      OPC=nop             
  nop                           #  34    0x37dbf  1      OPC=nop             
.L_37dc0:                       #        0x37dc0  0      OPC=<label>         
  movl %esi, %esi               #  35    0x37dc0  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %r10d     #  36    0x37dc2  4      OPC=movl_r32_m32    
  movl %eax, %ecx               #  37    0x37dc6  2      OPC=movl_r32_r32    
  addl $0x4, %esi               #  38    0x37dc8  3      OPC=addl_r32_imm8   
  movl %r10d, %r13d             #  39    0x37dcb  3      OPC=movl_r32_r32    
  shll %cl, %r13d               #  40    0x37dce  3      OPC=shll_r32_cl     
  movl %ebx, %ecx               #  41    0x37dd1  2      OPC=movl_r32_r32    
  orl %r11d, %r13d              #  42    0x37dd3  3      OPC=orl_r32_r32     
  movl %r10d, %r11d             #  43    0x37dd6  3      OPC=movl_r32_r32    
  movl %r9d, %r9d               #  44    0x37dd9  3      OPC=movl_r32_r32    
  movl %r13d, (%r15,%r9,1)      #  45    0x37ddc  4      OPC=movl_m32_r32    
  shrl %cl, %r11d               #  46    0x37de0  3      OPC=shrl_r32_cl     
  addl $0x4, %r9d               #  47    0x37de3  4      OPC=addl_r32_imm8   
  subl $0x1, %r8d               #  48    0x37de7  4      OPC=subl_r32_imm8   
  jne .L_37dc0                  #  49    0x37deb  2      OPC=jne_label       
  leal -0x4(%rdi,%rdx,4), %edi  #  50    0x37ded  4      OPC=leal_r32_m16    
  nop                           #  51    0x37df1  1      OPC=nop             
  nop                           #  52    0x37df2  1      OPC=nop             
  nop                           #  53    0x37df3  1      OPC=nop             
  nop                           #  54    0x37df4  1      OPC=nop             
  nop                           #  55    0x37df5  1      OPC=nop             
  nop                           #  56    0x37df6  1      OPC=nop             
  nop                           #  57    0x37df7  1      OPC=nop             
  nop                           #  58    0x37df8  1      OPC=nop             
  nop                           #  59    0x37df9  1      OPC=nop             
  nop                           #  60    0x37dfa  1      OPC=nop             
  nop                           #  61    0x37dfb  1      OPC=nop             
  nop                           #  62    0x37dfc  1      OPC=nop             
  nop                           #  63    0x37dfd  1      OPC=nop             
  nop                           #  64    0x37dfe  1      OPC=nop             
  nop                           #  65    0x37dff  1      OPC=nop             
.L_37e00:                       #        0x37e00  0      OPC=<label>         
  movl %eax, %ecx               #  66    0x37e00  2      OPC=movl_r32_r32    
  movl %edi, %edi               #  67    0x37e02  2      OPC=movl_r32_r32    
  movl %r11d, (%r15,%rdi,1)     #  68    0x37e04  4      OPC=movl_m32_r32    
  shll %cl, %r12d               #  69    0x37e08  3      OPC=shll_r32_cl     
  popq %rbx                     #  70    0x37e0b  1      OPC=popq_r64_1      
  movl %r12d, %eax              #  71    0x37e0c  3      OPC=movl_r32_r32    
  popq %r12                     #  72    0x37e0f  2      OPC=popq_r64_1      
  popq %r13                     #  73    0x37e11  2      OPC=popq_r64_1      
  popq %r11                     #  74    0x37e13  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d       #  75    0x37e15  7      OPC=andl_r32_imm32  
  nop                           #  76    0x37e1c  1      OPC=nop             
  nop                           #  77    0x37e1d  1      OPC=nop             
  nop                           #  78    0x37e1e  1      OPC=nop             
  nop                           #  79    0x37e1f  1      OPC=nop             
  addq %r15, %r11               #  80    0x37e20  3      OPC=addq_r64_r64    
  jmpq %r11                     #  81    0x37e23  3      OPC=jmpq_r64        
  nop                           #  82    0x37e26  1      OPC=nop             
                                                                             
.size __gmpn_rshift, .-__gmpn_rshift

