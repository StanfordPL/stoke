  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE7compareERKS2_
  .type _ZNKSbIwSt11char_traitsIwESaIwEE7compareERKS2_, @function

#! file-offset 0x115f40
#! rip-offset  0xd5f40
#! capacity    96 bytes

# Text                                            #  Line  RIP      Bytes  Opcode               
._ZNKSbIwSt11char_traitsIwESaIwEE7compareERKS2_:  #        0xd5f40  0      OPC=<label>          
  pushq %r12                                      #  1     0xd5f40  2      OPC=pushq_r64_1      
  movl %edi, %edi                                 #  2     0xd5f42  2      OPC=movl_r32_r32     
  movl %esi, %esi                                 #  3     0xd5f44  2      OPC=movl_r32_r32     
  pushq %rbx                                      #  4     0xd5f46  1      OPC=pushq_r64_1      
  subl $0x8, %esp                                 #  5     0xd5f47  3      OPC=subl_r32_imm8    
  addq %r15, %rsp                                 #  6     0xd5f4a  3      OPC=addq_r64_r64     
  movl %edi, %edi                                 #  7     0xd5f4d  2      OPC=movl_r32_r32     
  movl (%r15,%rdi,1), %edi                        #  8     0xd5f4f  4      OPC=movl_r32_m32     
  movl %esi, %esi                                 #  9     0xd5f53  2      OPC=movl_r32_r32     
  movl (%r15,%rsi,1), %esi                        #  10    0xd5f55  4      OPC=movl_r32_m32     
  leal -0xc(%rdi), %eax                           #  11    0xd5f59  3      OPC=leal_r32_m16     
  nop                                             #  12    0xd5f5c  1      OPC=nop              
  nop                                             #  13    0xd5f5d  1      OPC=nop              
  nop                                             #  14    0xd5f5e  1      OPC=nop              
  nop                                             #  15    0xd5f5f  1      OPC=nop              
  movl %eax, %eax                                 #  16    0xd5f60  2      OPC=movl_r32_r32     
  movl (%r15,%rax,1), %r12d                       #  17    0xd5f62  4      OPC=movl_r32_m32     
  leal -0xc(%rsi), %eax                           #  18    0xd5f66  3      OPC=leal_r32_m16     
  movl %eax, %eax                                 #  19    0xd5f69  2      OPC=movl_r32_r32     
  movl (%r15,%rax,1), %ebx                        #  20    0xd5f6b  4      OPC=movl_r32_m32     
  movl %r12d, %edx                                #  21    0xd5f6f  3      OPC=movl_r32_r32     
  cmpl %r12d, %ebx                                #  22    0xd5f72  3      OPC=cmpl_r32_r32     
  cmovbel %ebx, %edx                              #  23    0xd5f75  3      OPC=cmovbel_r32_r32  
  subl %ebx, %r12d                                #  24    0xd5f78  3      OPC=subl_r32_r32     
  callq .wmemcmp                                  #  25    0xd5f7b  5      OPC=callq_label      
  testl %eax, %eax                                #  26    0xd5f80  2      OPC=testl_r32_r32    
  cmovel %r12d, %eax                              #  27    0xd5f82  4      OPC=cmovel_r32_r32   
  addl $0x8, %esp                                 #  28    0xd5f86  3      OPC=addl_r32_imm8    
  addq %r15, %rsp                                 #  29    0xd5f89  3      OPC=addq_r64_r64     
  popq %rbx                                       #  30    0xd5f8c  1      OPC=popq_r64_1       
  popq %r12                                       #  31    0xd5f8d  2      OPC=popq_r64_1       
  popq %r11                                       #  32    0xd5f8f  2      OPC=popq_r64_1       
  andl $0xffffffe0, %r11d                         #  33    0xd5f91  7      OPC=andl_r32_imm32   
  nop                                             #  34    0xd5f98  1      OPC=nop              
  nop                                             #  35    0xd5f99  1      OPC=nop              
  nop                                             #  36    0xd5f9a  1      OPC=nop              
  nop                                             #  37    0xd5f9b  1      OPC=nop              
  addq %r15, %r11                                 #  38    0xd5f9c  3      OPC=addq_r64_r64     
  jmpq %r11                                       #  39    0xd5f9f  3      OPC=jmpq_r64         
  nop                                             #  40    0xd5fa2  1      OPC=nop              
  nop                                             #  41    0xd5fa3  1      OPC=nop              
  nop                                             #  42    0xd5fa4  1      OPC=nop              
  nop                                             #  43    0xd5fa5  1      OPC=nop              
  nop                                             #  44    0xd5fa6  1      OPC=nop              
                                                                                                
.size _ZNKSbIwSt11char_traitsIwESaIwEE7compareERKS2_, .-_ZNKSbIwSt11char_traitsIwESaIwEE7compareERKS2_

