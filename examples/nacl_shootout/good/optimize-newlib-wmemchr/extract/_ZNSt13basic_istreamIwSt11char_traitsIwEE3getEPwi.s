  .text
  .globl _ZNSt13basic_istreamIwSt11char_traitsIwEE3getEPwi
  .type _ZNSt13basic_istreamIwSt11char_traitsIwEE3getEPwi, @function

#! file-offset 0xae300
#! rip-offset  0x6e300
#! capacity    192 bytes

# Text                                                      #  Line  RIP      Bytes  Opcode              
._ZNSt13basic_istreamIwSt11char_traitsIwEE3getEPwi:         #        0x6e300  0      OPC=<label>         
  movq %rbx, -0x18(%rsp)                                    #  1     0x6e300  5      OPC=movq_m64_r64    
  movl %edi, %ebx                                           #  2     0x6e305  2      OPC=movl_r32_r32    
  movq %r12, -0x10(%rsp)                                    #  3     0x6e307  5      OPC=movq_m64_r64    
  movq %r13, -0x8(%rsp)                                     #  4     0x6e30c  5      OPC=movq_m64_r64    
  subl $0x18, %esp                                          #  5     0x6e311  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                           #  6     0x6e314  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                           #  7     0x6e317  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                  #  8     0x6e319  4      OPC=movl_r32_m32    
  movl %edx, %r13d                                          #  9     0x6e31d  3      OPC=movl_r32_r32    
  movl %esi, %r12d                                          #  10    0x6e320  3      OPC=movl_r32_r32    
  subl $0xc, %eax                                           #  11    0x6e323  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                           #  12    0x6e326  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax                                  #  13    0x6e328  4      OPC=movl_r32_m32    
  addl %ebx, %eax                                           #  14    0x6e32c  2      OPC=addl_r32_r32    
  movl %eax, %eax                                           #  15    0x6e32e  2      OPC=movl_r32_r32    
  movl 0x80(%r15,%rax,1), %edi                              #  16    0x6e330  8      OPC=movl_r32_m32    
  testq %rdi, %rdi                                          #  17    0x6e338  3      OPC=testq_r64_r64   
  nop                                                       #  18    0x6e33b  1      OPC=nop             
  nop                                                       #  19    0x6e33c  1      OPC=nop             
  nop                                                       #  20    0x6e33d  1      OPC=nop             
  nop                                                       #  21    0x6e33e  1      OPC=nop             
  nop                                                       #  22    0x6e33f  1      OPC=nop             
  je .L_6e3a0                                               #  23    0x6e340  2      OPC=je_label        
  movl %edi, %edi                                           #  24    0x6e342  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                  #  25    0x6e344  4      OPC=movl_r32_m32    
  movl $0xa, %esi                                           #  26    0x6e348  5      OPC=movl_r32_imm32  
  movl %eax, %eax                                           #  27    0x6e34d  2      OPC=movl_r32_r32    
  movl 0x28(%r15,%rax,1), %eax                              #  28    0x6e34f  5      OPC=movl_r32_m32    
  nop                                                       #  29    0x6e354  1      OPC=nop             
  nop                                                       #  30    0x6e355  1      OPC=nop             
  nop                                                       #  31    0x6e356  1      OPC=nop             
  nop                                                       #  32    0x6e357  1      OPC=nop             
  andl $0xffffffe0, %eax                                    #  33    0x6e358  6      OPC=andl_r32_imm32  
  nop                                                       #  34    0x6e35e  1      OPC=nop             
  nop                                                       #  35    0x6e35f  1      OPC=nop             
  nop                                                       #  36    0x6e360  1      OPC=nop             
  addq %r15, %rax                                           #  37    0x6e361  3      OPC=addq_r64_r64    
  callq %rax                                                #  38    0x6e364  2      OPC=callq_r64       
  movl %r13d, %edx                                          #  39    0x6e366  3      OPC=movl_r32_r32    
  movl %r12d, %esi                                          #  40    0x6e369  3      OPC=movl_r32_r32    
  movl %ebx, %edi                                           #  41    0x6e36c  2      OPC=movl_r32_r32    
  movq 0x8(%rsp), %r12                                      #  42    0x6e36e  5      OPC=movq_r64_m64    
  movq (%rsp), %rbx                                         #  43    0x6e373  4      OPC=movq_r64_m64    
  movl %eax, %ecx                                           #  44    0x6e377  2      OPC=movl_r32_r32    
  movq 0x10(%rsp), %r13                                     #  45    0x6e379  5      OPC=movq_r64_m64    
  addl $0x18, %esp                                          #  46    0x6e37e  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                           #  47    0x6e381  3      OPC=addq_r64_r64    
  xchgw %ax, %ax                                            #  48    0x6e384  2      OPC=xchgw_ax_r16    
  jmpq ._ZNSt13basic_istreamIwSt11char_traitsIwEE3getEPwiw  #  49    0x6e386  5      OPC=jmpq_label_1    
  nop                                                       #  50    0x6e38b  1      OPC=nop             
  nop                                                       #  51    0x6e38c  1      OPC=nop             
  nop                                                       #  52    0x6e38d  1      OPC=nop             
  nop                                                       #  53    0x6e38e  1      OPC=nop             
  nop                                                       #  54    0x6e38f  1      OPC=nop             
  nop                                                       #  55    0x6e390  1      OPC=nop             
  nop                                                       #  56    0x6e391  1      OPC=nop             
  nop                                                       #  57    0x6e392  1      OPC=nop             
  nop                                                       #  58    0x6e393  1      OPC=nop             
  nop                                                       #  59    0x6e394  1      OPC=nop             
  nop                                                       #  60    0x6e395  1      OPC=nop             
  nop                                                       #  61    0x6e396  1      OPC=nop             
  nop                                                       #  62    0x6e397  1      OPC=nop             
  nop                                                       #  63    0x6e398  1      OPC=nop             
  nop                                                       #  64    0x6e399  1      OPC=nop             
  nop                                                       #  65    0x6e39a  1      OPC=nop             
  nop                                                       #  66    0x6e39b  1      OPC=nop             
  nop                                                       #  67    0x6e39c  1      OPC=nop             
  nop                                                       #  68    0x6e39d  1      OPC=nop             
  nop                                                       #  69    0x6e39e  1      OPC=nop             
  nop                                                       #  70    0x6e39f  1      OPC=nop             
  nop                                                       #  71    0x6e3a0  1      OPC=nop             
  nop                                                       #  72    0x6e3a1  1      OPC=nop             
  nop                                                       #  73    0x6e3a2  1      OPC=nop             
  nop                                                       #  74    0x6e3a3  1      OPC=nop             
  nop                                                       #  75    0x6e3a4  1      OPC=nop             
  nop                                                       #  76    0x6e3a5  1      OPC=nop             
