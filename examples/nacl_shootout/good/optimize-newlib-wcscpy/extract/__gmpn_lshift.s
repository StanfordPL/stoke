  .text
  .globl __gmpn_lshift
  .type __gmpn_lshift, @function

#! file-offset 0x729a0
#! rip-offset  0x329a0
#! capacity    160 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
.__gmpn_lshift:                 #        0x329a0  0      OPC=<label>         
  pushq %r13                    #  1     0x329a0  2      OPC=pushq_r64_1     
  leal (,%rdx,4), %eax          #  2     0x329a2  7      OPC=leal_r32_m16    
  movl %edx, %r8d               #  3     0x329a9  3      OPC=movl_r32_r32    
  pushq %r12                    #  4     0x329ac  2      OPC=pushq_r64_1     
  leal -0x4(%rax,%rsi,1), %esi  #  5     0x329ae  4      OPC=leal_r32_m16    
  addl %eax, %edi               #  6     0x329b2  2      OPC=addl_r32_r32    
  movl %ecx, %r12d              #  7     0x329b4  3      OPC=movl_r32_r32    
  pushq %rbx                    #  8     0x329b7  1      OPC=pushq_r64_1     
  movl %esi, %esi               #  9     0x329b8  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax      #  10    0x329ba  4      OPC=movl_r32_m32    
  xchgw %ax, %ax                #  11    0x329be  2      OPC=xchgw_ax_r16    
  movl $0x20, %ebx              #  12    0x329c0  5      OPC=movl_r32_imm32  
  subl %ecx, %ebx               #  13    0x329c5  2      OPC=subl_r32_r32    
  movl %eax, %r11d              #  14    0x329c7  3      OPC=movl_r32_r32    
  shll %cl, %r11d               #  15    0x329ca  3      OPC=shll_r32_cl     
  subl $0x1, %r8d               #  16    0x329cd  4      OPC=subl_r32_imm8   
  je .L_32a20                   #  17    0x329d1  2      OPC=je_label        
  movq %rdi, %r9                #  18    0x329d3  3      OPC=movq_r64_r64    
  nop                           #  19    0x329d6  1      OPC=nop             
  nop                           #  20    0x329d7  1      OPC=nop             
  nop                           #  21    0x329d8  1      OPC=nop             
  nop                           #  22    0x329d9  1      OPC=nop             
  nop                           #  23    0x329da  1      OPC=nop             
  nop                           #  24    0x329db  1      OPC=nop             
  nop                           #  25    0x329dc  1      OPC=nop             
  nop                           #  26    0x329dd  1      OPC=nop             
  nop                           #  27    0x329de  1      OPC=nop             
  nop                           #  28    0x329df  1      OPC=nop             
.L_329e0:                       #        0x329e0  0      OPC=<label>         
  subl $0x4, %esi               #  29    0x329e0  3      OPC=subl_r32_imm8   
  movl %ebx, %ecx               #  30    0x329e3  2      OPC=movl_r32_r32    
  subl $0x4, %r9d               #  31    0x329e5  4      OPC=subl_r32_imm8   
  movl %esi, %esi               #  32    0x329e9  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %r10d     #  33    0x329eb  4      OPC=movl_r32_m32    
  movl %r10d, %r13d             #  34    0x329ef  3      OPC=movl_r32_r32    
  shrl %cl, %r13d               #  35    0x329f2  3      OPC=shrl_r32_cl     
  movl %r12d, %ecx              #  36    0x329f5  3      OPC=movl_r32_r32    
  orl %r11d, %r13d              #  37    0x329f8  3      OPC=orl_r32_r32     
  movl %r10d, %r11d             #  38    0x329fb  3      OPC=movl_r32_r32    
  xchgw %ax, %ax                #  39    0x329fe  2      OPC=xchgw_ax_r16    
  shll %cl, %r11d               #  40    0x32a00  3      OPC=shll_r32_cl     
  subl $0x1, %r8d               #  41    0x32a03  4      OPC=subl_r32_imm8   
  movl %r9d, %r9d               #  42    0x32a07  3      OPC=movl_r32_r32    
  movl %r13d, (%r15,%r9,1)      #  43    0x32a0a  4      OPC=movl_m32_r32    
  jne .L_329e0                  #  44    0x32a0e  2      OPC=jne_label       
  subl $0x2, %edx               #  45    0x32a10  3      OPC=subl_r32_imm8   
  notl %edx                     #  46    0x32a13  2      OPC=notl_r32        
  leal (%rdi,%rdx,4), %edi      #  47    0x32a15  3      OPC=leal_r32_m16    
  nop                           #  48    0x32a18  1      OPC=nop             
  nop                           #  49    0x32a19  1      OPC=nop             
  nop                           #  50    0x32a1a  1      OPC=nop             
  nop                           #  51    0x32a1b  1      OPC=nop             
  nop                           #  52    0x32a1c  1      OPC=nop             
  nop                           #  53    0x32a1d  1      OPC=nop             
  nop                           #  54    0x32a1e  1      OPC=nop             
  nop                           #  55    0x32a1f  1      OPC=nop             
.L_32a20:                       #        0x32a20  0      OPC=<label>         
  subl $0x4, %edi               #  56    0x32a20  3      OPC=subl_r32_imm8   
  movl %ebx, %ecx               #  57    0x32a23  2      OPC=movl_r32_r32    
  movl %edi, %edi               #  58    0x32a25  2      OPC=movl_r32_r32    
  movl %r11d, (%r15,%rdi,1)     #  59    0x32a27  4      OPC=movl_m32_r32    
  shrl %cl, %eax                #  60    0x32a2b  2      OPC=shrl_r32_cl     
  popq %rbx                     #  61    0x32a2d  1      OPC=popq_r64_1      
  popq %r12                     #  62    0x32a2e  2      OPC=popq_r64_1      
  popq %r13                     #  63    0x32a30  2      OPC=popq_r64_1      
  popq %r11                     #  64    0x32a32  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d       #  65    0x32a34  7      OPC=andl_r32_imm32  
  nop                           #  66    0x32a3b  1      OPC=nop             
  nop                           #  67    0x32a3c  1      OPC=nop             
  nop                           #  68    0x32a3d  1      OPC=nop             
  nop                           #  69    0x32a3e  1      OPC=nop             
  addq %r15, %r11               #  70    0x32a3f  3      OPC=addq_r64_r64    
  jmpq %r11                     #  71    0x32a42  3      OPC=jmpq_r64        
  nop                           #  72    0x32a45  1      OPC=nop             
  nop                           #  73    0x32a46  1      OPC=nop             
                                                                             
.size __gmpn_lshift, .-__gmpn_lshift

