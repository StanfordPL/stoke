  .text
  .globl sprintf
  .type sprintf, @function

#! file-offset 0x1666c0
#! rip-offset  0x1266c0
#! capacity    352 bytes

# Text                              #  Line  RIP       Bytes  Opcode               
.sprintf:                           #        0x1266c0  0      OPC=<label>          
  movq %rbx, -0x18(%rsp)            #  1     0x1266c0  5      OPC=movq_m64_r64     
  movq %r12, -0x10(%rsp)            #  2     0x1266c5  5      OPC=movq_m64_r64     
  movl %edi, %edi                   #  3     0x1266ca  2      OPC=movl_r32_r32     
  movq %r13, -0x8(%rsp)             #  4     0x1266cc  5      OPC=movq_m64_r64     
  subl $0x158, %esp                 #  5     0x1266d1  6      OPC=subl_r32_imm32   
  addq %r15, %rsp                   #  6     0x1266d7  3      OPC=addq_r64_r64     
  movl %esi, %r12d                  #  7     0x1266da  3      OPC=movl_r32_r32     
  nop                               #  8     0x1266dd  1      OPC=nop              
  nop                               #  9     0x1266de  1      OPC=nop              
  nop                               #  10    0x1266df  1      OPC=nop              
  leal 0x13f(%rsp), %eax            #  11    0x1266e0  7      OPC=leal_r32_m16     
  movq %rdx, 0xa0(%rsp)             #  12    0x1266e7  8      OPC=movq_m64_r64     
  movq %rcx, 0xa8(%rsp)             #  13    0x1266ef  8      OPC=movq_m64_r64     
  movq %r8, 0xb0(%rsp)              #  14    0x1266f7  8      OPC=movq_m64_r64     
  nop                               #  15    0x1266ff  1      OPC=nop              
  movq %r9, 0xb8(%rsp)              #  16    0x126700  8      OPC=movq_m64_r64     
  leal 0x80(%rsp), %r13d            #  17    0x126708  8      OPC=leal_r32_m16     
  movl %eax, %eax                   #  18    0x126710  2      OPC=movl_r32_r32     
  movaps %xmm7, -0xf(%r15,%rax,1)   #  19    0x126712  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  20    0x126718  2      OPC=movl_r32_r32     
  movaps %xmm6, -0x1f(%r15,%rax,1)  #  21    0x12671a  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  22    0x126720  2      OPC=movl_r32_r32     
  movaps %xmm5, -0x2f(%r15,%rax,1)  #  23    0x126722  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  24    0x126728  2      OPC=movl_r32_r32     
  movaps %xmm4, -0x3f(%r15,%rax,1)  #  25    0x12672a  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  26    0x126730  2      OPC=movl_r32_r32     
  movaps %xmm3, -0x4f(%r15,%rax,1)  #  27    0x126732  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  28    0x126738  2      OPC=movl_r32_r32     
  movaps %xmm2, -0x5f(%r15,%rax,1)  #  29    0x12673a  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  30    0x126740  2      OPC=movl_r32_r32     
  movaps %xmm1, -0x6f(%r15,%rax,1)  #  31    0x126742  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  32    0x126748  2      OPC=movl_r32_r32     
  movaps %xmm0, -0x7f(%r15,%rax,1)  #  33    0x12674a  6      OPC=movaps_m128_xmm  
  leal 0x160(%rsp), %eax            #  34    0x126750  7      OPC=leal_r32_m16     
  movl %edi, (%rsp)                 #  35    0x126757  3      OPC=movl_m32_r32     
  movl %edi, 0x10(%rsp)             #  36    0x12675a  4      OPC=movl_m32_r32     
  xchgw %ax, %ax                    #  37    0x12675e  2      OPC=xchgw_ax_r16     
  movw $0x208, 0xc(%rsp)            #  38    0x126760  7      OPC=movw_m16_imm16   
  movl %eax, 0x88(%rsp)             #  39    0x126767  7      OPC=movl_m32_r32     
  leal 0x90(%rsp), %eax             #  40    0x12676e  7      OPC=leal_r32_m16     
  movl $0x7fffffff, 0x8(%rsp)       #  41    0x126775  8      OPC=movl_m32_imm32   
  nop                               #  42    0x12677d  1      OPC=nop              
  nop                               #  43    0x12677e  1      OPC=nop              
  nop                               #  44    0x12677f  1      OPC=nop              
  movl $0x7fffffff, 0x14(%rsp)      #  45    0x126780  8      OPC=movl_m32_imm32   
  movw $0xffff, 0xe(%rsp)           #  46    0x126788  7      OPC=movw_m16_imm16   
  movl $0x10, 0x80(%rsp)            #  47    0x12678f  11     OPC=movl_m32_imm32   
  nop                               #  48    0x12679a  1      OPC=nop              
  nop                               #  49    0x12679b  1      OPC=nop              
  nop                               #  50    0x12679c  1      OPC=nop              
  nop                               #  51    0x12679d  1      OPC=nop              
  nop                               #  52    0x12679e  1      OPC=nop              
  nop                               #  53    0x12679f  1      OPC=nop              
  movl $0x30, 0x84(%rsp)            #  54    0x1267a0  11     OPC=movl_m32_imm32   
  movl %eax, 0x8c(%rsp)             #  55    0x1267ab  7      OPC=movl_m32_r32     
  nop                               #  56    0x1267b2  1      OPC=nop              
  nop                               #  57    0x1267b3  1      OPC=nop              
  nop                               #  58    0x1267b4  1      OPC=nop              
  nop                               #  59    0x1267b5  1      OPC=nop              
  nop                               #  60    0x1267b6  1      OPC=nop              
  nop                               #  61    0x1267b7  1      OPC=nop              
  nop                               #  62    0x1267b8  1      OPC=nop              
  nop                               #  63    0x1267b9  1      OPC=nop              
  nop                               #  64    0x1267ba  1      OPC=nop              
  callq .__nacl_read_tp             #  65    0x1267bb  5      OPC=callq_label      
  leaq -0x480(%rax), %rax           #  66    0x1267c0  7      OPC=leaq_r64_m16     
  movl %r12d, %edx                  #  67    0x1267c7  3      OPC=movl_r32_r32     
  movl %r13d, %ecx                  #  68    0x1267ca  3      OPC=movl_r32_r32     
  movl %esp, %esi                   #  69    0x1267cd  2      OPC=movl_r32_r32     
  movl %eax, %eax                   #  70    0x1267cf  2      OPC=movl_r32_r32     
  movl (%r15,%rax,1), %edi          #  71    0x1267d1  4      OPC=movl_r32_m32     
  nop                               #  72    0x1267d5  1      OPC=nop              
  nop                               #  73    0x1267d6  1      OPC=nop              
  nop                               #  74    0x1267d7  1      OPC=nop              
  nop                               #  75    0x1267d8  1      OPC=nop              
  nop                               #  76    0x1267d9  1      OPC=nop              
  nop                               #  77    0x1267da  1      OPC=nop              
  callq ._svfprintf_r               #  78    0x1267db  5      OPC=callq_label      
  movl (%rsp), %edx                 #  79    0x1267e0  3      OPC=movl_r32_m32     
  movl %edx, %edx                   #  80    0x1267e3  2      OPC=movl_r32_r32     
  movb $0x0, (%r15,%rdx,1)          #  81    0x1267e5  5      OPC=movb_m8_imm8     
  movq 0x140(%rsp), %rbx            #  82    0x1267ea  8      OPC=movq_r64_m64     
  movq 0x148(%rsp), %r12            #  83    0x1267f2  8      OPC=movq_r64_m64     
  nop                               #  84    0x1267fa  1      OPC=nop              
  nop                               #  85    0x1267fb  1      OPC=nop              
  nop                               #  86    0x1267fc  1      OPC=nop              
  nop                               #  87    0x1267fd  1      OPC=nop              
  nop                               #  88    0x1267fe  1      OPC=nop              
  nop                               #  89    0x1267ff  1      OPC=nop              
  movq 0x150(%rsp), %r13            #  90    0x126800  8      OPC=movq_r64_m64     
  addl $0x158, %esp                 #  91    0x126808  6      OPC=addl_r32_imm32   
  addq %r15, %rsp                   #  92    0x12680e  3      OPC=addq_r64_r64     
  popq %r11                         #  93    0x126811  2      OPC=popq_r64_1       
  andl $0xffffffe0, %r11d           #  94    0x126813  7      OPC=andl_r32_imm32   
  nop                               #  95    0x12681a  1      OPC=nop              
  nop                               #  96    0x12681b  1      OPC=nop              
  nop                               #  97    0x12681c  1      OPC=nop              
  nop                               #  98    0x12681d  1      OPC=nop              
  addq %r15, %r11                   #  99    0x12681e  3      OPC=addq_r64_r64     
  jmpq %r11                         #  100   0x126821  3      OPC=jmpq_r64         
  nop                               #  101   0x126824  1      OPC=nop              
  nop                               #  102   0x126825  1      OPC=nop              
  nop                               #  103   0x126826  1      OPC=nop              
                                                                                   
.size sprintf, .-sprintf

