  .text
  .globl _ZNKSt5ctypeIcE10do_toupperEc
  .type _ZNKSt5ctypeIcE10do_toupperEc, @function

#! file-offset 0x124560
#! rip-offset  0xe4560
#! capacity    64 bytes

# Text                           #  Line  RIP      Bytes  Opcode    
._ZNKSt5ctypeIcE10do_toupperEc:  #        0xe4560  0      OPC=0     
  movl %edi, %edi                #  1     0xe4560  2      OPC=1157  
  movzbl %sil, %edx              #  2     0xe4562  4      OPC=1304  
  movl %esi, %eax                #  3     0xe4566  2      OPC=1157  
  movl %edi, %edi                #  4     0xe4568  2      OPC=1157  
  addl 0x18(%r15,%rdi,1), %edx   #  5     0xe456a  5      OPC=66    
  movl %edx, %edx                #  6     0xe456f  2      OPC=1157  
  testb $0x2, (%r15,%rdx,1)      #  7     0xe4571  5      OPC=2430  
  je .L_e4580                    #  8     0xe4576  6      OPC=893   
  nop                            #  9     0xe457c  1      OPC=1343  
  nop                            #  10    0xe457d  1      OPC=1343  
  subl $0x20, %eax               #  11    0xe457e  3      OPC=2384  
  nop                            #  12    0xe4581  1      OPC=1343  
  nop                            #  13    0xe4582  1      OPC=1343  
  nop                            #  14    0xe4583  1      OPC=1343  
  nop                            #  15    0xe4584  1      OPC=1343  
  nop                            #  16    0xe4585  1      OPC=1343  
.L_e4580:                        #        0xe4586  0      OPC=0     
  popq %r11                      #  17    0xe4586  2      OPC=1694  
  andl $0xffffffe0, %r11d        #  18    0xe4588  7      OPC=131   
  nop                            #  19    0xe458f  1      OPC=1343  
  nop                            #  20    0xe4590  1      OPC=1343  
  nop                            #  21    0xe4591  1      OPC=1343  
  nop                            #  22    0xe4592  1      OPC=1343  
  addq %r15, %r11                #  23    0xe4593  3      OPC=72    
  jmpq %r11                      #  24    0xe4596  3      OPC=928   
  nop                            #  25    0xe4599  1      OPC=1343  
  nop                            #  26    0xe459a  1      OPC=1343  
  nop                            #  27    0xe459b  1      OPC=1343  
  nop                            #  28    0xe459c  1      OPC=1343  
  nop                            #  29    0xe459d  1      OPC=1343  
  nop                            #  30    0xe459e  1      OPC=1343  
  nop                            #  31    0xe459f  1      OPC=1343  
  nop                            #  32    0xe45a0  1      OPC=1343  
  nop                            #  33    0xe45a1  1      OPC=1343  
  nop                            #  34    0xe45a2  1      OPC=1343  
  nop                            #  35    0xe45a3  1      OPC=1343  
  nop                            #  36    0xe45a4  1      OPC=1343  
  nop                            #  37    0xe45a5  1      OPC=1343  
  nop                            #  38    0xe45a6  1      OPC=1343  
  nop                            #  39    0xe45a7  1      OPC=1343  
  nop                            #  40    0xe45a8  1      OPC=1343  
  nop                            #  41    0xe45a9  1      OPC=1343  
  nop                            #  42    0xe45aa  1      OPC=1343  
  nop                            #  43    0xe45ab  1      OPC=1343  
  nop                            #  44    0xe45ac  1      OPC=1343  
                                                                    
.size _ZNKSt5ctypeIcE10do_toupperEc, .-_ZNKSt5ctypeIcE10do_toupperEc

