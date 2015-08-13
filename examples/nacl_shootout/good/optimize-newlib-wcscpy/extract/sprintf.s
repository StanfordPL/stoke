  .text
  .globl sprintf
  .type sprintf, @function

#! file-offset 0x165ca0
#! rip-offset  0x125ca0
#! capacity    352 bytes

# Text                              #  Line  RIP       Bytes  Opcode               
.sprintf:                           #        0x125ca0  0      OPC=<label>          
  movq %rbx, -0x18(%rsp)            #  1     0x125ca0  5      OPC=movq_m64_r64     
  movq %r12, -0x10(%rsp)            #  2     0x125ca5  5      OPC=movq_m64_r64     
  movl %edi, %edi                   #  3     0x125caa  2      OPC=movl_r32_r32     
  movq %r13, -0x8(%rsp)             #  4     0x125cac  5      OPC=movq_m64_r64     
  subl $0x158, %esp                 #  5     0x125cb1  6      OPC=subl_r32_imm32   
  addq %r15, %rsp                   #  6     0x125cb7  3      OPC=addq_r64_r64     
  movl %esi, %r12d                  #  7     0x125cba  3      OPC=movl_r32_r32     
  nop                               #  8     0x125cbd  1      OPC=nop              
  nop                               #  9     0x125cbe  1      OPC=nop              
  nop                               #  10    0x125cbf  1      OPC=nop              
  leal 0x13f(%rsp), %eax            #  11    0x125cc0  7      OPC=leal_r32_m16     
  movq %rdx, 0xa0(%rsp)             #  12    0x125cc7  8      OPC=movq_m64_r64     
  movq %rcx, 0xa8(%rsp)             #  13    0x125ccf  8      OPC=movq_m64_r64     
  movq %r8, 0xb0(%rsp)              #  14    0x125cd7  8      OPC=movq_m64_r64     
  nop                               #  15    0x125cdf  1      OPC=nop              
  movq %r9, 0xb8(%rsp)              #  16    0x125ce0  8      OPC=movq_m64_r64     
  leal 0x80(%rsp), %r13d            #  17    0x125ce8  8      OPC=leal_r32_m16     
  movl %eax, %eax                   #  18    0x125cf0  2      OPC=movl_r32_r32     
  movaps %xmm7, -0xf(%r15,%rax,1)   #  19    0x125cf2  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  20    0x125cf8  2      OPC=movl_r32_r32     
  movaps %xmm6, -0x1f(%r15,%rax,1)  #  21    0x125cfa  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  22    0x125d00  2      OPC=movl_r32_r32     
  movaps %xmm5, -0x2f(%r15,%rax,1)  #  23    0x125d02  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  24    0x125d08  2      OPC=movl_r32_r32     
  movaps %xmm4, -0x3f(%r15,%rax,1)  #  25    0x125d0a  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  26    0x125d10  2      OPC=movl_r32_r32     
  movaps %xmm3, -0x4f(%r15,%rax,1)  #  27    0x125d12  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  28    0x125d18  2      OPC=movl_r32_r32     
  movaps %xmm2, -0x5f(%r15,%rax,1)  #  29    0x125d1a  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  30    0x125d20  2      OPC=movl_r32_r32     
  movaps %xmm1, -0x6f(%r15,%rax,1)  #  31    0x125d22  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  32    0x125d28  2      OPC=movl_r32_r32     
  movaps %xmm0, -0x7f(%r15,%rax,1)  #  33    0x125d2a  6      OPC=movaps_m128_xmm  
  leal 0x160(%rsp), %eax            #  34    0x125d30  7      OPC=leal_r32_m16     
  movl %edi, (%rsp)                 #  35    0x125d37  3      OPC=movl_m32_r32     
  movl %edi, 0x10(%rsp)             #  36    0x125d3a  4      OPC=movl_m32_r32     
  xchgw %ax, %ax                    #  37    0x125d3e  2      OPC=xchgw_ax_r16     
  movw $0x208, 0xc(%rsp)            #  38    0x125d40  7      OPC=movw_m16_imm16   
  movl %eax, 0x88(%rsp)             #  39    0x125d47  7      OPC=movl_m32_r32     
  leal 0x90(%rsp), %eax             #  40    0x125d4e  7      OPC=leal_r32_m16     
  movl $0x7fffffff, 0x8(%rsp)       #  41    0x125d55  8      OPC=movl_m32_imm32   
  nop                               #  42    0x125d5d  1      OPC=nop              
  nop                               #  43    0x125d5e  1      OPC=nop              
  nop                               #  44    0x125d5f  1      OPC=nop              
  movl $0x7fffffff, 0x14(%rsp)      #  45    0x125d60  8      OPC=movl_m32_imm32   
  movw $0xffff, 0xe(%rsp)           #  46    0x125d68  7      OPC=movw_m16_imm16   
  movl $0x10, 0x80(%rsp)            #  47    0x125d6f  11     OPC=movl_m32_imm32   
  nop                               #  48    0x125d7a  1      OPC=nop              
  nop                               #  49    0x125d7b  1      OPC=nop              
  nop                               #  50    0x125d7c  1      OPC=nop              
  nop                               #  51    0x125d7d  1      OPC=nop              
  nop                               #  52    0x125d7e  1      OPC=nop              
  nop                               #  53    0x125d7f  1      OPC=nop              
  movl $0x30, 0x84(%rsp)            #  54    0x125d80  11     OPC=movl_m32_imm32   
  movl %eax, 0x8c(%rsp)             #  55    0x125d8b  7      OPC=movl_m32_r32     
  nop                               #  56    0x125d92  1      OPC=nop              
  nop                               #  57    0x125d93  1      OPC=nop              
  nop                               #  58    0x125d94  1      OPC=nop              
  nop                               #  59    0x125d95  1      OPC=nop              
  nop                               #  60    0x125d96  1      OPC=nop              
  nop                               #  61    0x125d97  1      OPC=nop              
  nop                               #  62    0x125d98  1      OPC=nop              
  nop                               #  63    0x125d99  1      OPC=nop              
  nop                               #  64    0x125d9a  1      OPC=nop              
  callq .__nacl_read_tp             #  65    0x125d9b  5      OPC=callq_label      
  leaq -0x480(%rax), %rax           #  66    0x125da0  7      OPC=leaq_r64_m16     
  movl %r12d, %edx                  #  67    0x125da7  3      OPC=movl_r32_r32     
  movl %r13d, %ecx                  #  68    0x125daa  3      OPC=movl_r32_r32     
  movl %esp, %esi                   #  69    0x125dad  2      OPC=movl_r32_r32     
  movl %eax, %eax                   #  70    0x125daf  2      OPC=movl_r32_r32     
  movl (%r15,%rax,1), %edi          #  71    0x125db1  4      OPC=movl_r32_m32     
  nop                               #  72    0x125db5  1      OPC=nop              
  nop                               #  73    0x125db6  1      OPC=nop              
  nop                               #  74    0x125db7  1      OPC=nop              
  nop                               #  75    0x125db8  1      OPC=nop              
  nop                               #  76    0x125db9  1      OPC=nop              
  nop                               #  77    0x125dba  1      OPC=nop              
  callq ._svfprintf_r               #  78    0x125dbb  5      OPC=callq_label      
  movl (%rsp), %edx                 #  79    0x125dc0  3      OPC=movl_r32_m32     
  movl %edx, %edx                   #  80    0x125dc3  2      OPC=movl_r32_r32     
  movb $0x0, (%r15,%rdx,1)          #  81    0x125dc5  5      OPC=movb_m8_imm8     
  movq 0x140(%rsp), %rbx            #  82    0x125dca  8      OPC=movq_r64_m64     
  movq 0x148(%rsp), %r12            #  83    0x125dd2  8      OPC=movq_r64_m64     
  nop                               #  84    0x125dda  1      OPC=nop              
  nop                               #  85    0x125ddb  1      OPC=nop              
  nop                               #  86    0x125ddc  1      OPC=nop              
  nop                               #  87    0x125ddd  1      OPC=nop              
  nop                               #  88    0x125dde  1      OPC=nop              
  nop                               #  89    0x125ddf  1      OPC=nop              
  movq 0x150(%rsp), %r13            #  90    0x125de0  8      OPC=movq_r64_m64     
  addl $0x158, %esp                 #  91    0x125de8  6      OPC=addl_r32_imm32   
  addq %r15, %rsp                   #  92    0x125dee  3      OPC=addq_r64_r64     
  popq %r11                         #  93    0x125df1  2      OPC=popq_r64_1       
  andl $0xffffffe0, %r11d           #  94    0x125df3  7      OPC=andl_r32_imm32   
  nop                               #  95    0x125dfa  1      OPC=nop              
  nop                               #  96    0x125dfb  1      OPC=nop              
  nop                               #  97    0x125dfc  1      OPC=nop              
  nop                               #  98    0x125dfd  1      OPC=nop              
  addq %r15, %r11                   #  99    0x125dfe  3      OPC=addq_r64_r64     
  jmpq %r11                         #  100   0x125e01  3      OPC=jmpq_r64         
  nop                               #  101   0x125e04  1      OPC=nop              
  nop                               #  102   0x125e05  1      OPC=nop              
  nop                               #  103   0x125e06  1      OPC=nop              
                                                                                   
.size sprintf, .-sprintf

