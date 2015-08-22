  .text
  .globl __gmpn_lshift
  .type __gmpn_lshift, @function

#! file-offset 0x733c0
#! rip-offset  0x333c0
#! capacity    160 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
.__gmpn_lshift:                 #        0x333c0  0      OPC=<label>         
  pushq %r13                    #  1     0x333c0  2      OPC=pushq_r64_1     
  leal (,%rdx,4), %eax          #  2     0x333c2  7      OPC=leal_r32_m16    
  movl %edx, %r8d               #  3     0x333c9  3      OPC=movl_r32_r32    
  pushq %r12                    #  4     0x333cc  2      OPC=pushq_r64_1     
  leal -0x4(%rax,%rsi,1), %esi  #  5     0x333ce  4      OPC=leal_r32_m16    
  addl %eax, %edi               #  6     0x333d2  2      OPC=addl_r32_r32    
  movl %ecx, %r12d              #  7     0x333d4  3      OPC=movl_r32_r32    
  pushq %rbx                    #  8     0x333d7  1      OPC=pushq_r64_1     
  movl %esi, %esi               #  9     0x333d8  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax      #  10    0x333da  4      OPC=movl_r32_m32    
  xchgw %ax, %ax                #  11    0x333de  2      OPC=xchgw_ax_r16    
  movl $0x20, %ebx              #  12    0x333e0  5      OPC=movl_r32_imm32  
  subl %ecx, %ebx               #  13    0x333e5  2      OPC=subl_r32_r32    
  movl %eax, %r11d              #  14    0x333e7  3      OPC=movl_r32_r32    
  shll %cl, %r11d               #  15    0x333ea  3      OPC=shll_r32_cl     
  subl $0x1, %r8d               #  16    0x333ed  4      OPC=subl_r32_imm8   
  je .L_33440                   #  17    0x333f1  2      OPC=je_label        
  movq %rdi, %r9                #  18    0x333f3  3      OPC=movq_r64_r64    
  nop                           #  19    0x333f6  1      OPC=nop             
  nop                           #  20    0x333f7  1      OPC=nop             
  nop                           #  21    0x333f8  1      OPC=nop             
  nop                           #  22    0x333f9  1      OPC=nop             
  nop                           #  23    0x333fa  1      OPC=nop             
  nop                           #  24    0x333fb  1      OPC=nop             
  nop                           #  25    0x333fc  1      OPC=nop             
  nop                           #  26    0x333fd  1      OPC=nop             
  nop                           #  27    0x333fe  1      OPC=nop             
  nop                           #  28    0x333ff  1      OPC=nop             
.L_33400:                       #        0x33400  0      OPC=<label>         
  subl $0x4, %esi               #  29    0x33400  3      OPC=subl_r32_imm8   
  movl %ebx, %ecx               #  30    0x33403  2      OPC=movl_r32_r32    
  subl $0x4, %r9d               #  31    0x33405  4      OPC=subl_r32_imm8   
  movl %esi, %esi               #  32    0x33409  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %r10d     #  33    0x3340b  4      OPC=movl_r32_m32    
  movl %r10d, %r13d             #  34    0x3340f  3      OPC=movl_r32_r32    
  shrl %cl, %r13d               #  35    0x33412  3      OPC=shrl_r32_cl     
  movl %r12d, %ecx              #  36    0x33415  3      OPC=movl_r32_r32    
  orl %r11d, %r13d              #  37    0x33418  3      OPC=orl_r32_r32     
  movl %r10d, %r11d             #  38    0x3341b  3      OPC=movl_r32_r32    
  xchgw %ax, %ax                #  39    0x3341e  2      OPC=xchgw_ax_r16    
  shll %cl, %r11d               #  40    0x33420  3      OPC=shll_r32_cl     
  subl $0x1, %r8d               #  41    0x33423  4      OPC=subl_r32_imm8   
  movl %r9d, %r9d               #  42    0x33427  3      OPC=movl_r32_r32    
  movl %r13d, (%r15,%r9,1)      #  43    0x3342a  4      OPC=movl_m32_r32    
  jne .L_33400                  #  44    0x3342e  2      OPC=jne_label       
  subl $0x2, %edx               #  45    0x33430  3      OPC=subl_r32_imm8   
  notl %edx                     #  46    0x33433  2      OPC=notl_r32        
  leal (%rdi,%rdx,4), %edi      #  47    0x33435  3      OPC=leal_r32_m16    
  nop                           #  48    0x33438  1      OPC=nop             
  nop                           #  49    0x33439  1      OPC=nop             
  nop                           #  50    0x3343a  1      OPC=nop             
  nop                           #  51    0x3343b  1      OPC=nop             
  nop                           #  52    0x3343c  1      OPC=nop             
  nop                           #  53    0x3343d  1      OPC=nop             
  nop                           #  54    0x3343e  1      OPC=nop             
  nop                           #  55    0x3343f  1      OPC=nop             
.L_33440:                       #        0x33440  0      OPC=<label>         
  subl $0x4, %edi               #  56    0x33440  3      OPC=subl_r32_imm8   
  movl %ebx, %ecx               #  57    0x33443  2      OPC=movl_r32_r32    
  movl %edi, %edi               #  58    0x33445  2      OPC=movl_r32_r32    
  movl %r11d, (%r15,%rdi,1)     #  59    0x33447  4      OPC=movl_m32_r32    
  shrl %cl, %eax                #  60    0x3344b  2      OPC=shrl_r32_cl     
  popq %rbx                     #  61    0x3344d  1      OPC=popq_r64_1      
  popq %r12                     #  62    0x3344e  2      OPC=popq_r64_1      
  popq %r13                     #  63    0x33450  2      OPC=popq_r64_1      
  popq %r11                     #  64    0x33452  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d       #  65    0x33454  7      OPC=andl_r32_imm32  
  nop                           #  66    0x3345b  1      OPC=nop             
  nop                           #  67    0x3345c  1      OPC=nop             
  nop                           #  68    0x3345d  1      OPC=nop             
  nop                           #  69    0x3345e  1      OPC=nop             
  addq %r15, %r11               #  70    0x3345f  3      OPC=addq_r64_r64    
  jmpq %r11                     #  71    0x33462  3      OPC=jmpq_r64        
  nop                           #  72    0x33465  1      OPC=nop             
  nop                           #  73    0x33466  1      OPC=nop             
                                                                             
.size __gmpn_lshift, .-__gmpn_lshift

