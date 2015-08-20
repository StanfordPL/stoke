  .text
  .globl _sscanf_r
  .type _sscanf_r, @function

#! file-offset 0x166220
#! rip-offset  0x126220
#! capacity    320 bytes

# Text                              #  Line  RIP       Bytes  Opcode               
._sscanf_r:                         #        0x126220  0      OPC=<label>          
  pushq %r12                        #  1     0x126220  2      OPC=pushq_r64_1      
  movl %edx, %r12d                  #  2     0x126222  3      OPC=movl_r32_r32     
  pushq %rbx                        #  3     0x126225  1      OPC=pushq_r64_1      
  movl %edi, %ebx                   #  4     0x126226  2      OPC=movl_r32_r32     
  movl %esi, %edi                   #  5     0x126228  2      OPC=movl_r32_r32     
  subl $0x148, %esp                 #  6     0x12622a  6      OPC=subl_r32_imm32   
  addq %r15, %rsp                   #  7     0x126230  3      OPC=addq_r64_r64     
  leal 0x13f(%rsp), %eax            #  8     0x126233  7      OPC=leal_r32_m16     
  nop                               #  9     0x12623a  1      OPC=nop              
  nop                               #  10    0x12623b  1      OPC=nop              
  nop                               #  11    0x12623c  1      OPC=nop              
  nop                               #  12    0x12623d  1      OPC=nop              
  nop                               #  13    0x12623e  1      OPC=nop              
  nop                               #  14    0x12623f  1      OPC=nop              
  movq %rcx, 0xa8(%rsp)             #  15    0x126240  8      OPC=movq_m64_r64     
  movq %r8, 0xb0(%rsp)              #  16    0x126248  8      OPC=movq_m64_r64     
  movq %r9, 0xb8(%rsp)              #  17    0x126250  8      OPC=movq_m64_r64     
  movl %eax, %eax                   #  18    0x126258  2      OPC=movl_r32_r32     
  movaps %xmm7, -0xf(%r15,%rax,1)   #  19    0x12625a  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  20    0x126260  2      OPC=movl_r32_r32     
  movaps %xmm6, -0x1f(%r15,%rax,1)  #  21    0x126262  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  22    0x126268  2      OPC=movl_r32_r32     
  movaps %xmm5, -0x2f(%r15,%rax,1)  #  23    0x12626a  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  24    0x126270  2      OPC=movl_r32_r32     
  movaps %xmm4, -0x3f(%r15,%rax,1)  #  25    0x126272  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  26    0x126278  2      OPC=movl_r32_r32     
  movaps %xmm3, -0x4f(%r15,%rax,1)  #  27    0x12627a  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  28    0x126280  2      OPC=movl_r32_r32     
  movaps %xmm2, -0x5f(%r15,%rax,1)  #  29    0x126282  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  30    0x126288  2      OPC=movl_r32_r32     
  movaps %xmm1, -0x6f(%r15,%rax,1)  #  31    0x12628a  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  32    0x126290  2      OPC=movl_r32_r32     
  movaps %xmm0, -0x7f(%r15,%rax,1)  #  33    0x126292  6      OPC=movaps_m128_xmm  
  movl %edi, (%rsp)                 #  34    0x126298  3      OPC=movl_m32_r32     
  movl %edi, 0x10(%rsp)             #  35    0x12629b  4      OPC=movl_m32_r32     
  nop                               #  36    0x12629f  1      OPC=nop              
  movw $0x204, 0xc(%rsp)            #  37    0x1262a0  7      OPC=movw_m16_imm16   
  nop                               #  38    0x1262a7  1      OPC=nop              
  nop                               #  39    0x1262a8  1      OPC=nop              
  nop                               #  40    0x1262a9  1      OPC=nop              
  nop                               #  41    0x1262aa  1      OPC=nop              
  nop                               #  42    0x1262ab  1      OPC=nop              
  nop                               #  43    0x1262ac  1      OPC=nop              
  nop                               #  44    0x1262ad  1      OPC=nop              
  nop                               #  45    0x1262ae  1      OPC=nop              
  nop                               #  46    0x1262af  1      OPC=nop              
  nop                               #  47    0x1262b0  1      OPC=nop              
  nop                               #  48    0x1262b1  1      OPC=nop              
  nop                               #  49    0x1262b2  1      OPC=nop              
  nop                               #  50    0x1262b3  1      OPC=nop              
  nop                               #  51    0x1262b4  1      OPC=nop              
  nop                               #  52    0x1262b5  1      OPC=nop              
  nop                               #  53    0x1262b6  1      OPC=nop              
  nop                               #  54    0x1262b7  1      OPC=nop              
  nop                               #  55    0x1262b8  1      OPC=nop              
  nop                               #  56    0x1262b9  1      OPC=nop              
  nop                               #  57    0x1262ba  1      OPC=nop              
  callq .strlen                     #  58    0x1262bb  5      OPC=callq_label      
  movl %eax, 0x4(%rsp)              #  59    0x1262c0  4      OPC=movl_m32_r32     
  movl %eax, 0x14(%rsp)             #  60    0x1262c4  4      OPC=movl_m32_r32     
  leal 0x160(%rsp), %eax            #  61    0x1262c8  7      OPC=leal_r32_m16     
  leal 0x80(%rsp), %ecx             #  62    0x1262cf  7      OPC=leal_r32_m16     
  movl %esp, %esi                   #  63    0x1262d6  2      OPC=movl_r32_r32     
  movl %r12d, %edx                  #  64    0x1262d8  3      OPC=movl_r32_r32     
  nop                               #  65    0x1262db  1      OPC=nop              
  nop                               #  66    0x1262dc  1      OPC=nop              
  nop                               #  67    0x1262dd  1      OPC=nop              
  nop                               #  68    0x1262de  1      OPC=nop              
  nop                               #  69    0x1262df  1      OPC=nop              
  movl %eax, 0x88(%rsp)             #  70    0x1262e0  7      OPC=movl_m32_r32     
  leal 0x90(%rsp), %eax             #  71    0x1262e7  7      OPC=leal_r32_m16     
  movl %ebx, %edi                   #  72    0x1262ee  2      OPC=movl_r32_r32     
  movl $0x126500, 0x20(%rsp)        #  73    0x1262f0  8      OPC=movl_m32_imm32   
  movl $0x0, 0x30(%rsp)             #  74    0x1262f8  8      OPC=movl_m32_imm32   
  movl $0x0, 0x44(%rsp)             #  75    0x126300  8      OPC=movl_m32_imm32   
  movw $0xffff, 0xe(%rsp)           #  76    0x126308  7      OPC=movw_m16_imm16   
  movl $0x18, 0x80(%rsp)            #  77    0x12630f  11     OPC=movl_m32_imm32   
  nop                               #  78    0x12631a  1      OPC=nop              
  nop                               #  79    0x12631b  1      OPC=nop              
  nop                               #  80    0x12631c  1      OPC=nop              
  nop                               #  81    0x12631d  1      OPC=nop              
  nop                               #  82    0x12631e  1      OPC=nop              
  nop                               #  83    0x12631f  1      OPC=nop              
  movl $0x30, 0x84(%rsp)            #  84    0x126320  11     OPC=movl_m32_imm32   
  movl %eax, 0x8c(%rsp)             #  85    0x12632b  7      OPC=movl_m32_r32     
  nop                               #  86    0x126332  1      OPC=nop              
  nop                               #  87    0x126333  1      OPC=nop              
  nop                               #  88    0x126334  1      OPC=nop              
  nop                               #  89    0x126335  1      OPC=nop              
  nop                               #  90    0x126336  1      OPC=nop              
  nop                               #  91    0x126337  1      OPC=nop              
  nop                               #  92    0x126338  1      OPC=nop              
  nop                               #  93    0x126339  1      OPC=nop              
  nop                               #  94    0x12633a  1      OPC=nop              
  callq .__ssvfscanf_r              #  95    0x12633b  5      OPC=callq_label      
  addl $0x148, %esp                 #  96    0x126340  6      OPC=addl_r32_imm32   
  addq %r15, %rsp                   #  97    0x126346  3      OPC=addq_r64_r64     
  popq %rbx                         #  98    0x126349  1      OPC=popq_r64_1       
  popq %r12                         #  99    0x12634a  2      OPC=popq_r64_1       
  popq %r11                         #  100   0x12634c  2      OPC=popq_r64_1       
  andl $0xffffffe0, %r11d           #  101   0x12634e  7      OPC=andl_r32_imm32   
  nop                               #  102   0x126355  1      OPC=nop              
  nop                               #  103   0x126356  1      OPC=nop              
  nop                               #  104   0x126357  1      OPC=nop              
  nop                               #  105   0x126358  1      OPC=nop              
  addq %r15, %r11                   #  106   0x126359  3      OPC=addq_r64_r64     
  jmpq %r11                         #  107   0x12635c  3      OPC=jmpq_r64         
  nop                               #  108   0x12635f  1      OPC=nop              
  nop                               #  109   0x126360  1      OPC=nop              
  nop                               #  110   0x126361  1      OPC=nop              
  nop                               #  111   0x126362  1      OPC=nop              
  nop                               #  112   0x126363  1      OPC=nop              
  nop                               #  113   0x126364  1      OPC=nop              
  nop                               #  114   0x126365  1      OPC=nop              
  nop                               #  115   0x126366  1      OPC=nop              
                                                                                   
.size _sscanf_r, .-_sscanf_r

