  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE7compareERKS2_
  .type _ZNKSbIwSt11char_traitsIwESaIwEE7compareERKS2_, @function

#! file-offset 0x116660
#! rip-offset  0xd6660
#! capacity    96 bytes

# Text                                            #  Line  RIP      Bytes  Opcode               
._ZNKSbIwSt11char_traitsIwESaIwEE7compareERKS2_:  #        0xd6660  0      OPC=<label>          
  pushq %r12                                      #  1     0xd6660  2      OPC=pushq_r64_1      
  movl %edi, %edi                                 #  2     0xd6662  2      OPC=movl_r32_r32     
  movl %esi, %esi                                 #  3     0xd6664  2      OPC=movl_r32_r32     
  pushq %rbx                                      #  4     0xd6666  1      OPC=pushq_r64_1      
  subl $0x8, %esp                                 #  5     0xd6667  3      OPC=subl_r32_imm8    
  addq %r15, %rsp                                 #  6     0xd666a  3      OPC=addq_r64_r64     
  movl %edi, %edi                                 #  7     0xd666d  2      OPC=movl_r32_r32     
  movl (%r15,%rdi,1), %edi                        #  8     0xd666f  4      OPC=movl_r32_m32     
  movl %esi, %esi                                 #  9     0xd6673  2      OPC=movl_r32_r32     
  movl (%r15,%rsi,1), %esi                        #  10    0xd6675  4      OPC=movl_r32_m32     
  leal -0xc(%rdi), %eax                           #  11    0xd6679  3      OPC=leal_r32_m16     
  nop                                             #  12    0xd667c  1      OPC=nop              
  nop                                             #  13    0xd667d  1      OPC=nop              
  nop                                             #  14    0xd667e  1      OPC=nop              
  nop                                             #  15    0xd667f  1      OPC=nop              
  movl %eax, %eax                                 #  16    0xd6680  2      OPC=movl_r32_r32     
  movl (%r15,%rax,1), %r12d                       #  17    0xd6682  4      OPC=movl_r32_m32     
  leal -0xc(%rsi), %eax                           #  18    0xd6686  3      OPC=leal_r32_m16     
  movl %eax, %eax                                 #  19    0xd6689  2      OPC=movl_r32_r32     
  movl (%r15,%rax,1), %ebx                        #  20    0xd668b  4      OPC=movl_r32_m32     
  movl %r12d, %edx                                #  21    0xd668f  3      OPC=movl_r32_r32     
  cmpl %r12d, %ebx                                #  22    0xd6692  3      OPC=cmpl_r32_r32     
  cmovbel %ebx, %edx                              #  23    0xd6695  3      OPC=cmovbel_r32_r32  
  subl %ebx, %r12d                                #  24    0xd6698  3      OPC=subl_r32_r32     
  callq .wmemcmp                                  #  25    0xd669b  5      OPC=callq_label      
  testl %eax, %eax                                #  26    0xd66a0  2      OPC=testl_r32_r32    
  cmovel %r12d, %eax                              #  27    0xd66a2  4      OPC=cmovel_r32_r32   
  addl $0x8, %esp                                 #  28    0xd66a6  3      OPC=addl_r32_imm8    
  addq %r15, %rsp                                 #  29    0xd66a9  3      OPC=addq_r64_r64     
  popq %rbx                                       #  30    0xd66ac  1      OPC=popq_r64_1       
  popq %r12                                       #  31    0xd66ad  2      OPC=popq_r64_1       
  popq %r11                                       #  32    0xd66af  2      OPC=popq_r64_1       
  andl $0xffffffe0, %r11d                         #  33    0xd66b1  7      OPC=andl_r32_imm32   
  nop                                             #  34    0xd66b8  1      OPC=nop              
  nop                                             #  35    0xd66b9  1      OPC=nop              
  nop                                             #  36    0xd66ba  1      OPC=nop              
  nop                                             #  37    0xd66bb  1      OPC=nop              
  addq %r15, %r11                                 #  38    0xd66bc  3      OPC=addq_r64_r64     
  jmpq %r11                                       #  39    0xd66bf  3      OPC=jmpq_r64         
  nop                                             #  40    0xd66c2  1      OPC=nop              
  nop                                             #  41    0xd66c3  1      OPC=nop              
  nop                                             #  42    0xd66c4  1      OPC=nop              
  nop                                             #  43    0xd66c5  1      OPC=nop              
  nop                                             #  44    0xd66c6  1      OPC=nop              
                                                                                                
.size _ZNKSbIwSt11char_traitsIwESaIwEE7compareERKS2_, .-_ZNKSbIwSt11char_traitsIwESaIwEE7compareERKS2_

