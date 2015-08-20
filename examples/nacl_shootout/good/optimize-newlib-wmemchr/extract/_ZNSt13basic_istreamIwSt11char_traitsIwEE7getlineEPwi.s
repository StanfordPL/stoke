  .text
  .globl _ZNSt13basic_istreamIwSt11char_traitsIwEE7getlineEPwi
  .type _ZNSt13basic_istreamIwSt11char_traitsIwEE7getlineEPwi, @function

#! file-offset 0xacaa0
#! rip-offset  0x6caa0
#! capacity    192 bytes

# Text                                                          #  Line  RIP      Bytes  Opcode              
._ZNSt13basic_istreamIwSt11char_traitsIwEE7getlineEPwi:         #        0x6caa0  0      OPC=<label>         
  movq %rbx, -0x18(%rsp)                                        #  1     0x6caa0  5      OPC=movq_m64_r64    
  movl %edi, %ebx                                               #  2     0x6caa5  2      OPC=movl_r32_r32    
  movq %r12, -0x10(%rsp)                                        #  3     0x6caa7  5      OPC=movq_m64_r64    
  movq %r13, -0x8(%rsp)                                         #  4     0x6caac  5      OPC=movq_m64_r64    
  subl $0x18, %esp                                              #  5     0x6cab1  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                               #  6     0x6cab4  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                               #  7     0x6cab7  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                      #  8     0x6cab9  4      OPC=movl_r32_m32    
  movl %edx, %r13d                                              #  9     0x6cabd  3      OPC=movl_r32_r32    
  movl %esi, %r12d                                              #  10    0x6cac0  3      OPC=movl_r32_r32    
  subl $0xc, %eax                                               #  11    0x6cac3  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                               #  12    0x6cac6  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax                                      #  13    0x6cac8  4      OPC=movl_r32_m32    
  addl %ebx, %eax                                               #  14    0x6cacc  2      OPC=addl_r32_r32    
  movl %eax, %eax                                               #  15    0x6cace  2      OPC=movl_r32_r32    
  movl 0x80(%r15,%rax,1), %edi                                  #  16    0x6cad0  8      OPC=movl_r32_m32    
  testq %rdi, %rdi                                              #  17    0x6cad8  3      OPC=testq_r64_r64   
  nop                                                           #  18    0x6cadb  1      OPC=nop             
  nop                                                           #  19    0x6cadc  1      OPC=nop             
  nop                                                           #  20    0x6cadd  1      OPC=nop             
  nop                                                           #  21    0x6cade  1      OPC=nop             
  nop                                                           #  22    0x6cadf  1      OPC=nop             
  je .L_6cb40                                                   #  23    0x6cae0  2      OPC=je_label        
  movl %edi, %edi                                               #  24    0x6cae2  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                      #  25    0x6cae4  4      OPC=movl_r32_m32    
  movl $0xa, %esi                                               #  26    0x6cae8  5      OPC=movl_r32_imm32  
  movl %eax, %eax                                               #  27    0x6caed  2      OPC=movl_r32_r32    
  movl 0x28(%r15,%rax,1), %eax                                  #  28    0x6caef  5      OPC=movl_r32_m32    
  nop                                                           #  29    0x6caf4  1      OPC=nop             
  nop                                                           #  30    0x6caf5  1      OPC=nop             
  nop                                                           #  31    0x6caf6  1      OPC=nop             
  nop                                                           #  32    0x6caf7  1      OPC=nop             
  andl $0xffffffe0, %eax                                        #  33    0x6caf8  6      OPC=andl_r32_imm32  
  nop                                                           #  34    0x6cafe  1      OPC=nop             
  nop                                                           #  35    0x6caff  1      OPC=nop             
  nop                                                           #  36    0x6cb00  1      OPC=nop             
  addq %r15, %rax                                               #  37    0x6cb01  3      OPC=addq_r64_r64    
  callq %rax                                                    #  38    0x6cb04  2      OPC=callq_r64       
  movl %r13d, %edx                                              #  39    0x6cb06  3      OPC=movl_r32_r32    
  movl %r12d, %esi                                              #  40    0x6cb09  3      OPC=movl_r32_r32    
  movl %ebx, %edi                                               #  41    0x6cb0c  2      OPC=movl_r32_r32    
  movq 0x8(%rsp), %r12                                          #  42    0x6cb0e  5      OPC=movq_r64_m64    
  movq (%rsp), %rbx                                             #  43    0x6cb13  4      OPC=movq_r64_m64    
  movl %eax, %ecx                                               #  44    0x6cb17  2      OPC=movl_r32_r32    
  movq 0x10(%rsp), %r13                                         #  45    0x6cb19  5      OPC=movq_r64_m64    
  addl $0x18, %esp                                              #  46    0x6cb1e  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                               #  47    0x6cb21  3      OPC=addq_r64_r64    
  xchgw %ax, %ax                                                #  48    0x6cb24  2      OPC=xchgw_ax_r16    
  jmpq ._ZNSt13basic_istreamIwSt11char_traitsIwEE7getlineEPwiw  #  49    0x6cb26  5      OPC=jmpq_label_1    
  nop                                                           #  50    0x6cb2b  1      OPC=nop             
  nop                                                           #  51    0x6cb2c  1      OPC=nop             
  nop                                                           #  52    0x6cb2d  1      OPC=nop             
  nop                                                           #  53    0x6cb2e  1      OPC=nop             
  nop                                                           #  54    0x6cb2f  1      OPC=nop             
  nop                                                           #  55    0x6cb30  1      OPC=nop             
  nop                                                           #  56    0x6cb31  1      OPC=nop             
  nop                                                           #  57    0x6cb32  1      OPC=nop             
  nop                                                           #  58    0x6cb33  1      OPC=nop             
  nop                                                           #  59    0x6cb34  1      OPC=nop             
  nop                                                           #  60    0x6cb35  1      OPC=nop             
  nop                                                           #  61    0x6cb36  1      OPC=nop             
  nop                                                           #  62    0x6cb37  1      OPC=nop             
  nop                                                           #  63    0x6cb38  1      OPC=nop             
  nop                                                           #  64    0x6cb39  1      OPC=nop             
  nop                                                           #  65    0x6cb3a  1      OPC=nop             
  nop                                                           #  66    0x6cb3b  1      OPC=nop             
  nop                                                           #  67    0x6cb3c  1      OPC=nop             
  nop                                                           #  68    0x6cb3d  1      OPC=nop             
  nop                                                           #  69    0x6cb3e  1      OPC=nop             
  nop                                                           #  70    0x6cb3f  1      OPC=nop             
  nop                                                           #  71    0x6cb40  1      OPC=nop             
  nop                                                           #  72    0x6cb41  1      OPC=nop             
  nop                                                           #  73    0x6cb42  1      OPC=nop             
  nop                                                           #  74    0x6cb43  1      OPC=nop             
  nop                                                           #  75    0x6cb44  1      OPC=nop             
  nop                                                           #  76    0x6cb45  1      OPC=nop             
