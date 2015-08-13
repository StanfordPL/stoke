  .text
  .globl fprintf
  .type fprintf, @function

#! file-offset 0x15b140
#! rip-offset  0x11b140
#! capacity    288 bytes

# Text                              #  Line  RIP       Bytes  Opcode               
.fprintf:                           #        0x11b140  0      OPC=<label>          
  movq %rbx, -0x18(%rsp)            #  1     0x11b140  5      OPC=movq_m64_r64     
  movq %r12, -0x10(%rsp)            #  2     0x11b145  5      OPC=movq_m64_r64     
  movl %edi, %ebx                   #  3     0x11b14a  2      OPC=movl_r32_r32     
  movq %r13, -0x8(%rsp)             #  4     0x11b14c  5      OPC=movq_m64_r64     
  subl $0xd8, %esp                  #  5     0x11b151  6      OPC=subl_r32_imm32   
  addq %r15, %rsp                   #  6     0x11b157  3      OPC=addq_r64_r64     
  movl %esi, %r12d                  #  7     0x11b15a  3      OPC=movl_r32_r32     
  nop                               #  8     0x11b15d  1      OPC=nop              
  nop                               #  9     0x11b15e  1      OPC=nop              
  nop                               #  10    0x11b15f  1      OPC=nop              
  leal 0xbf(%rsp), %eax             #  11    0x11b160  7      OPC=leal_r32_m16     
  movq %rdx, 0x20(%rsp)             #  12    0x11b167  5      OPC=movq_m64_r64     
  movq %rcx, 0x28(%rsp)             #  13    0x11b16c  5      OPC=movq_m64_r64     
  movq %r8, 0x30(%rsp)              #  14    0x11b171  5      OPC=movq_m64_r64     
  movq %r9, 0x38(%rsp)              #  15    0x11b176  5      OPC=movq_m64_r64     
  nop                               #  16    0x11b17b  1      OPC=nop              
  nop                               #  17    0x11b17c  1      OPC=nop              
  nop                               #  18    0x11b17d  1      OPC=nop              
  nop                               #  19    0x11b17e  1      OPC=nop              
  nop                               #  20    0x11b17f  1      OPC=nop              
  movl %eax, %eax                   #  21    0x11b180  2      OPC=movl_r32_r32     
  movaps %xmm7, -0xf(%r15,%rax,1)   #  22    0x11b182  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  23    0x11b188  2      OPC=movl_r32_r32     
  movaps %xmm6, -0x1f(%r15,%rax,1)  #  24    0x11b18a  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  25    0x11b190  2      OPC=movl_r32_r32     
  movaps %xmm5, -0x2f(%r15,%rax,1)  #  26    0x11b192  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  27    0x11b198  2      OPC=movl_r32_r32     
  movaps %xmm4, -0x3f(%r15,%rax,1)  #  28    0x11b19a  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  29    0x11b1a0  2      OPC=movl_r32_r32     
  movaps %xmm3, -0x4f(%r15,%rax,1)  #  30    0x11b1a2  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  31    0x11b1a8  2      OPC=movl_r32_r32     
  movaps %xmm2, -0x5f(%r15,%rax,1)  #  32    0x11b1aa  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  33    0x11b1b0  2      OPC=movl_r32_r32     
  movaps %xmm1, -0x6f(%r15,%rax,1)  #  34    0x11b1b2  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  35    0x11b1b8  2      OPC=movl_r32_r32     
  movaps %xmm0, -0x7f(%r15,%rax,1)  #  36    0x11b1ba  6      OPC=movaps_m128_xmm  
  leal 0xe0(%rsp), %eax             #  37    0x11b1c0  7      OPC=leal_r32_m16     
  movl $0x10, (%rsp)                #  38    0x11b1c7  7      OPC=movl_m32_imm32   
  movl $0x30, 0x4(%rsp)             #  39    0x11b1ce  8      OPC=movl_m32_imm32   
  movl %eax, 0x8(%rsp)              #  40    0x11b1d6  4      OPC=movl_m32_r32     
  leal 0x10(%rsp), %eax             #  41    0x11b1da  4      OPC=leal_r32_m16     
  xchgw %ax, %ax                    #  42    0x11b1de  2      OPC=xchgw_ax_r16     
  movl %eax, 0xc(%rsp)              #  43    0x11b1e0  4      OPC=movl_m32_r32     
  nop                               #  44    0x11b1e4  1      OPC=nop              
  nop                               #  45    0x11b1e5  1      OPC=nop              
  nop                               #  46    0x11b1e6  1      OPC=nop              
  nop                               #  47    0x11b1e7  1      OPC=nop              
  nop                               #  48    0x11b1e8  1      OPC=nop              
  nop                               #  49    0x11b1e9  1      OPC=nop              
  nop                               #  50    0x11b1ea  1      OPC=nop              
  nop                               #  51    0x11b1eb  1      OPC=nop              
  nop                               #  52    0x11b1ec  1      OPC=nop              
  nop                               #  53    0x11b1ed  1      OPC=nop              
  nop                               #  54    0x11b1ee  1      OPC=nop              
  nop                               #  55    0x11b1ef  1      OPC=nop              
  nop                               #  56    0x11b1f0  1      OPC=nop              
  nop                               #  57    0x11b1f1  1      OPC=nop              
  nop                               #  58    0x11b1f2  1      OPC=nop              
  nop                               #  59    0x11b1f3  1      OPC=nop              
  nop                               #  60    0x11b1f4  1      OPC=nop              
  nop                               #  61    0x11b1f5  1      OPC=nop              
  nop                               #  62    0x11b1f6  1      OPC=nop              
  nop                               #  63    0x11b1f7  1      OPC=nop              
  nop                               #  64    0x11b1f8  1      OPC=nop              
  nop                               #  65    0x11b1f9  1      OPC=nop              
  nop                               #  66    0x11b1fa  1      OPC=nop              
  callq .__nacl_read_tp             #  67    0x11b1fb  5      OPC=callq_label      
  leaq -0x480(%rax), %rax           #  68    0x11b200  7      OPC=leaq_r64_m16     
  movl %esp, %ecx                   #  69    0x11b207  2      OPC=movl_r32_r32     
  movl %r12d, %edx                  #  70    0x11b209  3      OPC=movl_r32_r32     
  movl %ebx, %esi                   #  71    0x11b20c  2      OPC=movl_r32_r32     
  movl %eax, %eax                   #  72    0x11b20e  2      OPC=movl_r32_r32     
  movl (%r15,%rax,1), %edi          #  73    0x11b210  4      OPC=movl_r32_m32     
  nop                               #  74    0x11b214  1      OPC=nop              
  nop                               #  75    0x11b215  1      OPC=nop              
  nop                               #  76    0x11b216  1      OPC=nop              
  nop                               #  77    0x11b217  1      OPC=nop              
  nop                               #  78    0x11b218  1      OPC=nop              
  nop                               #  79    0x11b219  1      OPC=nop              
  nop                               #  80    0x11b21a  1      OPC=nop              
  callq ._vfprintf_r                #  81    0x11b21b  5      OPC=callq_label      
  movq 0xc0(%rsp), %rbx             #  82    0x11b220  8      OPC=movq_r64_m64     
  movq 0xc8(%rsp), %r12             #  83    0x11b228  8      OPC=movq_r64_m64     
  movq 0xd0(%rsp), %r13             #  84    0x11b230  8      OPC=movq_r64_m64     
  nop                               #  85    0x11b238  1      OPC=nop              
  nop                               #  86    0x11b239  1      OPC=nop              
  nop                               #  87    0x11b23a  1      OPC=nop              
  nop                               #  88    0x11b23b  1      OPC=nop              
  nop                               #  89    0x11b23c  1      OPC=nop              
  nop                               #  90    0x11b23d  1      OPC=nop              
  nop                               #  91    0x11b23e  1      OPC=nop              
  nop                               #  92    0x11b23f  1      OPC=nop              
  addl $0xd8, %esp                  #  93    0x11b240  6      OPC=addl_r32_imm32   
  addq %r15, %rsp                   #  94    0x11b246  3      OPC=addq_r64_r64     
  popq %r11                         #  95    0x11b249  2      OPC=popq_r64_1       
  andl $0xffffffe0, %r11d           #  96    0x11b24b  7      OPC=andl_r32_imm32   
  nop                               #  97    0x11b252  1      OPC=nop              
  nop                               #  98    0x11b253  1      OPC=nop              
  nop                               #  99    0x11b254  1      OPC=nop              
  nop                               #  100   0x11b255  1      OPC=nop              
  addq %r15, %r11                   #  101   0x11b256  3      OPC=addq_r64_r64     
  jmpq %r11                         #  102   0x11b259  3      OPC=jmpq_r64         
  nop                               #  103   0x11b25c  1      OPC=nop              
  nop                               #  104   0x11b25d  1      OPC=nop              
  nop                               #  105   0x11b25e  1      OPC=nop              
  nop                               #  106   0x11b25f  1      OPC=nop              
  nop                               #  107   0x11b260  1      OPC=nop              
  nop                               #  108   0x11b261  1      OPC=nop              
  nop                               #  109   0x11b262  1      OPC=nop              
  nop                               #  110   0x11b263  1      OPC=nop              
  nop                               #  111   0x11b264  1      OPC=nop              
  nop                               #  112   0x11b265  1      OPC=nop              
  nop                               #  113   0x11b266  1      OPC=nop              
                                                                                   
.size fprintf, .-fprintf

