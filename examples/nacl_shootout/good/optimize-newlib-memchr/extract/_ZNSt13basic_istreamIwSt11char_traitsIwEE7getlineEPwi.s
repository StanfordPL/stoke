  .text
  .globl _ZNSt13basic_istreamIwSt11char_traitsIwEE7getlineEPwi
  .type _ZNSt13basic_istreamIwSt11char_traitsIwEE7getlineEPwi, @function

#! file-offset 0xad1c0
#! rip-offset  0x6d1c0
#! capacity    192 bytes

# Text                                                          #  Line  RIP      Bytes  Opcode              
._ZNSt13basic_istreamIwSt11char_traitsIwEE7getlineEPwi:         #        0x6d1c0  0      OPC=<label>         
  movq %rbx, -0x18(%rsp)                                        #  1     0x6d1c0  5      OPC=movq_m64_r64    
  movl %edi, %ebx                                               #  2     0x6d1c5  2      OPC=movl_r32_r32    
  movq %r12, -0x10(%rsp)                                        #  3     0x6d1c7  5      OPC=movq_m64_r64    
  movq %r13, -0x8(%rsp)                                         #  4     0x6d1cc  5      OPC=movq_m64_r64    
  subl $0x18, %esp                                              #  5     0x6d1d1  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                               #  6     0x6d1d4  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                               #  7     0x6d1d7  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                      #  8     0x6d1d9  4      OPC=movl_r32_m32    
  movl %edx, %r13d                                              #  9     0x6d1dd  3      OPC=movl_r32_r32    
  movl %esi, %r12d                                              #  10    0x6d1e0  3      OPC=movl_r32_r32    
  subl $0xc, %eax                                               #  11    0x6d1e3  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                               #  12    0x6d1e6  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax                                      #  13    0x6d1e8  4      OPC=movl_r32_m32    
  addl %ebx, %eax                                               #  14    0x6d1ec  2      OPC=addl_r32_r32    
  movl %eax, %eax                                               #  15    0x6d1ee  2      OPC=movl_r32_r32    
  movl 0x80(%r15,%rax,1), %edi                                  #  16    0x6d1f0  8      OPC=movl_r32_m32    
  testq %rdi, %rdi                                              #  17    0x6d1f8  3      OPC=testq_r64_r64   
  nop                                                           #  18    0x6d1fb  1      OPC=nop             
  nop                                                           #  19    0x6d1fc  1      OPC=nop             
  nop                                                           #  20    0x6d1fd  1      OPC=nop             
  nop                                                           #  21    0x6d1fe  1      OPC=nop             
  nop                                                           #  22    0x6d1ff  1      OPC=nop             
  je .L_6d260                                                   #  23    0x6d200  2      OPC=je_label        
  movl %edi, %edi                                               #  24    0x6d202  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                      #  25    0x6d204  4      OPC=movl_r32_m32    
  movl $0xa, %esi                                               #  26    0x6d208  5      OPC=movl_r32_imm32  
  movl %eax, %eax                                               #  27    0x6d20d  2      OPC=movl_r32_r32    
  movl 0x28(%r15,%rax,1), %eax                                  #  28    0x6d20f  5      OPC=movl_r32_m32    
  nop                                                           #  29    0x6d214  1      OPC=nop             
  nop                                                           #  30    0x6d215  1      OPC=nop             
  nop                                                           #  31    0x6d216  1      OPC=nop             
  nop                                                           #  32    0x6d217  1      OPC=nop             
  andl $0xffffffe0, %eax                                        #  33    0x6d218  6      OPC=andl_r32_imm32  
  nop                                                           #  34    0x6d21e  1      OPC=nop             
  nop                                                           #  35    0x6d21f  1      OPC=nop             
  nop                                                           #  36    0x6d220  1      OPC=nop             
  addq %r15, %rax                                               #  37    0x6d221  3      OPC=addq_r64_r64    
  callq %rax                                                    #  38    0x6d224  2      OPC=callq_r64       
  movl %r13d, %edx                                              #  39    0x6d226  3      OPC=movl_r32_r32    
  movl %r12d, %esi                                              #  40    0x6d229  3      OPC=movl_r32_r32    
  movl %ebx, %edi                                               #  41    0x6d22c  2      OPC=movl_r32_r32    
  movq 0x8(%rsp), %r12                                          #  42    0x6d22e  5      OPC=movq_r64_m64    
  movq (%rsp), %rbx                                             #  43    0x6d233  4      OPC=movq_r64_m64    
  movl %eax, %ecx                                               #  44    0x6d237  2      OPC=movl_r32_r32    
  movq 0x10(%rsp), %r13                                         #  45    0x6d239  5      OPC=movq_r64_m64    
  addl $0x18, %esp                                              #  46    0x6d23e  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                               #  47    0x6d241  3      OPC=addq_r64_r64    
  xchgw %ax, %ax                                                #  48    0x6d244  2      OPC=xchgw_ax_r16    
  jmpq ._ZNSt13basic_istreamIwSt11char_traitsIwEE7getlineEPwiw  #  49    0x6d246  5      OPC=jmpq_label_1    
  nop                                                           #  50    0x6d24b  1      OPC=nop             
  nop                                                           #  51    0x6d24c  1      OPC=nop             
  nop                                                           #  52    0x6d24d  1      OPC=nop             
  nop                                                           #  53    0x6d24e  1      OPC=nop             
  nop                                                           #  54    0x6d24f  1      OPC=nop             
  nop                                                           #  55    0x6d250  1      OPC=nop             
  nop                                                           #  56    0x6d251  1      OPC=nop             
  nop                                                           #  57    0x6d252  1      OPC=nop             
  nop                                                           #  58    0x6d253  1      OPC=nop             
  nop                                                           #  59    0x6d254  1      OPC=nop             
  nop                                                           #  60    0x6d255  1      OPC=nop             
  nop                                                           #  61    0x6d256  1      OPC=nop             
  nop                                                           #  62    0x6d257  1      OPC=nop             
  nop                                                           #  63    0x6d258  1      OPC=nop             
  nop                                                           #  64    0x6d259  1      OPC=nop             
  nop                                                           #  65    0x6d25a  1      OPC=nop             
  nop                                                           #  66    0x6d25b  1      OPC=nop             
  nop                                                           #  67    0x6d25c  1      OPC=nop             
  nop                                                           #  68    0x6d25d  1      OPC=nop             
  nop                                                           #  69    0x6d25e  1      OPC=nop             
  nop                                                           #  70    0x6d25f  1      OPC=nop             
  nop                                                           #  71    0x6d260  1      OPC=nop             
  nop                                                           #  72    0x6d261  1      OPC=nop             
  nop                                                           #  73    0x6d262  1      OPC=nop             
  nop                                                           #  74    0x6d263  1      OPC=nop             
  nop                                                           #  75    0x6d264  1      OPC=nop             
  nop                                                           #  76    0x6d265  1      OPC=nop             