.L_6cb40:                                                       #        0x6cb46  0      OPC=<label>         
  nop                                                           #  77    0x6cb46  1      OPC=nop             
  nop                                                           #  78    0x6cb47  1      OPC=nop             
  nop                                                           #  79    0x6cb48  1      OPC=nop             
  nop                                                           #  80    0x6cb49  1      OPC=nop             
  nop                                                           #  81    0x6cb4a  1      OPC=nop             
  nop                                                           #  82    0x6cb4b  1      OPC=nop             
  nop                                                           #  83    0x6cb4c  1      OPC=nop             
  nop                                                           #  84    0x6cb4d  1      OPC=nop             
  nop                                                           #  85    0x6cb4e  1      OPC=nop             
  nop                                                           #  86    0x6cb4f  1      OPC=nop             
  nop                                                           #  87    0x6cb50  1      OPC=nop             
  nop                                                           #  88    0x6cb51  1      OPC=nop             
  nop                                                           #  89    0x6cb52  1      OPC=nop             
  nop                                                           #  90    0x6cb53  1      OPC=nop             
  nop                                                           #  91    0x6cb54  1      OPC=nop             
  nop                                                           #  92    0x6cb55  1      OPC=nop             
  nop                                                           #  93    0x6cb56  1      OPC=nop             
  nop                                                           #  94    0x6cb57  1      OPC=nop             
  nop                                                           #  95    0x6cb58  1      OPC=nop             
  nop                                                           #  96    0x6cb59  1      OPC=nop             
  nop                                                           #  97    0x6cb5a  1      OPC=nop             
  nop                                                           #  98    0x6cb5b  1      OPC=nop             
  nop                                                           #  99    0x6cb5c  1      OPC=nop             
  nop                                                           #  100   0x6cb5d  1      OPC=nop             
  nop                                                           #  101   0x6cb5e  1      OPC=nop             
  nop                                                           #  102   0x6cb5f  1      OPC=nop             
  nop                                                           #  103   0x6cb60  1      OPC=nop             
  callq ._ZSt16__throw_bad_castv                                #  104   0x6cb61  5      OPC=callq_label     
                                                                                                             
.size _ZNSt13basic_istreamIwSt11char_traitsIwEE7getlineEPwi, .-_ZNSt13basic_istreamIwSt11char_traitsIwEE7getlineEPwi

