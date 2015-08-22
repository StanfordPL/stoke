  .text
  .globl _printf_r
  .type _printf_r, @function

#! file-offset 0x163f20
#! rip-offset  0x123f20
#! capacity    192 bytes

# Text                              #  Line  RIP       Bytes  Opcode               
._printf_r:                         #        0x123f20  0      OPC=<label>          
  subl $0xc8, %esp                  #  1     0x123f20  6      OPC=subl_r32_imm32   
  addq %r15, %rsp                   #  2     0x123f26  3      OPC=addq_r64_r64     
  movl %edi, %edi                   #  3     0x123f29  2      OPC=movl_r32_r32     
  leal 0xbf(%rsp), %eax             #  4     0x123f2b  7      OPC=leal_r32_m16     
  movq %rdx, 0x20(%rsp)             #  5     0x123f32  5      OPC=movq_m64_r64     
  movq %rcx, 0x28(%rsp)             #  6     0x123f37  5      OPC=movq_m64_r64     
  nop                               #  7     0x123f3c  1      OPC=nop              
  nop                               #  8     0x123f3d  1      OPC=nop              
  nop                               #  9     0x123f3e  1      OPC=nop              
  nop                               #  10    0x123f3f  1      OPC=nop              
  movq %r8, 0x30(%rsp)              #  11    0x123f40  5      OPC=movq_m64_r64     
  movq %r9, 0x38(%rsp)              #  12    0x123f45  5      OPC=movq_m64_r64     
  movl %esi, %edx                   #  13    0x123f4a  2      OPC=movl_r32_r32     
  movl %eax, %eax                   #  14    0x123f4c  2      OPC=movl_r32_r32     
  movaps %xmm7, -0xf(%r15,%rax,1)   #  15    0x123f4e  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  16    0x123f54  2      OPC=movl_r32_r32     
  movaps %xmm6, -0x1f(%r15,%rax,1)  #  17    0x123f56  6      OPC=movaps_m128_xmm  
  nop                               #  18    0x123f5c  1      OPC=nop              
  nop                               #  19    0x123f5d  1      OPC=nop              
  nop                               #  20    0x123f5e  1      OPC=nop              
  nop                               #  21    0x123f5f  1      OPC=nop              
  movl %eax, %eax                   #  22    0x123f60  2      OPC=movl_r32_r32     
  movaps %xmm5, -0x2f(%r15,%rax,1)  #  23    0x123f62  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  24    0x123f68  2      OPC=movl_r32_r32     
  movaps %xmm4, -0x3f(%r15,%rax,1)  #  25    0x123f6a  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  26    0x123f70  2      OPC=movl_r32_r32     
  movaps %xmm3, -0x4f(%r15,%rax,1)  #  27    0x123f72  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  28    0x123f78  2      OPC=movl_r32_r32     
  movaps %xmm2, -0x5f(%r15,%rax,1)  #  29    0x123f7a  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  30    0x123f80  2      OPC=movl_r32_r32     
  movaps %xmm1, -0x6f(%r15,%rax,1)  #  31    0x123f82  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  32    0x123f88  2      OPC=movl_r32_r32     
  movaps %xmm0, -0x7f(%r15,%rax,1)  #  33    0x123f8a  6      OPC=movaps_m128_xmm  
  leal 0xd0(%rsp), %eax             #  34    0x123f90  7      OPC=leal_r32_m16     
  movl %edi, %edi                   #  35    0x123f97  2      OPC=movl_r32_r32     
  movl 0x8(%r15,%rdi,1), %esi       #  36    0x123f99  5      OPC=movl_r32_m32     
  movl %esp, %ecx                   #  37    0x123f9e  2      OPC=movl_r32_r32     
  movl $0x10, (%rsp)                #  38    0x123fa0  7      OPC=movl_m32_imm32   
  movl $0x30, 0x4(%rsp)             #  39    0x123fa7  8      OPC=movl_m32_imm32   
  movl %eax, 0x8(%rsp)              #  40    0x123faf  4      OPC=movl_m32_r32     
  leal 0x10(%rsp), %eax             #  41    0x123fb3  4      OPC=leal_r32_m16     
  movl %eax, 0xc(%rsp)              #  42    0x123fb7  4      OPC=movl_m32_r32     
  callq ._vfprintf_r                #  43    0x123fbb  5      OPC=callq_label      
  addl $0xc8, %esp                  #  44    0x123fc0  6      OPC=addl_r32_imm32   
  addq %r15, %rsp                   #  45    0x123fc6  3      OPC=addq_r64_r64     
  popq %r11                         #  46    0x123fc9  2      OPC=popq_r64_1       
  andl $0xffffffe0, %r11d           #  47    0x123fcb  7      OPC=andl_r32_imm32   
  nop                               #  48    0x123fd2  1      OPC=nop              
  nop                               #  49    0x123fd3  1      OPC=nop              
  nop                               #  50    0x123fd4  1      OPC=nop              
  nop                               #  51    0x123fd5  1      OPC=nop              
  addq %r15, %r11                   #  52    0x123fd6  3      OPC=addq_r64_r64     
  jmpq %r11                         #  53    0x123fd9  3      OPC=jmpq_r64         
  nop                               #  54    0x123fdc  1      OPC=nop              
  nop                               #  55    0x123fdd  1      OPC=nop              
  nop                               #  56    0x123fde  1      OPC=nop              
  nop                               #  57    0x123fdf  1      OPC=nop              
  nop                               #  58    0x123fe0  1      OPC=nop              
  nop                               #  59    0x123fe1  1      OPC=nop              
  nop                               #  60    0x123fe2  1      OPC=nop              
  nop                               #  61    0x123fe3  1      OPC=nop              
  nop                               #  62    0x123fe4  1      OPC=nop              
  nop                               #  63    0x123fe5  1      OPC=nop              
  nop                               #  64    0x123fe6  1      OPC=nop              
                                                                                   
.size _printf_r, .-_printf_r

