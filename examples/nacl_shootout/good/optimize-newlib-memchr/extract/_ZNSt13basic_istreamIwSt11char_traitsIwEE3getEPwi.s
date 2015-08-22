  .text
  .globl _ZNSt13basic_istreamIwSt11char_traitsIwEE3getEPwi
  .type _ZNSt13basic_istreamIwSt11char_traitsIwEE3getEPwi, @function

#! file-offset 0xaea20
#! rip-offset  0x6ea20
#! capacity    192 bytes

# Text                                                      #  Line  RIP      Bytes  Opcode              
._ZNSt13basic_istreamIwSt11char_traitsIwEE3getEPwi:         #        0x6ea20  0      OPC=<label>         
  movq %rbx, -0x18(%rsp)                                    #  1     0x6ea20  5      OPC=movq_m64_r64    
  movl %edi, %ebx                                           #  2     0x6ea25  2      OPC=movl_r32_r32    
  movq %r12, -0x10(%rsp)                                    #  3     0x6ea27  5      OPC=movq_m64_r64    
  movq %r13, -0x8(%rsp)                                     #  4     0x6ea2c  5      OPC=movq_m64_r64    
  subl $0x18, %esp                                          #  5     0x6ea31  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                           #  6     0x6ea34  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                           #  7     0x6ea37  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                  #  8     0x6ea39  4      OPC=movl_r32_m32    
  movl %edx, %r13d                                          #  9     0x6ea3d  3      OPC=movl_r32_r32    
  movl %esi, %r12d                                          #  10    0x6ea40  3      OPC=movl_r32_r32    
  subl $0xc, %eax                                           #  11    0x6ea43  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                           #  12    0x6ea46  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax                                  #  13    0x6ea48  4      OPC=movl_r32_m32    
  addl %ebx, %eax                                           #  14    0x6ea4c  2      OPC=addl_r32_r32    
  movl %eax, %eax                                           #  15    0x6ea4e  2      OPC=movl_r32_r32    
  movl 0x80(%r15,%rax,1), %edi                              #  16    0x6ea50  8      OPC=movl_r32_m32    
  testq %rdi, %rdi                                          #  17    0x6ea58  3      OPC=testq_r64_r64   
  nop                                                       #  18    0x6ea5b  1      OPC=nop             
  nop                                                       #  19    0x6ea5c  1      OPC=nop             
  nop                                                       #  20    0x6ea5d  1      OPC=nop             
  nop                                                       #  21    0x6ea5e  1      OPC=nop             
  nop                                                       #  22    0x6ea5f  1      OPC=nop             
  je .L_6eac0                                               #  23    0x6ea60  2      OPC=je_label        
  movl %edi, %edi                                           #  24    0x6ea62  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                  #  25    0x6ea64  4      OPC=movl_r32_m32    
  movl $0xa, %esi                                           #  26    0x6ea68  5      OPC=movl_r32_imm32  
  movl %eax, %eax                                           #  27    0x6ea6d  2      OPC=movl_r32_r32    
  movl 0x28(%r15,%rax,1), %eax                              #  28    0x6ea6f  5      OPC=movl_r32_m32    
  nop                                                       #  29    0x6ea74  1      OPC=nop             
  nop                                                       #  30    0x6ea75  1      OPC=nop             
  nop                                                       #  31    0x6ea76  1      OPC=nop             
  nop                                                       #  32    0x6ea77  1      OPC=nop             
  andl $0xffffffe0, %eax                                    #  33    0x6ea78  6      OPC=andl_r32_imm32  
  nop                                                       #  34    0x6ea7e  1      OPC=nop             
  nop                                                       #  35    0x6ea7f  1      OPC=nop             
  nop                                                       #  36    0x6ea80  1      OPC=nop             
  addq %r15, %rax                                           #  37    0x6ea81  3      OPC=addq_r64_r64    
  callq %rax                                                #  38    0x6ea84  2      OPC=callq_r64       
  movl %r13d, %edx                                          #  39    0x6ea86  3      OPC=movl_r32_r32    
  movl %r12d, %esi                                          #  40    0x6ea89  3      OPC=movl_r32_r32    
  movl %ebx, %edi                                           #  41    0x6ea8c  2      OPC=movl_r32_r32    
  movq 0x8(%rsp), %r12                                      #  42    0x6ea8e  5      OPC=movq_r64_m64    
  movq (%rsp), %rbx                                         #  43    0x6ea93  4      OPC=movq_r64_m64    
  movl %eax, %ecx                                           #  44    0x6ea97  2      OPC=movl_r32_r32    
  movq 0x10(%rsp), %r13                                     #  45    0x6ea99  5      OPC=movq_r64_m64    
  addl $0x18, %esp                                          #  46    0x6ea9e  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                           #  47    0x6eaa1  3      OPC=addq_r64_r64    
  xchgw %ax, %ax                                            #  48    0x6eaa4  2      OPC=xchgw_ax_r16    
  jmpq ._ZNSt13basic_istreamIwSt11char_traitsIwEE3getEPwiw  #  49    0x6eaa6  5      OPC=jmpq_label_1    
  nop                                                       #  50    0x6eaab  1      OPC=nop             
  nop                                                       #  51    0x6eaac  1      OPC=nop             
  nop                                                       #  52    0x6eaad  1      OPC=nop             
  nop                                                       #  53    0x6eaae  1      OPC=nop             
  nop                                                       #  54    0x6eaaf  1      OPC=nop             
  nop                                                       #  55    0x6eab0  1      OPC=nop             
  nop                                                       #  56    0x6eab1  1      OPC=nop             
  nop                                                       #  57    0x6eab2  1      OPC=nop             
  nop                                                       #  58    0x6eab3  1      OPC=nop             
  nop                                                       #  59    0x6eab4  1      OPC=nop             
  nop                                                       #  60    0x6eab5  1      OPC=nop             
  nop                                                       #  61    0x6eab6  1      OPC=nop             
  nop                                                       #  62    0x6eab7  1      OPC=nop             
  nop                                                       #  63    0x6eab8  1      OPC=nop             
  nop                                                       #  64    0x6eab9  1      OPC=nop             
  nop                                                       #  65    0x6eaba  1      OPC=nop             
  nop                                                       #  66    0x6eabb  1      OPC=nop             
  nop                                                       #  67    0x6eabc  1      OPC=nop             
  nop                                                       #  68    0x6eabd  1      OPC=nop             
  nop                                                       #  69    0x6eabe  1      OPC=nop             
  nop                                                       #  70    0x6eabf  1      OPC=nop             
  nop                                                       #  71    0x6eac0  1      OPC=nop             
  nop                                                       #  72    0x6eac1  1      OPC=nop             
  nop                                                       #  73    0x6eac2  1      OPC=nop             
  nop                                                       #  74    0x6eac3  1      OPC=nop             
  nop                                                       #  75    0x6eac4  1      OPC=nop             
  nop                                                       #  76    0x6eac5  1      OPC=nop             
