  .text
  .globl _ZNSt13basic_istreamIwSt11char_traitsIwEE7getlineEPwi
  .type _ZNSt13basic_istreamIwSt11char_traitsIwEE7getlineEPwi, @function

#! file-offset 0xac7a0
#! rip-offset  0x6c7a0
#! capacity    192 bytes

# Text                                                          #  Line  RIP      Bytes  Opcode              
._ZNSt13basic_istreamIwSt11char_traitsIwEE7getlineEPwi:         #        0x6c7a0  0      OPC=<label>         
  movq %rbx, -0x18(%rsp)                                        #  1     0x6c7a0  5      OPC=movq_m64_r64    
  movl %edi, %ebx                                               #  2     0x6c7a5  2      OPC=movl_r32_r32    
  movq %r12, -0x10(%rsp)                                        #  3     0x6c7a7  5      OPC=movq_m64_r64    
  movq %r13, -0x8(%rsp)                                         #  4     0x6c7ac  5      OPC=movq_m64_r64    
  subl $0x18, %esp                                              #  5     0x6c7b1  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                               #  6     0x6c7b4  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                               #  7     0x6c7b7  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                      #  8     0x6c7b9  4      OPC=movl_r32_m32    
  movl %edx, %r13d                                              #  9     0x6c7bd  3      OPC=movl_r32_r32    
  movl %esi, %r12d                                              #  10    0x6c7c0  3      OPC=movl_r32_r32    
  subl $0xc, %eax                                               #  11    0x6c7c3  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                               #  12    0x6c7c6  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax                                      #  13    0x6c7c8  4      OPC=movl_r32_m32    
  addl %ebx, %eax                                               #  14    0x6c7cc  2      OPC=addl_r32_r32    
  movl %eax, %eax                                               #  15    0x6c7ce  2      OPC=movl_r32_r32    
  movl 0x80(%r15,%rax,1), %edi                                  #  16    0x6c7d0  8      OPC=movl_r32_m32    
  testq %rdi, %rdi                                              #  17    0x6c7d8  3      OPC=testq_r64_r64   
  nop                                                           #  18    0x6c7db  1      OPC=nop             
  nop                                                           #  19    0x6c7dc  1      OPC=nop             
  nop                                                           #  20    0x6c7dd  1      OPC=nop             
  nop                                                           #  21    0x6c7de  1      OPC=nop             
  nop                                                           #  22    0x6c7df  1      OPC=nop             
  je .L_6c840                                                   #  23    0x6c7e0  2      OPC=je_label        
  movl %edi, %edi                                               #  24    0x6c7e2  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                      #  25    0x6c7e4  4      OPC=movl_r32_m32    
  movl $0xa, %esi                                               #  26    0x6c7e8  5      OPC=movl_r32_imm32  
  movl %eax, %eax                                               #  27    0x6c7ed  2      OPC=movl_r32_r32    
  movl 0x28(%r15,%rax,1), %eax                                  #  28    0x6c7ef  5      OPC=movl_r32_m32    
  nop                                                           #  29    0x6c7f4  1      OPC=nop             
  nop                                                           #  30    0x6c7f5  1      OPC=nop             
  nop                                                           #  31    0x6c7f6  1      OPC=nop             
  nop                                                           #  32    0x6c7f7  1      OPC=nop             
  andl $0xffffffe0, %eax                                        #  33    0x6c7f8  6      OPC=andl_r32_imm32  
  nop                                                           #  34    0x6c7fe  1      OPC=nop             
  nop                                                           #  35    0x6c7ff  1      OPC=nop             
  nop                                                           #  36    0x6c800  1      OPC=nop             
  addq %r15, %rax                                               #  37    0x6c801  3      OPC=addq_r64_r64    
  callq %rax                                                    #  38    0x6c804  2      OPC=callq_r64       
  movl %r13d, %edx                                              #  39    0x6c806  3      OPC=movl_r32_r32    
  movl %r12d, %esi                                              #  40    0x6c809  3      OPC=movl_r32_r32    
  movl %ebx, %edi                                               #  41    0x6c80c  2      OPC=movl_r32_r32    
  movq 0x8(%rsp), %r12                                          #  42    0x6c80e  5      OPC=movq_r64_m64    
  movq (%rsp), %rbx                                             #  43    0x6c813  4      OPC=movq_r64_m64    
  movl %eax, %ecx                                               #  44    0x6c817  2      OPC=movl_r32_r32    
  movq 0x10(%rsp), %r13                                         #  45    0x6c819  5      OPC=movq_r64_m64    
  addl $0x18, %esp                                              #  46    0x6c81e  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                               #  47    0x6c821  3      OPC=addq_r64_r64    
  xchgw %ax, %ax                                                #  48    0x6c824  2      OPC=xchgw_ax_r16    
  jmpq ._ZNSt13basic_istreamIwSt11char_traitsIwEE7getlineEPwiw  #  49    0x6c826  5      OPC=jmpq_label_1    
  nop                                                           #  50    0x6c82b  1      OPC=nop             
  nop                                                           #  51    0x6c82c  1      OPC=nop             
  nop                                                           #  52    0x6c82d  1      OPC=nop             
  nop                                                           #  53    0x6c82e  1      OPC=nop             
  nop                                                           #  54    0x6c82f  1      OPC=nop             
  nop                                                           #  55    0x6c830  1      OPC=nop             
  nop                                                           #  56    0x6c831  1      OPC=nop             
  nop                                                           #  57    0x6c832  1      OPC=nop             
  nop                                                           #  58    0x6c833  1      OPC=nop             
  nop                                                           #  59    0x6c834  1      OPC=nop             
  nop                                                           #  60    0x6c835  1      OPC=nop             
  nop                                                           #  61    0x6c836  1      OPC=nop             
  nop                                                           #  62    0x6c837  1      OPC=nop             
  nop                                                           #  63    0x6c838  1      OPC=nop             
  nop                                                           #  64    0x6c839  1      OPC=nop             
  nop                                                           #  65    0x6c83a  1      OPC=nop             
  nop                                                           #  66    0x6c83b  1      OPC=nop             
  nop                                                           #  67    0x6c83c  1      OPC=nop             
  nop                                                           #  68    0x6c83d  1      OPC=nop             
  nop                                                           #  69    0x6c83e  1      OPC=nop             
  nop                                                           #  70    0x6c83f  1      OPC=nop             
  nop                                                           #  71    0x6c840  1      OPC=nop             
  nop                                                           #  72    0x6c841  1      OPC=nop             
  nop                                                           #  73    0x6c842  1      OPC=nop             
  nop                                                           #  74    0x6c843  1      OPC=nop             
  nop                                                           #  75    0x6c844  1      OPC=nop             
  nop                                                           #  76    0x6c845  1      OPC=nop             
