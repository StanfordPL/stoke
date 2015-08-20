  .text
  .globl _fiprintf_r
  .type _fiprintf_r, @function

#! file-offset 0x15af40
#! rip-offset  0x11af40
#! capacity    192 bytes

# Text                              #  Line  RIP       Bytes  Opcode               
._fiprintf_r:                       #        0x11af40  0      OPC=<label>          
  subl $0xc8, %esp                  #  1     0x11af40  6      OPC=subl_r32_imm32   
  addq %r15, %rsp                   #  2     0x11af46  3      OPC=addq_r64_r64     
  movl %edi, %edi                   #  3     0x11af49  2      OPC=movl_r32_r32     
  movl %esi, %esi                   #  4     0x11af4b  2      OPC=movl_r32_r32     
  leal 0xbf(%rsp), %eax             #  5     0x11af4d  7      OPC=leal_r32_m16     
  movq %rcx, 0x28(%rsp)             #  6     0x11af54  5      OPC=movq_m64_r64     
  movq %r8, 0x30(%rsp)              #  7     0x11af59  5      OPC=movq_m64_r64     
  xchgw %ax, %ax                    #  8     0x11af5e  2      OPC=xchgw_ax_r16     
  movq %r9, 0x38(%rsp)              #  9     0x11af60  5      OPC=movq_m64_r64     
  movl %esp, %ecx                   #  10    0x11af65  2      OPC=movl_r32_r32     
  movl %edx, %edx                   #  11    0x11af67  2      OPC=movl_r32_r32     
  movl %eax, %eax                   #  12    0x11af69  2      OPC=movl_r32_r32     
  movaps %xmm7, -0xf(%r15,%rax,1)   #  13    0x11af6b  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  14    0x11af71  2      OPC=movl_r32_r32     
  movaps %xmm6, -0x1f(%r15,%rax,1)  #  15    0x11af73  6      OPC=movaps_m128_xmm  
  nop                               #  16    0x11af79  1      OPC=nop              
  nop                               #  17    0x11af7a  1      OPC=nop              
  nop                               #  18    0x11af7b  1      OPC=nop              
  nop                               #  19    0x11af7c  1      OPC=nop              
  nop                               #  20    0x11af7d  1      OPC=nop              
  nop                               #  21    0x11af7e  1      OPC=nop              
  nop                               #  22    0x11af7f  1      OPC=nop              
  movl %eax, %eax                   #  23    0x11af80  2      OPC=movl_r32_r32     
  movaps %xmm5, -0x2f(%r15,%rax,1)  #  24    0x11af82  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  25    0x11af88  2      OPC=movl_r32_r32     
  movaps %xmm4, -0x3f(%r15,%rax,1)  #  26    0x11af8a  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  27    0x11af90  2      OPC=movl_r32_r32     
  movaps %xmm3, -0x4f(%r15,%rax,1)  #  28    0x11af92  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  29    0x11af98  2      OPC=movl_r32_r32     
  movaps %xmm2, -0x5f(%r15,%rax,1)  #  30    0x11af9a  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  31    0x11afa0  2      OPC=movl_r32_r32     
  movaps %xmm1, -0x6f(%r15,%rax,1)  #  32    0x11afa2  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  33    0x11afa8  2      OPC=movl_r32_r32     
  movaps %xmm0, -0x7f(%r15,%rax,1)  #  34    0x11afaa  6      OPC=movaps_m128_xmm  
  leal 0xd0(%rsp), %eax             #  35    0x11afb0  7      OPC=leal_r32_m16     
  movl $0x18, (%rsp)                #  36    0x11afb7  7      OPC=movl_m32_imm32   
  xchgw %ax, %ax                    #  37    0x11afbe  2      OPC=xchgw_ax_r16     
  movl $0x30, 0x4(%rsp)             #  38    0x11afc0  8      OPC=movl_m32_imm32   
  movl %eax, 0x8(%rsp)              #  39    0x11afc8  4      OPC=movl_m32_r32     
  leal 0x10(%rsp), %eax             #  40    0x11afcc  4      OPC=leal_r32_m16     
  movl %eax, 0xc(%rsp)              #  41    0x11afd0  4      OPC=movl_m32_r32     
  nop                               #  42    0x11afd4  1      OPC=nop              
  nop                               #  43    0x11afd5  1      OPC=nop              
  nop                               #  44    0x11afd6  1      OPC=nop              
  nop                               #  45    0x11afd7  1      OPC=nop              
  nop                               #  46    0x11afd8  1      OPC=nop              
  nop                               #  47    0x11afd9  1      OPC=nop              
  nop                               #  48    0x11afda  1      OPC=nop              
  callq ._vfiprintf_r               #  49    0x11afdb  5      OPC=callq_label      
  addl $0xc8, %esp                  #  50    0x11afe0  6      OPC=addl_r32_imm32   
  addq %r15, %rsp                   #  51    0x11afe6  3      OPC=addq_r64_r64     
  popq %r11                         #  52    0x11afe9  2      OPC=popq_r64_1       
  andl $0xffffffe0, %r11d           #  53    0x11afeb  7      OPC=andl_r32_imm32   
  nop                               #  54    0x11aff2  1      OPC=nop              
  nop                               #  55    0x11aff3  1      OPC=nop              
  nop                               #  56    0x11aff4  1      OPC=nop              
  nop                               #  57    0x11aff5  1      OPC=nop              
  addq %r15, %r11                   #  58    0x11aff6  3      OPC=addq_r64_r64     
  jmpq %r11                         #  59    0x11aff9  3      OPC=jmpq_r64         
  nop                               #  60    0x11affc  1      OPC=nop              
  nop                               #  61    0x11affd  1      OPC=nop              
  nop                               #  62    0x11affe  1      OPC=nop              
  nop                               #  63    0x11afff  1      OPC=nop              
  nop                               #  64    0x11b000  1      OPC=nop              
  nop                               #  65    0x11b001  1      OPC=nop              
  nop                               #  66    0x11b002  1      OPC=nop              
  nop                               #  67    0x11b003  1      OPC=nop              
  nop                               #  68    0x11b004  1      OPC=nop              
  nop                               #  69    0x11b005  1      OPC=nop              
  nop                               #  70    0x11b006  1      OPC=nop              
                                                                                   
.size _fiprintf_r, .-_fiprintf_r

