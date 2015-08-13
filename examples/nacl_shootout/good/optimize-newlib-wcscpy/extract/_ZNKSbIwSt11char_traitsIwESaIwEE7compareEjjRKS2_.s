  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE7compareEjjRKS2_
  .type _ZNKSbIwSt11char_traitsIwESaIwEE7compareEjjRKS2_, @function

#! file-offset 0x116b00
#! rip-offset  0xd6b00
#! capacity    160 bytes

# Text                                              #  Line  RIP      Bytes  Opcode               
._ZNKSbIwSt11char_traitsIwESaIwEE7compareEjjRKS2_:  #        0xd6b00  0      OPC=<label>          
  pushq %r12                                        #  1     0xd6b00  2      OPC=pushq_r64_1      
  movl %edi, %edi                                   #  2     0xd6b02  2      OPC=movl_r32_r32     
  movl %ecx, %ecx                                   #  3     0xd6b04  2      OPC=movl_r32_r32     
  pushq %rbx                                        #  4     0xd6b06  1      OPC=pushq_r64_1      
  subl $0x8, %esp                                   #  5     0xd6b07  3      OPC=subl_r32_imm8    
  addq %r15, %rsp                                   #  6     0xd6b0a  3      OPC=addq_r64_r64     
  movl %edi, %edi                                   #  7     0xd6b0d  2      OPC=movl_r32_r32     
  movl (%r15,%rdi,1), %edi                          #  8     0xd6b0f  4      OPC=movl_r32_m32     
  leal -0xc(%rdi), %eax                             #  9     0xd6b13  3      OPC=leal_r32_m16     
  movl %eax, %eax                                   #  10    0xd6b16  2      OPC=movl_r32_r32     
  movl (%r15,%rax,1), %r12d                         #  11    0xd6b18  4      OPC=movl_r32_m32     
  cmpl %r12d, %esi                                  #  12    0xd6b1c  3      OPC=cmpl_r32_r32     
  nop                                               #  13    0xd6b1f  1      OPC=nop              
  ja .L_d6b80                                       #  14    0xd6b20  2      OPC=ja_label         
  movl %ecx, %ecx                                   #  15    0xd6b22  2      OPC=movl_r32_r32     
  movl (%r15,%rcx,1), %eax                          #  16    0xd6b24  4      OPC=movl_r32_m32     
  subl %esi, %r12d                                  #  17    0xd6b28  3      OPC=subl_r32_r32     
  leal (%rdi,%rsi,4), %edi                          #  18    0xd6b2b  3      OPC=leal_r32_m16     
  cmpl %r12d, %edx                                  #  19    0xd6b2e  3      OPC=cmpl_r32_r32     
  cmovbel %edx, %r12d                               #  20    0xd6b31  4      OPC=cmovbel_r32_r32  
  leal -0xc(%rax), %edx                             #  21    0xd6b35  3      OPC=leal_r32_m16     
  movl %eax, %esi                                   #  22    0xd6b38  2      OPC=movl_r32_r32     
  movl %edx, %edx                                   #  23    0xd6b3a  2      OPC=movl_r32_r32     
  movl (%r15,%rdx,1), %ebx                          #  24    0xd6b3c  4      OPC=movl_r32_m32     
  cmpl %ebx, %r12d                                  #  25    0xd6b40  3      OPC=cmpl_r32_r32     
  movl %ebx, %edx                                   #  26    0xd6b43  2      OPC=movl_r32_r32     
  cmovbel %r12d, %edx                               #  27    0xd6b45  4      OPC=cmovbel_r32_r32  
  subl %ebx, %r12d                                  #  28    0xd6b49  3      OPC=subl_r32_r32     
  nop                                               #  29    0xd6b4c  1      OPC=nop              
  nop                                               #  30    0xd6b4d  1      OPC=nop              
  nop                                               #  31    0xd6b4e  1      OPC=nop              
  nop                                               #  32    0xd6b4f  1      OPC=nop              
  nop                                               #  33    0xd6b50  1      OPC=nop              
  nop                                               #  34    0xd6b51  1      OPC=nop              
  nop                                               #  35    0xd6b52  1      OPC=nop              
  nop                                               #  36    0xd6b53  1      OPC=nop              
  nop                                               #  37    0xd6b54  1      OPC=nop              
  nop                                               #  38    0xd6b55  1      OPC=nop              
  nop                                               #  39    0xd6b56  1      OPC=nop              
  nop                                               #  40    0xd6b57  1      OPC=nop              
  nop                                               #  41    0xd6b58  1      OPC=nop              
  nop                                               #  42    0xd6b59  1      OPC=nop              
  nop                                               #  43    0xd6b5a  1      OPC=nop              
  callq .wmemcmp                                    #  44    0xd6b5b  5      OPC=callq_label      
  testl %eax, %eax                                  #  45    0xd6b60  2      OPC=testl_r32_r32    
  cmovel %r12d, %eax                                #  46    0xd6b62  4      OPC=cmovel_r32_r32   
  addl $0x8, %esp                                   #  47    0xd6b66  3      OPC=addl_r32_imm8    
  addq %r15, %rsp                                   #  48    0xd6b69  3      OPC=addq_r64_r64     
  popq %rbx                                         #  49    0xd6b6c  1      OPC=popq_r64_1       
  popq %r12                                         #  50    0xd6b6d  2      OPC=popq_r64_1       
  popq %r11                                         #  51    0xd6b6f  2      OPC=popq_r64_1       
  andl $0xffffffe0, %r11d                           #  52    0xd6b71  7      OPC=andl_r32_imm32   
  nop                                               #  53    0xd6b78  1      OPC=nop              
  nop                                               #  54    0xd6b79  1      OPC=nop              
  nop                                               #  55    0xd6b7a  1      OPC=nop              
  nop                                               #  56    0xd6b7b  1      OPC=nop              
  addq %r15, %r11                                   #  57    0xd6b7c  3      OPC=addq_r64_r64     
  jmpq %r11                                         #  58    0xd6b7f  3      OPC=jmpq_r64         
  nop                                               #  59    0xd6b82  1      OPC=nop              
  nop                                               #  60    0xd6b83  1      OPC=nop              
  nop                                               #  61    0xd6b84  1      OPC=nop              
  nop                                               #  62    0xd6b85  1      OPC=nop              
  nop                                               #  63    0xd6b86  1      OPC=nop              