.L_6eac0:                                                   #        0x6eac6  0      OPC=<label>         
  nop                                                       #  77    0x6eac6  1      OPC=nop             
  nop                                                       #  78    0x6eac7  1      OPC=nop             
  nop                                                       #  79    0x6eac8  1      OPC=nop             
  nop                                                       #  80    0x6eac9  1      OPC=nop             
  nop                                                       #  81    0x6eaca  1      OPC=nop             
  nop                                                       #  82    0x6eacb  1      OPC=nop             
  nop                                                       #  83    0x6eacc  1      OPC=nop             
  nop                                                       #  84    0x6eacd  1      OPC=nop             
  nop                                                       #  85    0x6eace  1      OPC=nop             
  nop                                                       #  86    0x6eacf  1      OPC=nop             
  nop                                                       #  87    0x6ead0  1      OPC=nop             
  nop                                                       #  88    0x6ead1  1      OPC=nop             
  nop                                                       #  89    0x6ead2  1      OPC=nop             
  nop                                                       #  90    0x6ead3  1      OPC=nop             
  nop                                                       #  91    0x6ead4  1      OPC=nop             
  nop                                                       #  92    0x6ead5  1      OPC=nop             
  nop                                                       #  93    0x6ead6  1      OPC=nop             
  nop                                                       #  94    0x6ead7  1      OPC=nop             
  nop                                                       #  95    0x6ead8  1      OPC=nop             
  nop                                                       #  96    0x6ead9  1      OPC=nop             
  nop                                                       #  97    0x6eada  1      OPC=nop             
  nop                                                       #  98    0x6eadb  1      OPC=nop             
  nop                                                       #  99    0x6eadc  1      OPC=nop             
  nop                                                       #  100   0x6eadd  1      OPC=nop             
  nop                                                       #  101   0x6eade  1      OPC=nop             
  nop                                                       #  102   0x6eadf  1      OPC=nop             
  nop                                                       #  103   0x6eae0  1      OPC=nop             
  callq ._ZSt16__throw_bad_castv                            #  104   0x6eae1  5      OPC=callq_label     
                                                                                                         
.size _ZNSt13basic_istreamIwSt11char_traitsIwEE3getEPwi, .-_ZNSt13basic_istreamIwSt11char_traitsIwEE3getEPwi