.L_6e3a0:                                                   #        0x6e3a6  0      OPC=<label>         
  nop                                                       #  77    0x6e3a6  1      OPC=nop             
  nop                                                       #  78    0x6e3a7  1      OPC=nop             
  nop                                                       #  79    0x6e3a8  1      OPC=nop             
  nop                                                       #  80    0x6e3a9  1      OPC=nop             
  nop                                                       #  81    0x6e3aa  1      OPC=nop             
  nop                                                       #  82    0x6e3ab  1      OPC=nop             
  nop                                                       #  83    0x6e3ac  1      OPC=nop             
  nop                                                       #  84    0x6e3ad  1      OPC=nop             
  nop                                                       #  85    0x6e3ae  1      OPC=nop             
  nop                                                       #  86    0x6e3af  1      OPC=nop             
  nop                                                       #  87    0x6e3b0  1      OPC=nop             
  nop                                                       #  88    0x6e3b1  1      OPC=nop             
  nop                                                       #  89    0x6e3b2  1      OPC=nop             
  nop                                                       #  90    0x6e3b3  1      OPC=nop             
  nop                                                       #  91    0x6e3b4  1      OPC=nop             
  nop                                                       #  92    0x6e3b5  1      OPC=nop             
  nop                                                       #  93    0x6e3b6  1      OPC=nop             
  nop                                                       #  94    0x6e3b7  1      OPC=nop             
  nop                                                       #  95    0x6e3b8  1      OPC=nop             
  nop                                                       #  96    0x6e3b9  1      OPC=nop             
  nop                                                       #  97    0x6e3ba  1      OPC=nop             
  nop                                                       #  98    0x6e3bb  1      OPC=nop             
  nop                                                       #  99    0x6e3bc  1      OPC=nop             
  nop                                                       #  100   0x6e3bd  1      OPC=nop             
  nop                                                       #  101   0x6e3be  1      OPC=nop             
  nop                                                       #  102   0x6e3bf  1      OPC=nop             
  nop                                                       #  103   0x6e3c0  1      OPC=nop             
  callq ._ZSt16__throw_bad_castv                            #  104   0x6e3c1  5      OPC=callq_label     
                                                                                                         
.size _ZNSt13basic_istreamIwSt11char_traitsIwEE3getEPwi, .-_ZNSt13basic_istreamIwSt11char_traitsIwEE3getEPwi