.L_d6b80:                                           #        0xd6b87  0      OPC=<label>          
  movl $0x1003babd, %edi                            #  64    0xd6b87  5      OPC=movl_r32_imm32   
  nop                                               #  65    0xd6b8c  1      OPC=nop              
  nop                                               #  66    0xd6b8d  1      OPC=nop              
  nop                                               #  67    0xd6b8e  1      OPC=nop              
  nop                                               #  68    0xd6b8f  1      OPC=nop              
  nop                                               #  69    0xd6b90  1      OPC=nop              
  nop                                               #  70    0xd6b91  1      OPC=nop              
  nop                                               #  71    0xd6b92  1      OPC=nop              
  nop                                               #  72    0xd6b93  1      OPC=nop              
  nop                                               #  73    0xd6b94  1      OPC=nop              
  nop                                               #  74    0xd6b95  1      OPC=nop              
  nop                                               #  75    0xd6b96  1      OPC=nop              
  nop                                               #  76    0xd6b97  1      OPC=nop              
  nop                                               #  77    0xd6b98  1      OPC=nop              
  nop                                               #  78    0xd6b99  1      OPC=nop              
  nop                                               #  79    0xd6b9a  1      OPC=nop              
  nop                                               #  80    0xd6b9b  1      OPC=nop              
  nop                                               #  81    0xd6b9c  1      OPC=nop              
  nop                                               #  82    0xd6b9d  1      OPC=nop              
  nop                                               #  83    0xd6b9e  1      OPC=nop              
  nop                                               #  84    0xd6b9f  1      OPC=nop              
  nop                                               #  85    0xd6ba0  1      OPC=nop              
  nop                                               #  86    0xd6ba1  1      OPC=nop              
  callq ._ZSt20__throw_out_of_rangePKc              #  87    0xd6ba2  5      OPC=callq_label      
                                                                                                  
.size _ZNKSbIwSt11char_traitsIwESaIwEE7compareEjjRKS2_, .-_ZNKSbIwSt11char_traitsIwESaIwEE7compareEjjRKS2_

