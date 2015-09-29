  .text
  .globl _fprintf_r
  .type _fprintf_r, @function

#! file-offset 0x15bc80
#! rip-offset  0x11bc80
#! capacity    192 bytes

# Text                              #  Line  RIP       Bytes  Opcode               
._fprintf_r:                        #        0x11bc80  0      OPC=<label>          
  subl $0xc8, %esp                  #  1     0x11bc80  6      OPC=subl_r32_imm32   
  addq %r15, %rsp                   #  2     0x11bc86  3      OPC=addq_r64_r64     
  movl %edi, %edi                   #  3     0x11bc89  2      OPC=movl_r32_r32     
  movl %esi, %esi                   #  4     0x11bc8b  2      OPC=movl_r32_r32     
  leal 0xbf(%rsp), %eax             #  5     0x11bc8d  7      OPC=leal_r32_m16     
  movq %rcx, 0x28(%rsp)             #  6     0x11bc94  5      OPC=movq_m64_r64     
  movq %r8, 0x30(%rsp)              #  7     0x11bc99  5      OPC=movq_m64_r64     
  xchgw %ax, %ax                    #  8     0x11bc9e  2      OPC=xchgw_ax_r16     
  movq %r9, 0x38(%rsp)              #  9     0x11bca0  5      OPC=movq_m64_r64     
  movl %esp, %ecx                   #  10    0x11bca5  2      OPC=movl_r32_r32     
  movl %edx, %edx                   #  11    0x11bca7  2      OPC=movl_r32_r32     
  movl %eax, %eax                   #  12    0x11bca9  2      OPC=movl_r32_r32     
  movaps %xmm7, -0xf(%r15,%rax,1)   #  13    0x11bcab  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  14    0x11bcb1  2      OPC=movl_r32_r32     
  movaps %xmm6, -0x1f(%r15,%rax,1)  #  15    0x11bcb3  6      OPC=movaps_m128_xmm  
  nop                               #  16    0x11bcb9  1      OPC=nop              
  nop                               #  17    0x11bcba  1      OPC=nop              
  nop                               #  18    0x11bcbb  1      OPC=nop              
  nop                               #  19    0x11bcbc  1      OPC=nop              
  nop                               #  20    0x11bcbd  1      OPC=nop              
  nop                               #  21    0x11bcbe  1      OPC=nop              
  nop                               #  22    0x11bcbf  1      OPC=nop              
  movl %eax, %eax                   #  23    0x11bcc0  2      OPC=movl_r32_r32     
  movaps %xmm5, -0x2f(%r15,%rax,1)  #  24    0x11bcc2  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  25    0x11bcc8  2      OPC=movl_r32_r32     
  movaps %xmm4, -0x3f(%r15,%rax,1)  #  26    0x11bcca  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  27    0x11bcd0  2      OPC=movl_r32_r32     
  movaps %xmm3, -0x4f(%r15,%rax,1)  #  28    0x11bcd2  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  29    0x11bcd8  2      OPC=movl_r32_r32     
  movaps %xmm2, -0x5f(%r15,%rax,1)  #  30    0x11bcda  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  31    0x11bce0  2      OPC=movl_r32_r32     
  movaps %xmm1, -0x6f(%r15,%rax,1)  #  32    0x11bce2  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  33    0x11bce8  2      OPC=movl_r32_r32     
  movaps %xmm0, -0x7f(%r15,%rax,1)  #  34    0x11bcea  6      OPC=movaps_m128_xmm  
  leal 0xd0(%rsp), %eax             #  35    0x11bcf0  7      OPC=leal_r32_m16     
  movl $0x18, (%rsp)                #  36    0x11bcf7  7      OPC=movl_m32_imm32   
  xchgw %ax, %ax                    #  37    0x11bcfe  2      OPC=xchgw_ax_r16     
  movl $0x30, 0x4(%rsp)             #  38    0x11bd00  8      OPC=movl_m32_imm32   
  movl %eax, 0x8(%rsp)              #  39    0x11bd08  4      OPC=movl_m32_r32     
  leal 0x10(%rsp), %eax             #  40    0x11bd0c  4      OPC=leal_r32_m16     
  movl %eax, 0xc(%rsp)              #  41    0x11bd10  4      OPC=movl_m32_r32     
  nop                               #  42    0x11bd14  1      OPC=nop              
  nop                               #  43    0x11bd15  1      OPC=nop              
  nop                               #  44    0x11bd16  1      OPC=nop              
  nop                               #  45    0x11bd17  1      OPC=nop              
  nop                               #  46    0x11bd18  1      OPC=nop              
  nop                               #  47    0x11bd19  1      OPC=nop              
  nop                               #  48    0x11bd1a  1      OPC=nop              
  callq ._vfprintf_r                #  49    0x11bd1b  5      OPC=callq_label      
  addl $0xc8, %esp                  #  50    0x11bd20  6      OPC=addl_r32_imm32   
  addq %r15, %rsp                   #  51    0x11bd26  3      OPC=addq_r64_r64     
  popq %r11                         #  52    0x11bd29  2      OPC=popq_r64_1       
  andl $0xffffffe0, %r11d           #  53    0x11bd2b  7      OPC=andl_r32_imm32   
  nop                               #  54    0x11bd32  1      OPC=nop              
  nop                               #  55    0x11bd33  1      OPC=nop              
  nop                               #  56    0x11bd34  1      OPC=nop              
  nop                               #  57    0x11bd35  1      OPC=nop              
  addq %r15, %r11                   #  58    0x11bd36  3      OPC=addq_r64_r64     
  jmpq %r11                         #  59    0x11bd39  3      OPC=jmpq_r64         
  nop                               #  60    0x11bd3c  1      OPC=nop              
  nop                               #  61    0x11bd3d  1      OPC=nop              
  nop                               #  62    0x11bd3e  1      OPC=nop              
  nop                               #  63    0x11bd3f  1      OPC=nop              
  nop                               #  64    0x11bd40  1      OPC=nop              
  nop                               #  65    0x11bd41  1      OPC=nop              
  nop                               #  66    0x11bd42  1      OPC=nop              
  nop                               #  67    0x11bd43  1      OPC=nop              
  nop                               #  68    0x11bd44  1      OPC=nop              
  nop                               #  69    0x11bd45  1      OPC=nop              
  nop                               #  70    0x11bd46  1      OPC=nop              
                                                                                   
.size _fprintf_r, .-_fprintf_r