.L_6d260:                                                       #        0x6d266  0      OPC=<label>         
  nop                                                           #  77    0x6d266  1      OPC=nop             
  nop                                                           #  78    0x6d267  1      OPC=nop             
  nop                                                           #  79    0x6d268  1      OPC=nop             
  nop                                                           #  80    0x6d269  1      OPC=nop             
  nop                                                           #  81    0x6d26a  1      OPC=nop             
  nop                                                           #  82    0x6d26b  1      OPC=nop             
  nop                                                           #  83    0x6d26c  1      OPC=nop             
  nop                                                           #  84    0x6d26d  1      OPC=nop             
  nop                                                           #  85    0x6d26e  1      OPC=nop             
  nop                                                           #  86    0x6d26f  1      OPC=nop             
  nop                                                           #  87    0x6d270  1      OPC=nop             
  nop                                                           #  88    0x6d271  1      OPC=nop             
  nop                                                           #  89    0x6d272  1      OPC=nop             
  nop                                                           #  90    0x6d273  1      OPC=nop             
  nop                                                           #  91    0x6d274  1      OPC=nop             
  nop                                                           #  92    0x6d275  1      OPC=nop             
  nop                                                           #  93    0x6d276  1      OPC=nop             
  nop                                                           #  94    0x6d277  1      OPC=nop             
  nop                                                           #  95    0x6d278  1      OPC=nop             
  nop                                                           #  96    0x6d279  1      OPC=nop             
  nop                                                           #  97    0x6d27a  1      OPC=nop             
  nop                                                           #  98    0x6d27b  1      OPC=nop             
  nop                                                           #  99    0x6d27c  1      OPC=nop             
  nop                                                           #  100   0x6d27d  1      OPC=nop             
  nop                                                           #  101   0x6d27e  1      OPC=nop             
  nop                                                           #  102   0x6d27f  1      OPC=nop             
  nop                                                           #  103   0x6d280  1      OPC=nop             
  callq ._ZSt16__throw_bad_castv                                #  104   0x6d281  5      OPC=callq_label     
                                                                                                             
.size _ZNSt13basic_istreamIwSt11char_traitsIwEE7getlineEPwi, .-_ZNSt13basic_istreamIwSt11char_traitsIwEE7getlineEPwi

