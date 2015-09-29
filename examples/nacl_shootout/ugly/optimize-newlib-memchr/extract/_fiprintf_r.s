  .text
  .globl _fiprintf_r
  .type _fiprintf_r, @function

#! file-offset 0x15b660
#! rip-offset  0x11b660
#! capacity    192 bytes

# Text                              #  Line  RIP       Bytes  Opcode               
._fiprintf_r:                       #        0x11b660  0      OPC=<label>          
  subl $0xc8, %esp                  #  1     0x11b660  6      OPC=subl_r32_imm32   
  addq %r15, %rsp                   #  2     0x11b666  3      OPC=addq_r64_r64     
  movl %edi, %edi                   #  3     0x11b669  2      OPC=movl_r32_r32     
  movl %esi, %esi                   #  4     0x11b66b  2      OPC=movl_r32_r32     
  leal 0xbf(%rsp), %eax             #  5     0x11b66d  7      OPC=leal_r32_m16     
  movq %rcx, 0x28(%rsp)             #  6     0x11b674  5      OPC=movq_m64_r64     
  movq %r8, 0x30(%rsp)              #  7     0x11b679  5      OPC=movq_m64_r64     
  xchgw %ax, %ax                    #  8     0x11b67e  2      OPC=xchgw_ax_r16     
  movq %r9, 0x38(%rsp)              #  9     0x11b680  5      OPC=movq_m64_r64     
  movl %esp, %ecx                   #  10    0x11b685  2      OPC=movl_r32_r32     
  movl %edx, %edx                   #  11    0x11b687  2      OPC=movl_r32_r32     
  movl %eax, %eax                   #  12    0x11b689  2      OPC=movl_r32_r32     
  movaps %xmm7, -0xf(%r15,%rax,1)   #  13    0x11b68b  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  14    0x11b691  2      OPC=movl_r32_r32     
  movaps %xmm6, -0x1f(%r15,%rax,1)  #  15    0x11b693  6      OPC=movaps_m128_xmm  
  nop                               #  16    0x11b699  1      OPC=nop              
  nop                               #  17    0x11b69a  1      OPC=nop              
  nop                               #  18    0x11b69b  1      OPC=nop              
  nop                               #  19    0x11b69c  1      OPC=nop              
  nop                               #  20    0x11b69d  1      OPC=nop              
  nop                               #  21    0x11b69e  1      OPC=nop              
  nop                               #  22    0x11b69f  1      OPC=nop              
  movl %eax, %eax                   #  23    0x11b6a0  2      OPC=movl_r32_r32     
  movaps %xmm5, -0x2f(%r15,%rax,1)  #  24    0x11b6a2  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  25    0x11b6a8  2      OPC=movl_r32_r32     
  movaps %xmm4, -0x3f(%r15,%rax,1)  #  26    0x11b6aa  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  27    0x11b6b0  2      OPC=movl_r32_r32     
  movaps %xmm3, -0x4f(%r15,%rax,1)  #  28    0x11b6b2  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  29    0x11b6b8  2      OPC=movl_r32_r32     
  movaps %xmm2, -0x5f(%r15,%rax,1)  #  30    0x11b6ba  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  31    0x11b6c0  2      OPC=movl_r32_r32     
  movaps %xmm1, -0x6f(%r15,%rax,1)  #  32    0x11b6c2  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  33    0x11b6c8  2      OPC=movl_r32_r32     
  movaps %xmm0, -0x7f(%r15,%rax,1)  #  34    0x11b6ca  6      OPC=movaps_m128_xmm  
  leal 0xd0(%rsp), %eax             #  35    0x11b6d0  7      OPC=leal_r32_m16     
  movl $0x18, (%rsp)                #  36    0x11b6d7  7      OPC=movl_m32_imm32   
  xchgw %ax, %ax                    #  37    0x11b6de  2      OPC=xchgw_ax_r16     
  movl $0x30, 0x4(%rsp)             #  38    0x11b6e0  8      OPC=movl_m32_imm32   
  movl %eax, 0x8(%rsp)              #  39    0x11b6e8  4      OPC=movl_m32_r32     
  leal 0x10(%rsp), %eax             #  40    0x11b6ec  4      OPC=leal_r32_m16     
  movl %eax, 0xc(%rsp)              #  41    0x11b6f0  4      OPC=movl_m32_r32     
  nop                               #  42    0x11b6f4  1      OPC=nop              
  nop                               #  43    0x11b6f5  1      OPC=nop              
  nop                               #  44    0x11b6f6  1      OPC=nop              
  nop                               #  45    0x11b6f7  1      OPC=nop              
  nop                               #  46    0x11b6f8  1      OPC=nop              
  nop                               #  47    0x11b6f9  1      OPC=nop              
  nop                               #  48    0x11b6fa  1      OPC=nop              
  callq ._vfiprintf_r               #  49    0x11b6fb  5      OPC=callq_label      
  addl $0xc8, %esp                  #  50    0x11b700  6      OPC=addl_r32_imm32   
  addq %r15, %rsp                   #  51    0x11b706  3      OPC=addq_r64_r64     
  popq %r11                         #  52    0x11b709  2      OPC=popq_r64_1       
  andl $0xffffffe0, %r11d           #  53    0x11b70b  7      OPC=andl_r32_imm32   
  nop                               #  54    0x11b712  1      OPC=nop              
  nop                               #  55    0x11b713  1      OPC=nop              
  nop                               #  56    0x11b714  1      OPC=nop              
  nop                               #  57    0x11b715  1      OPC=nop              
  addq %r15, %r11                   #  58    0x11b716  3      OPC=addq_r64_r64     
  jmpq %r11                         #  59    0x11b719  3      OPC=jmpq_r64         
  nop                               #  60    0x11b71c  1      OPC=nop              
  nop                               #  61    0x11b71d  1      OPC=nop              
  nop                               #  62    0x11b71e  1      OPC=nop              
  nop                               #  63    0x11b71f  1      OPC=nop              
  nop                               #  64    0x11b720  1      OPC=nop              
  nop                               #  65    0x11b721  1      OPC=nop              
  nop                               #  66    0x11b722  1      OPC=nop              
  nop                               #  67    0x11b723  1      OPC=nop              
  nop                               #  68    0x11b724  1      OPC=nop              
  nop                               #  69    0x11b725  1      OPC=nop              
  nop                               #  70    0x11b726  1      OPC=nop              
                                                                                   
.size _fiprintf_r, .-_fiprintf_r

