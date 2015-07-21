  .text
  .globl _ZNSt15basic_streambufIwSt11char_traitsIwEE5uflowEv
  .type _ZNSt15basic_streambufIwSt11char_traitsIwEE5uflowEv, @function

#! file-offset 0xe83e0
#! rip-offset  0xa83e0
#! capacity    96 bytes

# Text                                                 #  Line  RIP      Bytes  Opcode    
._ZNSt15basic_streambufIwSt11char_traitsIwEE5uflowEv:  #        0xa83e0  0      OPC=0     
  pushq %rbx                                           #  1     0xa83e0  1      OPC=1861  
  movl %edi, %ebx                                      #  2     0xa83e1  2      OPC=1157  
  movl %ebx, %ebx                                      #  3     0xa83e3  2      OPC=1157  
  movl (%r15,%rbx,1), %eax                             #  4     0xa83e5  4      OPC=1156  
  movl %ebx, %edi                                      #  5     0xa83e9  2      OPC=1157  
  movl %eax, %eax                                      #  6     0xa83eb  2      OPC=1157  
  movl 0x24(%r15,%rax,1), %eax                         #  7     0xa83ed  5      OPC=1156  
  nop                                                  #  8     0xa83f2  1      OPC=1343  
  nop                                                  #  9     0xa83f3  1      OPC=1343  
  nop                                                  #  10    0xa83f4  1      OPC=1343  
  nop                                                  #  11    0xa83f5  1      OPC=1343  
  nop                                                  #  12    0xa83f6  1      OPC=1343  
  nop                                                  #  13    0xa83f7  1      OPC=1343  
  andl $0xffffffe0, %eax                               #  14    0xa83f8  6      OPC=131   
  nop                                                  #  15    0xa83fe  1      OPC=1343  
  nop                                                  #  16    0xa83ff  1      OPC=1343  
  nop                                                  #  17    0xa8400  1      OPC=1343  
  addq %r15, %rax                                      #  18    0xa8401  3      OPC=72    
  callq %rax                                           #  19    0xa8404  2      OPC=258   
  cmpl $0xffffffff, %eax                               #  20    0xa8406  6      OPC=469   
  nop                                                  #  21    0xa840c  1      OPC=1343  
  nop                                                  #  22    0xa840d  1      OPC=1343  
  nop                                                  #  23    0xa840e  1      OPC=1343  
  je .L_a8420                                          #  24    0xa840f  6      OPC=893   
  nop                                                  #  25    0xa8415  1      OPC=1343  
  nop                                                  #  26    0xa8416  1      OPC=1343  
  movl %ebx, %ebx                                      #  27    0xa8417  2      OPC=1157  
  movl 0x8(%r15,%rbx,1), %edx                          #  28    0xa8419  5      OPC=1156  
  movl %edx, %edx                                      #  29    0xa841e  2      OPC=1157  
  movl (%r15,%rdx,1), %eax                             #  30    0xa8420  4      OPC=1156  
  addl $0x4, %edx                                      #  31    0xa8424  3      OPC=65    
  movl %ebx, %ebx                                      #  32    0xa8427  2      OPC=1157  
  movl %edx, 0x8(%r15,%rbx,1)                          #  33    0xa8429  5      OPC=1136  
  nop                                                  #  34    0xa842e  1      OPC=1343  
  nop                                                  #  35    0xa842f  1      OPC=1343  
  nop                                                  #  36    0xa8430  1      OPC=1343  
  nop                                                  #  37    0xa8431  1      OPC=1343  
.L_a8420:                                              #        0xa8432  0      OPC=0     
  popq %rbx                                            #  38    0xa8432  1      OPC=1694  
  popq %r11                                            #  39    0xa8433  2      OPC=1694  
  andl $0xffffffe0, %r11d                              #  40    0xa8435  7      OPC=131   
  nop                                                  #  41    0xa843c  1      OPC=1343  
  nop                                                  #  42    0xa843d  1      OPC=1343  
  nop                                                  #  43    0xa843e  1      OPC=1343  
  nop                                                  #  44    0xa843f  1      OPC=1343  
  addq %r15, %r11                                      #  45    0xa8440  3      OPC=72    
  jmpq %r11                                            #  46    0xa8443  3      OPC=928   
  nop                                                  #  47    0xa8446  1      OPC=1343  
  nop                                                  #  48    0xa8447  1      OPC=1343  
  nop                                                  #  49    0xa8448  1      OPC=1343  
  nop                                                  #  50    0xa8449  1      OPC=1343  
  nop                                                  #  51    0xa844a  1      OPC=1343  
  nop                                                  #  52    0xa844b  1      OPC=1343  
  nop                                                  #  53    0xa844c  1      OPC=1343  
  nop                                                  #  54    0xa844d  1      OPC=1343  
  nop                                                  #  55    0xa844e  1      OPC=1343  
  nop                                                  #  56    0xa844f  1      OPC=1343  
  nop                                                  #  57    0xa8450  1      OPC=1343  
  nop                                                  #  58    0xa8451  1      OPC=1343  
  nop                                                  #  59    0xa8452  1      OPC=1343  
  nop                                                  #  60    0xa8453  1      OPC=1343  
  nop                                                  #  61    0xa8454  1      OPC=1343  
  nop                                                  #  62    0xa8455  1      OPC=1343  
  nop                                                  #  63    0xa8456  1      OPC=1343  
  nop                                                  #  64    0xa8457  1      OPC=1343  
  nop                                                  #  65    0xa8458  1      OPC=1343  
                                                                                          
.size _ZNSt15basic_streambufIwSt11char_traitsIwEE5uflowEv, .-_ZNSt15basic_streambufIwSt11char_traitsIwEE5uflowEv

