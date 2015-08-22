  .text
  .globl _sscanf_r
  .type _sscanf_r, @function

#! file-offset 0x166940
#! rip-offset  0x126940
#! capacity    320 bytes

# Text                              #  Line  RIP       Bytes  Opcode               
._sscanf_r:                         #        0x126940  0      OPC=<label>          
  pushq %r12                        #  1     0x126940  2      OPC=pushq_r64_1      
  movl %edx, %r12d                  #  2     0x126942  3      OPC=movl_r32_r32     
  pushq %rbx                        #  3     0x126945  1      OPC=pushq_r64_1      
  movl %edi, %ebx                   #  4     0x126946  2      OPC=movl_r32_r32     
  movl %esi, %edi                   #  5     0x126948  2      OPC=movl_r32_r32     
  subl $0x148, %esp                 #  6     0x12694a  6      OPC=subl_r32_imm32   
  addq %r15, %rsp                   #  7     0x126950  3      OPC=addq_r64_r64     
  leal 0x13f(%rsp), %eax            #  8     0x126953  7      OPC=leal_r32_m16     
  nop                               #  9     0x12695a  1      OPC=nop              
  nop                               #  10    0x12695b  1      OPC=nop              
  nop                               #  11    0x12695c  1      OPC=nop              
  nop                               #  12    0x12695d  1      OPC=nop              
  nop                               #  13    0x12695e  1      OPC=nop              
  nop                               #  14    0x12695f  1      OPC=nop              
  movq %rcx, 0xa8(%rsp)             #  15    0x126960  8      OPC=movq_m64_r64     
  movq %r8, 0xb0(%rsp)              #  16    0x126968  8      OPC=movq_m64_r64     
  movq %r9, 0xb8(%rsp)              #  17    0x126970  8      OPC=movq_m64_r64     
  movl %eax, %eax                   #  18    0x126978  2      OPC=movl_r32_r32     
  movaps %xmm7, -0xf(%r15,%rax,1)   #  19    0x12697a  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  20    0x126980  2      OPC=movl_r32_r32     
  movaps %xmm6, -0x1f(%r15,%rax,1)  #  21    0x126982  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  22    0x126988  2      OPC=movl_r32_r32     
  movaps %xmm5, -0x2f(%r15,%rax,1)  #  23    0x12698a  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  24    0x126990  2      OPC=movl_r32_r32     
  movaps %xmm4, -0x3f(%r15,%rax,1)  #  25    0x126992  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  26    0x126998  2      OPC=movl_r32_r32     
  movaps %xmm3, -0x4f(%r15,%rax,1)  #  27    0x12699a  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  28    0x1269a0  2      OPC=movl_r32_r32     
  movaps %xmm2, -0x5f(%r15,%rax,1)  #  29    0x1269a2  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  30    0x1269a8  2      OPC=movl_r32_r32     
  movaps %xmm1, -0x6f(%r15,%rax,1)  #  31    0x1269aa  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  32    0x1269b0  2      OPC=movl_r32_r32     
  movaps %xmm0, -0x7f(%r15,%rax,1)  #  33    0x1269b2  6      OPC=movaps_m128_xmm  
  movl %edi, (%rsp)                 #  34    0x1269b8  3      OPC=movl_m32_r32     
  movl %edi, 0x10(%rsp)             #  35    0x1269bb  4      OPC=movl_m32_r32     
  nop                               #  36    0x1269bf  1      OPC=nop              
  movw $0x204, 0xc(%rsp)            #  37    0x1269c0  7      OPC=movw_m16_imm16   
  nop                               #  38    0x1269c7  1      OPC=nop              
  nop                               #  39    0x1269c8  1      OPC=nop              
  nop                               #  40    0x1269c9  1      OPC=nop              
  nop                               #  41    0x1269ca  1      OPC=nop              
  nop                               #  42    0x1269cb  1      OPC=nop              
  nop                               #  43    0x1269cc  1      OPC=nop              
  nop                               #  44    0x1269cd  1      OPC=nop              
  nop                               #  45    0x1269ce  1      OPC=nop              
  nop                               #  46    0x1269cf  1      OPC=nop              
  nop                               #  47    0x1269d0  1      OPC=nop              
  nop                               #  48    0x1269d1  1      OPC=nop              
  nop                               #  49    0x1269d2  1      OPC=nop              
  nop                               #  50    0x1269d3  1      OPC=nop              
  nop                               #  51    0x1269d4  1      OPC=nop              
  nop                               #  52    0x1269d5  1      OPC=nop              
  nop                               #  53    0x1269d6  1      OPC=nop              
  nop                               #  54    0x1269d7  1      OPC=nop              
  nop                               #  55    0x1269d8  1      OPC=nop              
  nop                               #  56    0x1269d9  1      OPC=nop              
  nop                               #  57    0x1269da  1      OPC=nop              
  callq .strlen                     #  58    0x1269db  5      OPC=callq_label      
  movl %eax, 0x4(%rsp)              #  59    0x1269e0  4      OPC=movl_m32_r32     
  movl %eax, 0x14(%rsp)             #  60    0x1269e4  4      OPC=movl_m32_r32     
  leal 0x160(%rsp), %eax            #  61    0x1269e8  7      OPC=leal_r32_m16     
  leal 0x80(%rsp), %ecx             #  62    0x1269ef  7      OPC=leal_r32_m16     
  movl %esp, %esi                   #  63    0x1269f6  2      OPC=movl_r32_r32     
  movl %r12d, %edx                  #  64    0x1269f8  3      OPC=movl_r32_r32     
  nop                               #  65    0x1269fb  1      OPC=nop              
  nop                               #  66    0x1269fc  1      OPC=nop              
  nop                               #  67    0x1269fd  1      OPC=nop              
  nop                               #  68    0x1269fe  1      OPC=nop              
  nop                               #  69    0x1269ff  1      OPC=nop              
  movl %eax, 0x88(%rsp)             #  70    0x126a00  7      OPC=movl_m32_r32     
  leal 0x90(%rsp), %eax             #  71    0x126a07  7      OPC=leal_r32_m16     
  movl %ebx, %edi                   #  72    0x126a0e  2      OPC=movl_r32_r32     
  movl $0x126c20, 0x20(%rsp)        #  73    0x126a10  8      OPC=movl_m32_imm32   
  movl $0x0, 0x30(%rsp)             #  74    0x126a18  8      OPC=movl_m32_imm32   
  movl $0x0, 0x44(%rsp)             #  75    0x126a20  8      OPC=movl_m32_imm32   
  movw $0xffff, 0xe(%rsp)           #  76    0x126a28  7      OPC=movw_m16_imm16   
  movl $0x18, 0x80(%rsp)            #  77    0x126a2f  11     OPC=movl_m32_imm32   
  nop                               #  78    0x126a3a  1      OPC=nop              
  nop                               #  79    0x126a3b  1      OPC=nop              
  nop                               #  80    0x126a3c  1      OPC=nop              
  nop                               #  81    0x126a3d  1      OPC=nop              
  nop                               #  82    0x126a3e  1      OPC=nop              
  nop                               #  83    0x126a3f  1      OPC=nop              
  movl $0x30, 0x84(%rsp)            #  84    0x126a40  11     OPC=movl_m32_imm32   
  movl %eax, 0x8c(%rsp)             #  85    0x126a4b  7      OPC=movl_m32_r32     
  nop                               #  86    0x126a52  1      OPC=nop              
  nop                               #  87    0x126a53  1      OPC=nop              
  nop                               #  88    0x126a54  1      OPC=nop              
  nop                               #  89    0x126a55  1      OPC=nop              
  nop                               #  90    0x126a56  1      OPC=nop              
  nop                               #  91    0x126a57  1      OPC=nop              
  nop                               #  92    0x126a58  1      OPC=nop              
  nop                               #  93    0x126a59  1      OPC=nop              
  nop                               #  94    0x126a5a  1      OPC=nop              
  callq .__ssvfscanf_r              #  95    0x126a5b  5      OPC=callq_label      
  addl $0x148, %esp                 #  96    0x126a60  6      OPC=addl_r32_imm32   
  addq %r15, %rsp                   #  97    0x126a66  3      OPC=addq_r64_r64     
  popq %rbx                         #  98    0x126a69  1      OPC=popq_r64_1       
  popq %r12                         #  99    0x126a6a  2      OPC=popq_r64_1       
  popq %r11                         #  100   0x126a6c  2      OPC=popq_r64_1       
  andl $0xffffffe0, %r11d           #  101   0x126a6e  7      OPC=andl_r32_imm32   
  nop                               #  102   0x126a75  1      OPC=nop              
  nop                               #  103   0x126a76  1      OPC=nop              
  nop                               #  104   0x126a77  1      OPC=nop              
  nop                               #  105   0x126a78  1      OPC=nop              
  addq %r15, %r11                   #  106   0x126a79  3      OPC=addq_r64_r64     
  jmpq %r11                         #  107   0x126a7c  3      OPC=jmpq_r64         
  nop                               #  108   0x126a7f  1      OPC=nop              
  nop                               #  109   0x126a80  1      OPC=nop              
  nop                               #  110   0x126a81  1      OPC=nop              
  nop                               #  111   0x126a82  1      OPC=nop              
  nop                               #  112   0x126a83  1      OPC=nop              
  nop                               #  113   0x126a84  1      OPC=nop              
  nop                               #  114   0x126a85  1      OPC=nop              
  nop                               #  115   0x126a86  1      OPC=nop              
                                                                                   
.size _sscanf_r, .-_sscanf_r

