  .text
  .globl _ZNKSt5ctypeIcE10do_tolowerEc
  .type _ZNKSt5ctypeIcE10do_tolowerEc, @function

#! file-offset 0x124620
#! rip-offset  0xe4620
#! capacity    64 bytes

# Text                           #  Line  RIP      Bytes  Opcode    
._ZNKSt5ctypeIcE10do_tolowerEc:  #        0xe4620  0      OPC=0     
  movl %edi, %edi                #  1     0xe4620  2      OPC=1157  
  movzbl %sil, %edx              #  2     0xe4622  4      OPC=1304  
  movl %esi, %eax                #  3     0xe4626  2      OPC=1157  
  movl %edi, %edi                #  4     0xe4628  2      OPC=1157  
  addl 0x18(%r15,%rdi,1), %edx   #  5     0xe462a  5      OPC=66    
  movl %edx, %edx                #  6     0xe462f  2      OPC=1157  
  testb $0x1, (%r15,%rdx,1)      #  7     0xe4631  5      OPC=2430  
  je .L_e4640                    #  8     0xe4636  6      OPC=893   
  nop                            #  9     0xe463c  1      OPC=1343  
  nop                            #  10    0xe463d  1      OPC=1343  
  addl $0x20, %eax               #  11    0xe463e  3      OPC=65    
  nop                            #  12    0xe4641  1      OPC=1343  
  nop                            #  13    0xe4642  1      OPC=1343  
  nop                            #  14    0xe4643  1      OPC=1343  
  nop                            #  15    0xe4644  1      OPC=1343  
  nop                            #  16    0xe4645  1      OPC=1343  
.L_e4640:                        #        0xe4646  0      OPC=0     
  popq %r11                      #  17    0xe4646  2      OPC=1694  
  andl $0xffffffe0, %r11d        #  18    0xe4648  7      OPC=131   
  nop                            #  19    0xe464f  1      OPC=1343  
  nop                            #  20    0xe4650  1      OPC=1343  
  nop                            #  21    0xe4651  1      OPC=1343  
  nop                            #  22    0xe4652  1      OPC=1343  
  addq %r15, %r11                #  23    0xe4653  3      OPC=72    
  jmpq %r11                      #  24    0xe4656  3      OPC=928   
  nop                            #  25    0xe4659  1      OPC=1343  
  nop                            #  26    0xe465a  1      OPC=1343  
  nop                            #  27    0xe465b  1      OPC=1343  
  nop                            #  28    0xe465c  1      OPC=1343  
  nop                            #  29    0xe465d  1      OPC=1343  
  nop                            #  30    0xe465e  1      OPC=1343  
  nop                            #  31    0xe465f  1      OPC=1343  
  nop                            #  32    0xe4660  1      OPC=1343  
  nop                            #  33    0xe4661  1      OPC=1343  
  nop                            #  34    0xe4662  1      OPC=1343  
  nop                            #  35    0xe4663  1      OPC=1343  
  nop                            #  36    0xe4664  1      OPC=1343  
  nop                            #  37    0xe4665  1      OPC=1343  
  nop                            #  38    0xe4666  1      OPC=1343  
  nop                            #  39    0xe4667  1      OPC=1343  
  nop                            #  40    0xe4668  1      OPC=1343  
  nop                            #  41    0xe4669  1      OPC=1343  
  nop                            #  42    0xe466a  1      OPC=1343  
  nop                            #  43    0xe466b  1      OPC=1343  
  nop                            #  44    0xe466c  1      OPC=1343  
                                                                    
.size _ZNKSt5ctypeIcE10do_tolowerEc, .-_ZNKSt5ctypeIcE10do_tolowerEc