.L_6c840:                                                       #        0x6c846  0      OPC=<label>         
  nop                                                           #  77    0x6c846  1      OPC=nop             
  nop                                                           #  78    0x6c847  1      OPC=nop             
  nop                                                           #  79    0x6c848  1      OPC=nop             
  nop                                                           #  80    0x6c849  1      OPC=nop             
  nop                                                           #  81    0x6c84a  1      OPC=nop             
  nop                                                           #  82    0x6c84b  1      OPC=nop             
  nop                                                           #  83    0x6c84c  1      OPC=nop             
  nop                                                           #  84    0x6c84d  1      OPC=nop             
  nop                                                           #  85    0x6c84e  1      OPC=nop             
  nop                                                           #  86    0x6c84f  1      OPC=nop             
  nop                                                           #  87    0x6c850  1      OPC=nop             
  nop                                                           #  88    0x6c851  1      OPC=nop             
  nop                                                           #  89    0x6c852  1      OPC=nop             
  nop                                                           #  90    0x6c853  1      OPC=nop             
  nop                                                           #  91    0x6c854  1      OPC=nop             
  nop                                                           #  92    0x6c855  1      OPC=nop             
  nop                                                           #  93    0x6c856  1      OPC=nop             
  nop                                                           #  94    0x6c857  1      OPC=nop             
  nop                                                           #  95    0x6c858  1      OPC=nop             
  nop                                                           #  96    0x6c859  1      OPC=nop             
  nop                                                           #  97    0x6c85a  1      OPC=nop             
  nop                                                           #  98    0x6c85b  1      OPC=nop             
  nop                                                           #  99    0x6c85c  1      OPC=nop             
  nop                                                           #  100   0x6c85d  1      OPC=nop             
  nop                                                           #  101   0x6c85e  1      OPC=nop             
  nop                                                           #  102   0x6c85f  1      OPC=nop             
  nop                                                           #  103   0x6c860  1      OPC=nop             
  callq ._ZSt16__throw_bad_castv                                #  104   0x6c861  5      OPC=callq_label     
                                                                                                             
.size _ZNSt13basic_istreamIwSt11char_traitsIwEE7getlineEPwi, .-_ZNSt13basic_istreamIwSt11char_traitsIwEE7getlineEPwi

