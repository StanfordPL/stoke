  .text
  .globl _sprintf_r
  .type _sprintf_r, @function

#! file-offset 0x165e00
#! rip-offset  0x125e00
#! capacity    288 bytes

# Text                              #  Line  RIP       Bytes  Opcode               
._sprintf_r:                        #        0x125e00  0      OPC=<label>          
  subl $0x148, %esp                 #  1     0x125e00  6      OPC=subl_r32_imm32   
  addq %r15, %rsp                   #  2     0x125e06  3      OPC=addq_r64_r64     
  movl %esi, %esi                   #  3     0x125e09  2      OPC=movl_r32_r32     
  movl %edx, %edx                   #  4     0x125e0b  2      OPC=movl_r32_r32     
  leal 0x13f(%rsp), %eax            #  5     0x125e0d  7      OPC=leal_r32_m16     
  movq %rcx, 0xa8(%rsp)             #  6     0x125e14  8      OPC=movq_m64_r64     
  nop                               #  7     0x125e1c  1      OPC=nop              
  nop                               #  8     0x125e1d  1      OPC=nop              
  nop                               #  9     0x125e1e  1      OPC=nop              
  nop                               #  10    0x125e1f  1      OPC=nop              
  movq %r8, 0xb0(%rsp)              #  11    0x125e20  8      OPC=movq_m64_r64     
  movq %r9, 0xb8(%rsp)              #  12    0x125e28  8      OPC=movq_m64_r64     
  leal 0x80(%rsp), %ecx             #  13    0x125e30  7      OPC=leal_r32_m16     
  movl %edi, %edi                   #  14    0x125e37  2      OPC=movl_r32_r32     
  nop                               #  15    0x125e39  1      OPC=nop              
  nop                               #  16    0x125e3a  1      OPC=nop              
  nop                               #  17    0x125e3b  1      OPC=nop              
  nop                               #  18    0x125e3c  1      OPC=nop              
  nop                               #  19    0x125e3d  1      OPC=nop              
  nop                               #  20    0x125e3e  1      OPC=nop              
  nop                               #  21    0x125e3f  1      OPC=nop              
  movl %eax, %eax                   #  22    0x125e40  2      OPC=movl_r32_r32     
  movaps %xmm7, -0xf(%r15,%rax,1)   #  23    0x125e42  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  24    0x125e48  2      OPC=movl_r32_r32     
  movaps %xmm6, -0x1f(%r15,%rax,1)  #  25    0x125e4a  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  26    0x125e50  2      OPC=movl_r32_r32     
  movaps %xmm5, -0x2f(%r15,%rax,1)  #  27    0x125e52  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  28    0x125e58  2      OPC=movl_r32_r32     
  movaps %xmm4, -0x3f(%r15,%rax,1)  #  29    0x125e5a  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  30    0x125e60  2      OPC=movl_r32_r32     
  movaps %xmm3, -0x4f(%r15,%rax,1)  #  31    0x125e62  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  32    0x125e68  2      OPC=movl_r32_r32     
  movaps %xmm2, -0x5f(%r15,%rax,1)  #  33    0x125e6a  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  34    0x125e70  2      OPC=movl_r32_r32     
  movaps %xmm1, -0x6f(%r15,%rax,1)  #  35    0x125e72  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  36    0x125e78  2      OPC=movl_r32_r32     
  movaps %xmm0, -0x7f(%r15,%rax,1)  #  37    0x125e7a  6      OPC=movaps_m128_xmm  
  leal 0x150(%rsp), %eax            #  38    0x125e80  7      OPC=leal_r32_m16     
  movl %esi, (%rsp)                 #  39    0x125e87  3      OPC=movl_m32_r32     
  movl %esi, 0x10(%rsp)             #  40    0x125e8a  4      OPC=movl_m32_r32     
  movl %esp, %esi                   #  41    0x125e8e  2      OPC=movl_r32_r32     
  movw $0x208, 0xc(%rsp)            #  42    0x125e90  7      OPC=movw_m16_imm16   
  movl %eax, 0x88(%rsp)             #  43    0x125e97  7      OPC=movl_m32_r32     
  xchgw %ax, %ax                    #  44    0x125e9e  2      OPC=xchgw_ax_r16     
  leal 0x90(%rsp), %eax             #  45    0x125ea0  7      OPC=leal_r32_m16     
  movl $0x7fffffff, 0x8(%rsp)       #  46    0x125ea7  8      OPC=movl_m32_imm32   
  movl $0x7fffffff, 0x14(%rsp)      #  47    0x125eaf  8      OPC=movl_m32_imm32   
  movw $0xffff, 0xe(%rsp)           #  48    0x125eb7  7      OPC=movw_m16_imm16   
  xchgw %ax, %ax                    #  49    0x125ebe  2      OPC=xchgw_ax_r16     
  movl $0x18, 0x80(%rsp)            #  50    0x125ec0  11     OPC=movl_m32_imm32   
  movl $0x30, 0x84(%rsp)            #  51    0x125ecb  11     OPC=movl_m32_imm32   
  movl %eax, 0x8c(%rsp)             #  52    0x125ed6  7      OPC=movl_m32_r32     
  nop                               #  53    0x125edd  1      OPC=nop              
  nop                               #  54    0x125ede  1      OPC=nop              
  nop                               #  55    0x125edf  1      OPC=nop              
  nop                               #  56    0x125ee0  1      OPC=nop              
  nop                               #  57    0x125ee1  1      OPC=nop              
  nop                               #  58    0x125ee2  1      OPC=nop              
  nop                               #  59    0x125ee3  1      OPC=nop              
  nop                               #  60    0x125ee4  1      OPC=nop              
  nop                               #  61    0x125ee5  1      OPC=nop              
  nop                               #  62    0x125ee6  1      OPC=nop              
  nop                               #  63    0x125ee7  1      OPC=nop              
  nop                               #  64    0x125ee8  1      OPC=nop              
  nop                               #  65    0x125ee9  1      OPC=nop              
  nop                               #  66    0x125eea  1      OPC=nop              
  nop                               #  67    0x125eeb  1      OPC=nop              
  nop                               #  68    0x125eec  1      OPC=nop              
  nop                               #  69    0x125eed  1      OPC=nop              
  nop                               #  70    0x125eee  1      OPC=nop              
  nop                               #  71    0x125eef  1      OPC=nop              
  nop                               #  72    0x125ef0  1      OPC=nop              
  nop                               #  73    0x125ef1  1      OPC=nop              
  nop                               #  74    0x125ef2  1      OPC=nop              
  nop                               #  75    0x125ef3  1      OPC=nop              
  nop                               #  76    0x125ef4  1      OPC=nop              
  nop                               #  77    0x125ef5  1      OPC=nop              
  nop                               #  78    0x125ef6  1      OPC=nop              
  nop                               #  79    0x125ef7  1      OPC=nop              
  nop                               #  80    0x125ef8  1      OPC=nop              
  nop                               #  81    0x125ef9  1      OPC=nop              
  nop                               #  82    0x125efa  1      OPC=nop              
  callq ._svfprintf_r               #  83    0x125efb  5      OPC=callq_label      
  movl (%rsp), %edx                 #  84    0x125f00  3      OPC=movl_r32_m32     
  movl %edx, %edx                   #  85    0x125f03  2      OPC=movl_r32_r32     
  movb $0x0, (%r15,%rdx,1)          #  86    0x125f05  5      OPC=movb_m8_imm8     
  addl $0x148, %esp                 #  87    0x125f0a  6      OPC=addl_r32_imm32   
  addq %r15, %rsp                   #  88    0x125f10  3      OPC=addq_r64_r64     
  popq %r11                         #  89    0x125f13  2      OPC=popq_r64_1       
  andl $0xffffffe0, %r11d           #  90    0x125f15  7      OPC=andl_r32_imm32   
  nop                               #  91    0x125f1c  1      OPC=nop              
  nop                               #  92    0x125f1d  1      OPC=nop              
  nop                               #  93    0x125f1e  1      OPC=nop              
  nop                               #  94    0x125f1f  1      OPC=nop              
  addq %r15, %r11                   #  95    0x125f20  3      OPC=addq_r64_r64     
  jmpq %r11                         #  96    0x125f23  3      OPC=jmpq_r64         
  nop                               #  97    0x125f26  1      OPC=nop              
                                                                                   
.size _sprintf_r, .-_sprintf_r

