  .text
  .globl _sprintf_r
  .type _sprintf_r, @function

#! file-offset 0x166100
#! rip-offset  0x126100
#! capacity    288 bytes

# Text                              #  Line  RIP       Bytes  Opcode               
._sprintf_r:                        #        0x126100  0      OPC=<label>          
  subl $0x148, %esp                 #  1     0x126100  6      OPC=subl_r32_imm32   
  addq %r15, %rsp                   #  2     0x126106  3      OPC=addq_r64_r64     
  movl %esi, %esi                   #  3     0x126109  2      OPC=movl_r32_r32     
  movl %edx, %edx                   #  4     0x12610b  2      OPC=movl_r32_r32     
  leal 0x13f(%rsp), %eax            #  5     0x12610d  7      OPC=leal_r32_m16     
  movq %rcx, 0xa8(%rsp)             #  6     0x126114  8      OPC=movq_m64_r64     
  nop                               #  7     0x12611c  1      OPC=nop              
  nop                               #  8     0x12611d  1      OPC=nop              
  nop                               #  9     0x12611e  1      OPC=nop              
  nop                               #  10    0x12611f  1      OPC=nop              
  movq %r8, 0xb0(%rsp)              #  11    0x126120  8      OPC=movq_m64_r64     
  movq %r9, 0xb8(%rsp)              #  12    0x126128  8      OPC=movq_m64_r64     
  leal 0x80(%rsp), %ecx             #  13    0x126130  7      OPC=leal_r32_m16     
  movl %edi, %edi                   #  14    0x126137  2      OPC=movl_r32_r32     
  nop                               #  15    0x126139  1      OPC=nop              
  nop                               #  16    0x12613a  1      OPC=nop              
  nop                               #  17    0x12613b  1      OPC=nop              
  nop                               #  18    0x12613c  1      OPC=nop              
  nop                               #  19    0x12613d  1      OPC=nop              
  nop                               #  20    0x12613e  1      OPC=nop              
  nop                               #  21    0x12613f  1      OPC=nop              
  movl %eax, %eax                   #  22    0x126140  2      OPC=movl_r32_r32     
  movaps %xmm7, -0xf(%r15,%rax,1)   #  23    0x126142  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  24    0x126148  2      OPC=movl_r32_r32     
  movaps %xmm6, -0x1f(%r15,%rax,1)  #  25    0x12614a  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  26    0x126150  2      OPC=movl_r32_r32     
  movaps %xmm5, -0x2f(%r15,%rax,1)  #  27    0x126152  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  28    0x126158  2      OPC=movl_r32_r32     
  movaps %xmm4, -0x3f(%r15,%rax,1)  #  29    0x12615a  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  30    0x126160  2      OPC=movl_r32_r32     
  movaps %xmm3, -0x4f(%r15,%rax,1)  #  31    0x126162  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  32    0x126168  2      OPC=movl_r32_r32     
  movaps %xmm2, -0x5f(%r15,%rax,1)  #  33    0x12616a  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  34    0x126170  2      OPC=movl_r32_r32     
  movaps %xmm1, -0x6f(%r15,%rax,1)  #  35    0x126172  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  36    0x126178  2      OPC=movl_r32_r32     
  movaps %xmm0, -0x7f(%r15,%rax,1)  #  37    0x12617a  6      OPC=movaps_m128_xmm  
  leal 0x150(%rsp), %eax            #  38    0x126180  7      OPC=leal_r32_m16     
  movl %esi, (%rsp)                 #  39    0x126187  3      OPC=movl_m32_r32     
  movl %esi, 0x10(%rsp)             #  40    0x12618a  4      OPC=movl_m32_r32     
  movl %esp, %esi                   #  41    0x12618e  2      OPC=movl_r32_r32     
  movw $0x208, 0xc(%rsp)            #  42    0x126190  7      OPC=movw_m16_imm16   
  movl %eax, 0x88(%rsp)             #  43    0x126197  7      OPC=movl_m32_r32     
  xchgw %ax, %ax                    #  44    0x12619e  2      OPC=xchgw_ax_r16     
  leal 0x90(%rsp), %eax             #  45    0x1261a0  7      OPC=leal_r32_m16     
  movl $0x7fffffff, 0x8(%rsp)       #  46    0x1261a7  8      OPC=movl_m32_imm32   
  movl $0x7fffffff, 0x14(%rsp)      #  47    0x1261af  8      OPC=movl_m32_imm32   
  movw $0xffff, 0xe(%rsp)           #  48    0x1261b7  7      OPC=movw_m16_imm16   
  xchgw %ax, %ax                    #  49    0x1261be  2      OPC=xchgw_ax_r16     
  movl $0x18, 0x80(%rsp)            #  50    0x1261c0  11     OPC=movl_m32_imm32   
  movl $0x30, 0x84(%rsp)            #  51    0x1261cb  11     OPC=movl_m32_imm32   
  movl %eax, 0x8c(%rsp)             #  52    0x1261d6  7      OPC=movl_m32_r32     
  nop                               #  53    0x1261dd  1      OPC=nop              
  nop                               #  54    0x1261de  1      OPC=nop              
  nop                               #  55    0x1261df  1      OPC=nop              
  nop                               #  56    0x1261e0  1      OPC=nop              
  nop                               #  57    0x1261e1  1      OPC=nop              
  nop                               #  58    0x1261e2  1      OPC=nop              
  nop                               #  59    0x1261e3  1      OPC=nop              
  nop                               #  60    0x1261e4  1      OPC=nop              
  nop                               #  61    0x1261e5  1      OPC=nop              
  nop                               #  62    0x1261e6  1      OPC=nop              
  nop                               #  63    0x1261e7  1      OPC=nop              
  nop                               #  64    0x1261e8  1      OPC=nop              
  nop                               #  65    0x1261e9  1      OPC=nop              
  nop                               #  66    0x1261ea  1      OPC=nop              
  nop                               #  67    0x1261eb  1      OPC=nop              
  nop                               #  68    0x1261ec  1      OPC=nop              
  nop                               #  69    0x1261ed  1      OPC=nop              
  nop                               #  70    0x1261ee  1      OPC=nop              
  nop                               #  71    0x1261ef  1      OPC=nop              
  nop                               #  72    0x1261f0  1      OPC=nop              
  nop                               #  73    0x1261f1  1      OPC=nop              
  nop                               #  74    0x1261f2  1      OPC=nop              
  nop                               #  75    0x1261f3  1      OPC=nop              
  nop                               #  76    0x1261f4  1      OPC=nop              
  nop                               #  77    0x1261f5  1      OPC=nop              
  nop                               #  78    0x1261f6  1      OPC=nop              
  nop                               #  79    0x1261f7  1      OPC=nop              
  nop                               #  80    0x1261f8  1      OPC=nop              
  nop                               #  81    0x1261f9  1      OPC=nop              
  nop                               #  82    0x1261fa  1      OPC=nop              
  callq ._svfprintf_r               #  83    0x1261fb  5      OPC=callq_label      
  movl (%rsp), %edx                 #  84    0x126200  3      OPC=movl_r32_m32     
  movl %edx, %edx                   #  85    0x126203  2      OPC=movl_r32_r32     
  movb $0x0, (%r15,%rdx,1)          #  86    0x126205  5      OPC=movb_m8_imm8     
  addl $0x148, %esp                 #  87    0x12620a  6      OPC=addl_r32_imm32   
  addq %r15, %rsp                   #  88    0x126210  3      OPC=addq_r64_r64     
  popq %r11                         #  89    0x126213  2      OPC=popq_r64_1       
  andl $0xffffffe0, %r11d           #  90    0x126215  7      OPC=andl_r32_imm32   
  nop                               #  91    0x12621c  1      OPC=nop              
  nop                               #  92    0x12621d  1      OPC=nop              
  nop                               #  93    0x12621e  1      OPC=nop              
  nop                               #  94    0x12621f  1      OPC=nop              
  addq %r15, %r11                   #  95    0x126220  3      OPC=addq_r64_r64     
  jmpq %r11                         #  96    0x126223  3      OPC=jmpq_r64         
  nop                               #  97    0x126226  1      OPC=nop              
                                                                                   
.size _sprintf_r, .-_sprintf_r

