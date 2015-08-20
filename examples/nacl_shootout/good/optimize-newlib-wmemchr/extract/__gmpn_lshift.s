  .text
  .globl __gmpn_lshift
  .type __gmpn_lshift, @function

#! file-offset 0x72ca0
#! rip-offset  0x32ca0
#! capacity    160 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
.__gmpn_lshift:                 #        0x32ca0  0      OPC=<label>         
  pushq %r13                    #  1     0x32ca0  2      OPC=pushq_r64_1     
  leal (,%rdx,4), %eax          #  2     0x32ca2  7      OPC=leal_r32_m16    
  movl %edx, %r8d               #  3     0x32ca9  3      OPC=movl_r32_r32    
  pushq %r12                    #  4     0x32cac  2      OPC=pushq_r64_1     
  leal -0x4(%rax,%rsi,1), %esi  #  5     0x32cae  4      OPC=leal_r32_m16    
  addl %eax, %edi               #  6     0x32cb2  2      OPC=addl_r32_r32    
  movl %ecx, %r12d              #  7     0x32cb4  3      OPC=movl_r32_r32    
  pushq %rbx                    #  8     0x32cb7  1      OPC=pushq_r64_1     
  movl %esi, %esi               #  9     0x32cb8  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax      #  10    0x32cba  4      OPC=movl_r32_m32    
  xchgw %ax, %ax                #  11    0x32cbe  2      OPC=xchgw_ax_r16    
  movl $0x20, %ebx              #  12    0x32cc0  5      OPC=movl_r32_imm32  
  subl %ecx, %ebx               #  13    0x32cc5  2      OPC=subl_r32_r32    
  movl %eax, %r11d              #  14    0x32cc7  3      OPC=movl_r32_r32    
  shll %cl, %r11d               #  15    0x32cca  3      OPC=shll_r32_cl     
  subl $0x1, %r8d               #  16    0x32ccd  4      OPC=subl_r32_imm8   
  je .L_32d20                   #  17    0x32cd1  2      OPC=je_label        
  movq %rdi, %r9                #  18    0x32cd3  3      OPC=movq_r64_r64    
  nop                           #  19    0x32cd6  1      OPC=nop             
  nop                           #  20    0x32cd7  1      OPC=nop             
  nop                           #  21    0x32cd8  1      OPC=nop             
  nop                           #  22    0x32cd9  1      OPC=nop             
  nop                           #  23    0x32cda  1      OPC=nop             
  nop                           #  24    0x32cdb  1      OPC=nop             
  nop                           #  25    0x32cdc  1      OPC=nop             
  nop                           #  26    0x32cdd  1      OPC=nop             
  nop                           #  27    0x32cde  1      OPC=nop             
  nop                           #  28    0x32cdf  1      OPC=nop             
.L_32ce0:                       #        0x32ce0  0      OPC=<label>         
  subl $0x4, %esi               #  29    0x32ce0  3      OPC=subl_r32_imm8   
  movl %ebx, %ecx               #  30    0x32ce3  2      OPC=movl_r32_r32    
  subl $0x4, %r9d               #  31    0x32ce5  4      OPC=subl_r32_imm8   
  movl %esi, %esi               #  32    0x32ce9  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %r10d     #  33    0x32ceb  4      OPC=movl_r32_m32    
  movl %r10d, %r13d             #  34    0x32cef  3      OPC=movl_r32_r32    
  shrl %cl, %r13d               #  35    0x32cf2  3      OPC=shrl_r32_cl     
  movl %r12d, %ecx              #  36    0x32cf5  3      OPC=movl_r32_r32    
  orl %r11d, %r13d              #  37    0x32cf8  3      OPC=orl_r32_r32     
  movl %r10d, %r11d             #  38    0x32cfb  3      OPC=movl_r32_r32    
  xchgw %ax, %ax                #  39    0x32cfe  2      OPC=xchgw_ax_r16    
  shll %cl, %r11d               #  40    0x32d00  3      OPC=shll_r32_cl     
  subl $0x1, %r8d               #  41    0x32d03  4      OPC=subl_r32_imm8   
  movl %r9d, %r9d               #  42    0x32d07  3      OPC=movl_r32_r32    
  movl %r13d, (%r15,%r9,1)      #  43    0x32d0a  4      OPC=movl_m32_r32    
  jne .L_32ce0                  #  44    0x32d0e  2      OPC=jne_label       
  subl $0x2, %edx               #  45    0x32d10  3      OPC=subl_r32_imm8   
  notl %edx                     #  46    0x32d13  2      OPC=notl_r32        
  leal (%rdi,%rdx,4), %edi      #  47    0x32d15  3      OPC=leal_r32_m16    
  nop                           #  48    0x32d18  1      OPC=nop             
  nop                           #  49    0x32d19  1      OPC=nop             
  nop                           #  50    0x32d1a  1      OPC=nop             
  nop                           #  51    0x32d1b  1      OPC=nop             
  nop                           #  52    0x32d1c  1      OPC=nop             
  nop                           #  53    0x32d1d  1      OPC=nop             
  nop                           #  54    0x32d1e  1      OPC=nop             
  nop                           #  55    0x32d1f  1      OPC=nop             
.L_32d20:                       #        0x32d20  0      OPC=<label>         
  subl $0x4, %edi               #  56    0x32d20  3      OPC=subl_r32_imm8   
  movl %ebx, %ecx               #  57    0x32d23  2      OPC=movl_r32_r32    
  movl %edi, %edi               #  58    0x32d25  2      OPC=movl_r32_r32    
  movl %r11d, (%r15,%rdi,1)     #  59    0x32d27  4      OPC=movl_m32_r32    
  shrl %cl, %eax                #  60    0x32d2b  2      OPC=shrl_r32_cl     
  popq %rbx                     #  61    0x32d2d  1      OPC=popq_r64_1      
  popq %r12                     #  62    0x32d2e  2      OPC=popq_r64_1      
  popq %r13                     #  63    0x32d30  2      OPC=popq_r64_1      
  popq %r11                     #  64    0x32d32  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d       #  65    0x32d34  7      OPC=andl_r32_imm32  
  nop                           #  66    0x32d3b  1      OPC=nop             
  nop                           #  67    0x32d3c  1      OPC=nop             
  nop                           #  68    0x32d3d  1      OPC=nop             
  nop                           #  69    0x32d3e  1      OPC=nop             
  addq %r15, %r11               #  70    0x32d3f  3      OPC=addq_r64_r64    
  jmpq %r11                     #  71    0x32d42  3      OPC=jmpq_r64        
  nop                           #  72    0x32d45  1      OPC=nop             
  nop                           #  73    0x32d46  1      OPC=nop             
                                                                             
.size __gmpn_lshift, .-__gmpn_lshift

