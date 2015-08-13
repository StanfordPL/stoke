  .text
  .globl _printf_r
  .type _printf_r, @function

#! file-offset 0x163500
#! rip-offset  0x123500
#! capacity    192 bytes

# Text                              #  Line  RIP       Bytes  Opcode               
._printf_r:                         #        0x123500  0      OPC=<label>          
  subl $0xc8, %esp                  #  1     0x123500  6      OPC=subl_r32_imm32   
  addq %r15, %rsp                   #  2     0x123506  3      OPC=addq_r64_r64     
  movl %edi, %edi                   #  3     0x123509  2      OPC=movl_r32_r32     
  leal 0xbf(%rsp), %eax             #  4     0x12350b  7      OPC=leal_r32_m16     
  movq %rdx, 0x20(%rsp)             #  5     0x123512  5      OPC=movq_m64_r64     
  movq %rcx, 0x28(%rsp)             #  6     0x123517  5      OPC=movq_m64_r64     
  nop                               #  7     0x12351c  1      OPC=nop              
  nop                               #  8     0x12351d  1      OPC=nop              
  nop                               #  9     0x12351e  1      OPC=nop              
  nop                               #  10    0x12351f  1      OPC=nop              
  movq %r8, 0x30(%rsp)              #  11    0x123520  5      OPC=movq_m64_r64     
  movq %r9, 0x38(%rsp)              #  12    0x123525  5      OPC=movq_m64_r64     
  movl %esi, %edx                   #  13    0x12352a  2      OPC=movl_r32_r32     
  movl %eax, %eax                   #  14    0x12352c  2      OPC=movl_r32_r32     
  movaps %xmm7, -0xf(%r15,%rax,1)   #  15    0x12352e  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  16    0x123534  2      OPC=movl_r32_r32     
  movaps %xmm6, -0x1f(%r15,%rax,1)  #  17    0x123536  6      OPC=movaps_m128_xmm  
  nop                               #  18    0x12353c  1      OPC=nop              
  nop                               #  19    0x12353d  1      OPC=nop              
  nop                               #  20    0x12353e  1      OPC=nop              
  nop                               #  21    0x12353f  1      OPC=nop              
  movl %eax, %eax                   #  22    0x123540  2      OPC=movl_r32_r32     
  movaps %xmm5, -0x2f(%r15,%rax,1)  #  23    0x123542  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  24    0x123548  2      OPC=movl_r32_r32     
  movaps %xmm4, -0x3f(%r15,%rax,1)  #  25    0x12354a  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  26    0x123550  2      OPC=movl_r32_r32     
  movaps %xmm3, -0x4f(%r15,%rax,1)  #  27    0x123552  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  28    0x123558  2      OPC=movl_r32_r32     
  movaps %xmm2, -0x5f(%r15,%rax,1)  #  29    0x12355a  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  30    0x123560  2      OPC=movl_r32_r32     
  movaps %xmm1, -0x6f(%r15,%rax,1)  #  31    0x123562  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  32    0x123568  2      OPC=movl_r32_r32     
  movaps %xmm0, -0x7f(%r15,%rax,1)  #  33    0x12356a  6      OPC=movaps_m128_xmm  
  leal 0xd0(%rsp), %eax             #  34    0x123570  7      OPC=leal_r32_m16     
  movl %edi, %edi                   #  35    0x123577  2      OPC=movl_r32_r32     
  movl 0x8(%r15,%rdi,1), %esi       #  36    0x123579  5      OPC=movl_r32_m32     
  movl %esp, %ecx                   #  37    0x12357e  2      OPC=movl_r32_r32     
  movl $0x10, (%rsp)                #  38    0x123580  7      OPC=movl_m32_imm32   
  movl $0x30, 0x4(%rsp)             #  39    0x123587  8      OPC=movl_m32_imm32   
  movl %eax, 0x8(%rsp)              #  40    0x12358f  4      OPC=movl_m32_r32     
  leal 0x10(%rsp), %eax             #  41    0x123593  4      OPC=leal_r32_m16     
  movl %eax, 0xc(%rsp)              #  42    0x123597  4      OPC=movl_m32_r32     
  callq ._vfprintf_r                #  43    0x12359b  5      OPC=callq_label      
  addl $0xc8, %esp                  #  44    0x1235a0  6      OPC=addl_r32_imm32   
  addq %r15, %rsp                   #  45    0x1235a6  3      OPC=addq_r64_r64     
  popq %r11                         #  46    0x1235a9  2      OPC=popq_r64_1       
  andl $0xffffffe0, %r11d           #  47    0x1235ab  7      OPC=andl_r32_imm32   
  nop                               #  48    0x1235b2  1      OPC=nop              
  nop                               #  49    0x1235b3  1      OPC=nop              
  nop                               #  50    0x1235b4  1      OPC=nop              
  nop                               #  51    0x1235b5  1      OPC=nop              
  addq %r15, %r11                   #  52    0x1235b6  3      OPC=addq_r64_r64     
  jmpq %r11                         #  53    0x1235b9  3      OPC=jmpq_r64         
  nop                               #  54    0x1235bc  1      OPC=nop              
  nop                               #  55    0x1235bd  1      OPC=nop              
  nop                               #  56    0x1235be  1      OPC=nop              
  nop                               #  57    0x1235bf  1      OPC=nop              
  nop                               #  58    0x1235c0  1      OPC=nop              
  nop                               #  59    0x1235c1  1      OPC=nop              
  nop                               #  60    0x1235c2  1      OPC=nop              
  nop                               #  61    0x1235c3  1      OPC=nop              
  nop                               #  62    0x1235c4  1      OPC=nop              
  nop                               #  63    0x1235c5  1      OPC=nop              
  nop                               #  64    0x1235c6  1      OPC=nop              
                                                                                   
.size _printf_r, .-_printf_r

