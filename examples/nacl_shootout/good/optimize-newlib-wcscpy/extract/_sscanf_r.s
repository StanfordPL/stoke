  .text
  .globl _sscanf_r
  .type _sscanf_r, @function

#! file-offset 0x165f20
#! rip-offset  0x125f20
#! capacity    320 bytes

# Text                              #  Line  RIP       Bytes  Opcode               
._sscanf_r:                         #        0x125f20  0      OPC=<label>          
  pushq %r12                        #  1     0x125f20  2      OPC=pushq_r64_1      
  movl %edx, %r12d                  #  2     0x125f22  3      OPC=movl_r32_r32     
  pushq %rbx                        #  3     0x125f25  1      OPC=pushq_r64_1      
  movl %edi, %ebx                   #  4     0x125f26  2      OPC=movl_r32_r32     
  movl %esi, %edi                   #  5     0x125f28  2      OPC=movl_r32_r32     
  subl $0x148, %esp                 #  6     0x125f2a  6      OPC=subl_r32_imm32   
  addq %r15, %rsp                   #  7     0x125f30  3      OPC=addq_r64_r64     
  leal 0x13f(%rsp), %eax            #  8     0x125f33  7      OPC=leal_r32_m16     
  nop                               #  9     0x125f3a  1      OPC=nop              
  nop                               #  10    0x125f3b  1      OPC=nop              
  nop                               #  11    0x125f3c  1      OPC=nop              
  nop                               #  12    0x125f3d  1      OPC=nop              
  nop                               #  13    0x125f3e  1      OPC=nop              
  nop                               #  14    0x125f3f  1      OPC=nop              
  movq %rcx, 0xa8(%rsp)             #  15    0x125f40  8      OPC=movq_m64_r64     
  movq %r8, 0xb0(%rsp)              #  16    0x125f48  8      OPC=movq_m64_r64     
  movq %r9, 0xb8(%rsp)              #  17    0x125f50  8      OPC=movq_m64_r64     
  movl %eax, %eax                   #  18    0x125f58  2      OPC=movl_r32_r32     
  movaps %xmm7, -0xf(%r15,%rax,1)   #  19    0x125f5a  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  20    0x125f60  2      OPC=movl_r32_r32     
  movaps %xmm6, -0x1f(%r15,%rax,1)  #  21    0x125f62  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  22    0x125f68  2      OPC=movl_r32_r32     
  movaps %xmm5, -0x2f(%r15,%rax,1)  #  23    0x125f6a  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  24    0x125f70  2      OPC=movl_r32_r32     
  movaps %xmm4, -0x3f(%r15,%rax,1)  #  25    0x125f72  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  26    0x125f78  2      OPC=movl_r32_r32     
  movaps %xmm3, -0x4f(%r15,%rax,1)  #  27    0x125f7a  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  28    0x125f80  2      OPC=movl_r32_r32     
  movaps %xmm2, -0x5f(%r15,%rax,1)  #  29    0x125f82  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  30    0x125f88  2      OPC=movl_r32_r32     
  movaps %xmm1, -0x6f(%r15,%rax,1)  #  31    0x125f8a  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  32    0x125f90  2      OPC=movl_r32_r32     
  movaps %xmm0, -0x7f(%r15,%rax,1)  #  33    0x125f92  6      OPC=movaps_m128_xmm  
  movl %edi, (%rsp)                 #  34    0x125f98  3      OPC=movl_m32_r32     
  movl %edi, 0x10(%rsp)             #  35    0x125f9b  4      OPC=movl_m32_r32     
  nop                               #  36    0x125f9f  1      OPC=nop              
  movw $0x204, 0xc(%rsp)            #  37    0x125fa0  7      OPC=movw_m16_imm16   
  nop                               #  38    0x125fa7  1      OPC=nop              
  nop                               #  39    0x125fa8  1      OPC=nop              
  nop                               #  40    0x125fa9  1      OPC=nop              
  nop                               #  41    0x125faa  1      OPC=nop              
  nop                               #  42    0x125fab  1      OPC=nop              
  nop                               #  43    0x125fac  1      OPC=nop              
  nop                               #  44    0x125fad  1      OPC=nop              
  nop                               #  45    0x125fae  1      OPC=nop              
  nop                               #  46    0x125faf  1      OPC=nop              
  nop                               #  47    0x125fb0  1      OPC=nop              
  nop                               #  48    0x125fb1  1      OPC=nop              
  nop                               #  49    0x125fb2  1      OPC=nop              
  nop                               #  50    0x125fb3  1      OPC=nop              
  nop                               #  51    0x125fb4  1      OPC=nop              
  nop                               #  52    0x125fb5  1      OPC=nop              
  nop                               #  53    0x125fb6  1      OPC=nop              
  nop                               #  54    0x125fb7  1      OPC=nop              
  nop                               #  55    0x125fb8  1      OPC=nop              
  nop                               #  56    0x125fb9  1      OPC=nop              
  nop                               #  57    0x125fba  1      OPC=nop              
  callq .strlen                     #  58    0x125fbb  5      OPC=callq_label      
  movl %eax, 0x4(%rsp)              #  59    0x125fc0  4      OPC=movl_m32_r32     
  movl %eax, 0x14(%rsp)             #  60    0x125fc4  4      OPC=movl_m32_r32     
  leal 0x160(%rsp), %eax            #  61    0x125fc8  7      OPC=leal_r32_m16     
  leal 0x80(%rsp), %ecx             #  62    0x125fcf  7      OPC=leal_r32_m16     
  movl %esp, %esi                   #  63    0x125fd6  2      OPC=movl_r32_r32     
  movl %r12d, %edx                  #  64    0x125fd8  3      OPC=movl_r32_r32     
  nop                               #  65    0x125fdb  1      OPC=nop              
  nop                               #  66    0x125fdc  1      OPC=nop              
  nop                               #  67    0x125fdd  1      OPC=nop              
  nop                               #  68    0x125fde  1      OPC=nop              
  nop                               #  69    0x125fdf  1      OPC=nop              
  movl %eax, 0x88(%rsp)             #  70    0x125fe0  7      OPC=movl_m32_r32     
  leal 0x90(%rsp), %eax             #  71    0x125fe7  7      OPC=leal_r32_m16     
  movl %ebx, %edi                   #  72    0x125fee  2      OPC=movl_r32_r32     
  movl $0x126200, 0x20(%rsp)        #  73    0x125ff0  8      OPC=movl_m32_imm32   
  movl $0x0, 0x30(%rsp)             #  74    0x125ff8  8      OPC=movl_m32_imm32   
  movl $0x0, 0x44(%rsp)             #  75    0x126000  8      OPC=movl_m32_imm32   
  movw $0xffff, 0xe(%rsp)           #  76    0x126008  7      OPC=movw_m16_imm16   
  movl $0x18, 0x80(%rsp)            #  77    0x12600f  11     OPC=movl_m32_imm32   
  nop                               #  78    0x12601a  1      OPC=nop              
  nop                               #  79    0x12601b  1      OPC=nop              
  nop                               #  80    0x12601c  1      OPC=nop              
  nop                               #  81    0x12601d  1      OPC=nop              
  nop                               #  82    0x12601e  1      OPC=nop              
  nop                               #  83    0x12601f  1      OPC=nop              
  movl $0x30, 0x84(%rsp)            #  84    0x126020  11     OPC=movl_m32_imm32   
  movl %eax, 0x8c(%rsp)             #  85    0x12602b  7      OPC=movl_m32_r32     
  nop                               #  86    0x126032  1      OPC=nop              
  nop                               #  87    0x126033  1      OPC=nop              
  nop                               #  88    0x126034  1      OPC=nop              
  nop                               #  89    0x126035  1      OPC=nop              
  nop                               #  90    0x126036  1      OPC=nop              
  nop                               #  91    0x126037  1      OPC=nop              
  nop                               #  92    0x126038  1      OPC=nop              
  nop                               #  93    0x126039  1      OPC=nop              
  nop                               #  94    0x12603a  1      OPC=nop              
  callq .__ssvfscanf_r              #  95    0x12603b  5      OPC=callq_label      
  addl $0x148, %esp                 #  96    0x126040  6      OPC=addl_r32_imm32   
  addq %r15, %rsp                   #  97    0x126046  3      OPC=addq_r64_r64     
  popq %rbx                         #  98    0x126049  1      OPC=popq_r64_1       
  popq %r12                         #  99    0x12604a  2      OPC=popq_r64_1       
  popq %r11                         #  100   0x12604c  2      OPC=popq_r64_1       
  andl $0xffffffe0, %r11d           #  101   0x12604e  7      OPC=andl_r32_imm32   
  nop                               #  102   0x126055  1      OPC=nop              
  nop                               #  103   0x126056  1      OPC=nop              
  nop                               #  104   0x126057  1      OPC=nop              
  nop                               #  105   0x126058  1      OPC=nop              
  addq %r15, %r11                   #  106   0x126059  3      OPC=addq_r64_r64     
  jmpq %r11                         #  107   0x12605c  3      OPC=jmpq_r64         
  nop                               #  108   0x12605f  1      OPC=nop              
  nop                               #  109   0x126060  1      OPC=nop              
  nop                               #  110   0x126061  1      OPC=nop              
  nop                               #  111   0x126062  1      OPC=nop              
  nop                               #  112   0x126063  1      OPC=nop              
  nop                               #  113   0x126064  1      OPC=nop              
  nop                               #  114   0x126065  1      OPC=nop              
  nop                               #  115   0x126066  1      OPC=nop              
                                                                                   
.size _sscanf_r, .-_sscanf_r

