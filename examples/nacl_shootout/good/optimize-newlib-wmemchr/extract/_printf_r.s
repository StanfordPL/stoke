  .text
  .globl _printf_r
  .type _printf_r, @function

#! file-offset 0x163800
#! rip-offset  0x123800
#! capacity    192 bytes

# Text                              #  Line  RIP       Bytes  Opcode               
._printf_r:                         #        0x123800  0      OPC=<label>          
  subl $0xc8, %esp                  #  1     0x123800  6      OPC=subl_r32_imm32   
  addq %r15, %rsp                   #  2     0x123806  3      OPC=addq_r64_r64     
  movl %edi, %edi                   #  3     0x123809  2      OPC=movl_r32_r32     
  leal 0xbf(%rsp), %eax             #  4     0x12380b  7      OPC=leal_r32_m16     
  movq %rdx, 0x20(%rsp)             #  5     0x123812  5      OPC=movq_m64_r64     
  movq %rcx, 0x28(%rsp)             #  6     0x123817  5      OPC=movq_m64_r64     
  nop                               #  7     0x12381c  1      OPC=nop              
  nop                               #  8     0x12381d  1      OPC=nop              
  nop                               #  9     0x12381e  1      OPC=nop              
  nop                               #  10    0x12381f  1      OPC=nop              
  movq %r8, 0x30(%rsp)              #  11    0x123820  5      OPC=movq_m64_r64     
  movq %r9, 0x38(%rsp)              #  12    0x123825  5      OPC=movq_m64_r64     
  movl %esi, %edx                   #  13    0x12382a  2      OPC=movl_r32_r32     
  movl %eax, %eax                   #  14    0x12382c  2      OPC=movl_r32_r32     
  movaps %xmm7, -0xf(%r15,%rax,1)   #  15    0x12382e  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  16    0x123834  2      OPC=movl_r32_r32     
  movaps %xmm6, -0x1f(%r15,%rax,1)  #  17    0x123836  6      OPC=movaps_m128_xmm  
  nop                               #  18    0x12383c  1      OPC=nop              
  nop                               #  19    0x12383d  1      OPC=nop              
  nop                               #  20    0x12383e  1      OPC=nop              
  nop                               #  21    0x12383f  1      OPC=nop              
  movl %eax, %eax                   #  22    0x123840  2      OPC=movl_r32_r32     
  movaps %xmm5, -0x2f(%r15,%rax,1)  #  23    0x123842  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  24    0x123848  2      OPC=movl_r32_r32     
  movaps %xmm4, -0x3f(%r15,%rax,1)  #  25    0x12384a  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  26    0x123850  2      OPC=movl_r32_r32     
  movaps %xmm3, -0x4f(%r15,%rax,1)  #  27    0x123852  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  28    0x123858  2      OPC=movl_r32_r32     
  movaps %xmm2, -0x5f(%r15,%rax,1)  #  29    0x12385a  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  30    0x123860  2      OPC=movl_r32_r32     
  movaps %xmm1, -0x6f(%r15,%rax,1)  #  31    0x123862  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  32    0x123868  2      OPC=movl_r32_r32     
  movaps %xmm0, -0x7f(%r15,%rax,1)  #  33    0x12386a  6      OPC=movaps_m128_xmm  
  leal 0xd0(%rsp), %eax             #  34    0x123870  7      OPC=leal_r32_m16     
  movl %edi, %edi                   #  35    0x123877  2      OPC=movl_r32_r32     
  movl 0x8(%r15,%rdi,1), %esi       #  36    0x123879  5      OPC=movl_r32_m32     
  movl %esp, %ecx                   #  37    0x12387e  2      OPC=movl_r32_r32     
  movl $0x10, (%rsp)                #  38    0x123880  7      OPC=movl_m32_imm32   
  movl $0x30, 0x4(%rsp)             #  39    0x123887  8      OPC=movl_m32_imm32   
  movl %eax, 0x8(%rsp)              #  40    0x12388f  4      OPC=movl_m32_r32     
  leal 0x10(%rsp), %eax             #  41    0x123893  4      OPC=leal_r32_m16     
  movl %eax, 0xc(%rsp)              #  42    0x123897  4      OPC=movl_m32_r32     
  callq ._vfprintf_r                #  43    0x12389b  5      OPC=callq_label      
  addl $0xc8, %esp                  #  44    0x1238a0  6      OPC=addl_r32_imm32   
  addq %r15, %rsp                   #  45    0x1238a6  3      OPC=addq_r64_r64     
  popq %r11                         #  46    0x1238a9  2      OPC=popq_r64_1       
  andl $0xffffffe0, %r11d           #  47    0x1238ab  7      OPC=andl_r32_imm32   
  nop                               #  48    0x1238b2  1      OPC=nop              
  nop                               #  49    0x1238b3  1      OPC=nop              
  nop                               #  50    0x1238b4  1      OPC=nop              
  nop                               #  51    0x1238b5  1      OPC=nop              
  addq %r15, %r11                   #  52    0x1238b6  3      OPC=addq_r64_r64     
  jmpq %r11                         #  53    0x1238b9  3      OPC=jmpq_r64         
  nop                               #  54    0x1238bc  1      OPC=nop              
  nop                               #  55    0x1238bd  1      OPC=nop              
  nop                               #  56    0x1238be  1      OPC=nop              
  nop                               #  57    0x1238bf  1      OPC=nop              
  nop                               #  58    0x1238c0  1      OPC=nop              
  nop                               #  59    0x1238c1  1      OPC=nop              
  nop                               #  60    0x1238c2  1      OPC=nop              
  nop                               #  61    0x1238c3  1      OPC=nop              
  nop                               #  62    0x1238c4  1      OPC=nop              
  nop                               #  63    0x1238c5  1      OPC=nop              
  nop                               #  64    0x1238c6  1      OPC=nop              
                                                                                   
.size _printf_r, .-_printf_r

