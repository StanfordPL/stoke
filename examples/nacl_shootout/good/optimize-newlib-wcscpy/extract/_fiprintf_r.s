  .text
  .globl _fiprintf_r
  .type _fiprintf_r, @function

#! file-offset 0x15ac40
#! rip-offset  0x11ac40
#! capacity    192 bytes

# Text                              #  Line  RIP       Bytes  Opcode               
._fiprintf_r:                       #        0x11ac40  0      OPC=<label>          
  subl $0xc8, %esp                  #  1     0x11ac40  6      OPC=subl_r32_imm32   
  addq %r15, %rsp                   #  2     0x11ac46  3      OPC=addq_r64_r64     
  movl %edi, %edi                   #  3     0x11ac49  2      OPC=movl_r32_r32     
  movl %esi, %esi                   #  4     0x11ac4b  2      OPC=movl_r32_r32     
  leal 0xbf(%rsp), %eax             #  5     0x11ac4d  7      OPC=leal_r32_m16     
  movq %rcx, 0x28(%rsp)             #  6     0x11ac54  5      OPC=movq_m64_r64     
  movq %r8, 0x30(%rsp)              #  7     0x11ac59  5      OPC=movq_m64_r64     
  xchgw %ax, %ax                    #  8     0x11ac5e  2      OPC=xchgw_ax_r16     
  movq %r9, 0x38(%rsp)              #  9     0x11ac60  5      OPC=movq_m64_r64     
  movl %esp, %ecx                   #  10    0x11ac65  2      OPC=movl_r32_r32     
  movl %edx, %edx                   #  11    0x11ac67  2      OPC=movl_r32_r32     
  movl %eax, %eax                   #  12    0x11ac69  2      OPC=movl_r32_r32     
  movaps %xmm7, -0xf(%r15,%rax,1)   #  13    0x11ac6b  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  14    0x11ac71  2      OPC=movl_r32_r32     
  movaps %xmm6, -0x1f(%r15,%rax,1)  #  15    0x11ac73  6      OPC=movaps_m128_xmm  
  nop                               #  16    0x11ac79  1      OPC=nop              
  nop                               #  17    0x11ac7a  1      OPC=nop              
  nop                               #  18    0x11ac7b  1      OPC=nop              
  nop                               #  19    0x11ac7c  1      OPC=nop              
  nop                               #  20    0x11ac7d  1      OPC=nop              
  nop                               #  21    0x11ac7e  1      OPC=nop              
  nop                               #  22    0x11ac7f  1      OPC=nop              
  movl %eax, %eax                   #  23    0x11ac80  2      OPC=movl_r32_r32     
  movaps %xmm5, -0x2f(%r15,%rax,1)  #  24    0x11ac82  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  25    0x11ac88  2      OPC=movl_r32_r32     
  movaps %xmm4, -0x3f(%r15,%rax,1)  #  26    0x11ac8a  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  27    0x11ac90  2      OPC=movl_r32_r32     
  movaps %xmm3, -0x4f(%r15,%rax,1)  #  28    0x11ac92  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  29    0x11ac98  2      OPC=movl_r32_r32     
  movaps %xmm2, -0x5f(%r15,%rax,1)  #  30    0x11ac9a  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  31    0x11aca0  2      OPC=movl_r32_r32     
  movaps %xmm1, -0x6f(%r15,%rax,1)  #  32    0x11aca2  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  33    0x11aca8  2      OPC=movl_r32_r32     
  movaps %xmm0, -0x7f(%r15,%rax,1)  #  34    0x11acaa  6      OPC=movaps_m128_xmm  
  leal 0xd0(%rsp), %eax             #  35    0x11acb0  7      OPC=leal_r32_m16     
  movl $0x18, (%rsp)                #  36    0x11acb7  7      OPC=movl_m32_imm32   
  xchgw %ax, %ax                    #  37    0x11acbe  2      OPC=xchgw_ax_r16     
  movl $0x30, 0x4(%rsp)             #  38    0x11acc0  8      OPC=movl_m32_imm32   
  movl %eax, 0x8(%rsp)              #  39    0x11acc8  4      OPC=movl_m32_r32     
  leal 0x10(%rsp), %eax             #  40    0x11accc  4      OPC=leal_r32_m16     
  movl %eax, 0xc(%rsp)              #  41    0x11acd0  4      OPC=movl_m32_r32     
  nop                               #  42    0x11acd4  1      OPC=nop              
  nop                               #  43    0x11acd5  1      OPC=nop              
  nop                               #  44    0x11acd6  1      OPC=nop              
  nop                               #  45    0x11acd7  1      OPC=nop              
  nop                               #  46    0x11acd8  1      OPC=nop              
  nop                               #  47    0x11acd9  1      OPC=nop              
  nop                               #  48    0x11acda  1      OPC=nop              
  callq ._vfiprintf_r               #  49    0x11acdb  5      OPC=callq_label      
  addl $0xc8, %esp                  #  50    0x11ace0  6      OPC=addl_r32_imm32   
  addq %r15, %rsp                   #  51    0x11ace6  3      OPC=addq_r64_r64     
  popq %r11                         #  52    0x11ace9  2      OPC=popq_r64_1       
  andl $0xffffffe0, %r11d           #  53    0x11aceb  7      OPC=andl_r32_imm32   
  nop                               #  54    0x11acf2  1      OPC=nop              
  nop                               #  55    0x11acf3  1      OPC=nop              
  nop                               #  56    0x11acf4  1      OPC=nop              
  nop                               #  57    0x11acf5  1      OPC=nop              
  addq %r15, %r11                   #  58    0x11acf6  3      OPC=addq_r64_r64     
  jmpq %r11                         #  59    0x11acf9  3      OPC=jmpq_r64         
  nop                               #  60    0x11acfc  1      OPC=nop              
  nop                               #  61    0x11acfd  1      OPC=nop              
  nop                               #  62    0x11acfe  1      OPC=nop              
  nop                               #  63    0x11acff  1      OPC=nop              
  nop                               #  64    0x11ad00  1      OPC=nop              
  nop                               #  65    0x11ad01  1      OPC=nop              
  nop                               #  66    0x11ad02  1      OPC=nop              
  nop                               #  67    0x11ad03  1      OPC=nop              
  nop                               #  68    0x11ad04  1      OPC=nop              
  nop                               #  69    0x11ad05  1      OPC=nop              
  nop                               #  70    0x11ad06  1      OPC=nop              
                                                                                   
.size _fiprintf_r, .-_fiprintf_r

