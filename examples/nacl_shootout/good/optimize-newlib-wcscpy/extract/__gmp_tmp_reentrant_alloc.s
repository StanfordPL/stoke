  .text
  .globl __gmp_tmp_reentrant_alloc
  .type __gmp_tmp_reentrant_alloc, @function

#! file-offset 0x77c80
#! rip-offset  0x37c80
#! capacity    128 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
.__gmp_tmp_reentrant_alloc:     #        0x37c80  0      OPC=<label>         
  movq %r12, -0x8(%rsp)         #  1     0x37c80  5      OPC=movq_m64_r64    
  leal 0x8(%rsi), %r12d         #  2     0x37c85  4      OPC=leal_r32_m16    
  movq %rbx, -0x10(%rsp)        #  3     0x37c89  5      OPC=movq_m64_r64    
  subl $0x18, %esp              #  4     0x37c8e  3      OPC=subl_r32_imm8   
  addq %r15, %rsp               #  5     0x37c91  3      OPC=addq_r64_r64    
  movl %edi, %ebx               #  6     0x37c94  2      OPC=movl_r32_r32    
  movl 0x10038bb0(%rip), %eax   #  7     0x37c96  6      OPC=movl_r32_m32    
  movl %r12d, %edi              #  8     0x37c9c  3      OPC=movl_r32_r32    
  nop                           #  9     0x37c9f  1      OPC=nop             
  nop                           #  10    0x37ca0  1      OPC=nop             
  nop                           #  11    0x37ca1  1      OPC=nop             
  nop                           #  12    0x37ca2  1      OPC=nop             
  nop                           #  13    0x37ca3  1      OPC=nop             
  nop                           #  14    0x37ca4  1      OPC=nop             
  nop                           #  15    0x37ca5  1      OPC=nop             
  nop                           #  16    0x37ca6  1      OPC=nop             
  nop                           #  17    0x37ca7  1      OPC=nop             
  nop                           #  18    0x37ca8  1      OPC=nop             
  nop                           #  19    0x37ca9  1      OPC=nop             
  nop                           #  20    0x37caa  1      OPC=nop             
  nop                           #  21    0x37cab  1      OPC=nop             
  nop                           #  22    0x37cac  1      OPC=nop             
  nop                           #  23    0x37cad  1      OPC=nop             
  nop                           #  24    0x37cae  1      OPC=nop             
  nop                           #  25    0x37caf  1      OPC=nop             
  nop                           #  26    0x37cb0  1      OPC=nop             
  nop                           #  27    0x37cb1  1      OPC=nop             
  nop                           #  28    0x37cb2  1      OPC=nop             
  nop                           #  29    0x37cb3  1      OPC=nop             
  nop                           #  30    0x37cb4  1      OPC=nop             
  nop                           #  31    0x37cb5  1      OPC=nop             
  nop                           #  32    0x37cb6  1      OPC=nop             
  nop                           #  33    0x37cb7  1      OPC=nop             
  andl $0xffffffe0, %eax        #  34    0x37cb8  6      OPC=andl_r32_imm32  
  nop                           #  35    0x37cbe  1      OPC=nop             
  nop                           #  36    0x37cbf  1      OPC=nop             
  nop                           #  37    0x37cc0  1      OPC=nop             
  addq %r15, %rax               #  38    0x37cc1  3      OPC=addq_r64_r64    
  callq %rax                    #  39    0x37cc4  2      OPC=callq_r64       
  movl %ebx, %ebx               #  40    0x37cc6  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %edx      #  41    0x37cc8  4      OPC=movl_r32_m32    
  movl %eax, %eax               #  42    0x37ccc  2      OPC=movl_r32_r32    
  movl %eax, %eax               #  43    0x37cce  2      OPC=movl_r32_r32    
  movl %r12d, 0x4(%r15,%rax,1)  #  44    0x37cd0  5      OPC=movl_m32_r32    
  movl %eax, %eax               #  45    0x37cd5  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rax,1)      #  46    0x37cd7  4      OPC=movl_m32_r32    
  movl %ebx, %ebx               #  47    0x37cdb  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)      #  48    0x37cdd  4      OPC=movl_m32_r32    
  addl $0x8, %eax               #  49    0x37ce1  3      OPC=addl_r32_imm8   
  xchgw %ax, %ax                #  50    0x37ce4  2      OPC=xchgw_ax_r16    
  movq 0x8(%rsp), %rbx          #  51    0x37ce6  5      OPC=movq_r64_m64    
  movq 0x10(%rsp), %r12         #  52    0x37ceb  5      OPC=movq_r64_m64    
  addl $0x18, %esp              #  53    0x37cf0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp               #  54    0x37cf3  3      OPC=addq_r64_r64    
  popq %r11                     #  55    0x37cf6  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d       #  56    0x37cf8  7      OPC=andl_r32_imm32  
  nop                           #  57    0x37cff  1      OPC=nop             
  nop                           #  58    0x37d00  1      OPC=nop             
  nop                           #  59    0x37d01  1      OPC=nop             
  nop                           #  60    0x37d02  1      OPC=nop             
  addq %r15, %r11               #  61    0x37d03  3      OPC=addq_r64_r64    
  jmpq %r11                     #  62    0x37d06  3      OPC=jmpq_r64        
  nop                           #  63    0x37d09  1      OPC=nop             
  nop                           #  64    0x37d0a  1      OPC=nop             
  nop                           #  65    0x37d0b  1      OPC=nop             
  nop                           #  66    0x37d0c  1      OPC=nop             
                                                                             
.size __gmp_tmp_reentrant_alloc, .-__gmp_tmp_reentrant_alloc

