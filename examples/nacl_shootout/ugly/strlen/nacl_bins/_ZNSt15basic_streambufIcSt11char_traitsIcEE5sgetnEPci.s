  .text
  .globl _ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetnEPci
  .type _ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetnEPci, @function

#! file-offset 0xe7c40
#! rip-offset  0xa7c40
#! capacity    32 bytes

# Text                                                   #  Line  RIP      Bytes  Opcode    
._ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetnEPci:  #        0xa7c40  0      OPC=0     
  movl %edi, %edi                                        #  1     0xa7c40  2      OPC=1157  
  movl %esi, %esi                                        #  2     0xa7c42  2      OPC=1157  
  movl %edi, %edi                                        #  3     0xa7c44  2      OPC=1157  
  movl (%r15,%rdi,1), %eax                               #  4     0xa7c46  4      OPC=1156  
  movl %eax, %eax                                        #  5     0xa7c4a  2      OPC=1157  
  movl 0x20(%r15,%rax,1), %eax                           #  6     0xa7c4c  5      OPC=1156  
  andl $0xffffffe0, %eax                                 #  7     0xa7c51  6      OPC=131   
  nop                                                    #  8     0xa7c57  1      OPC=1343  
  nop                                                    #  9     0xa7c58  1      OPC=1343  
  nop                                                    #  10    0xa7c59  1      OPC=1343  
  addq %r15, %rax                                        #  11    0xa7c5a  3      OPC=72    
  jmpq %rax                                              #  12    0xa7c5d  2      OPC=928   
  nop                                                    #  13    0xa7c5f  1      OPC=1343  
  nop                                                    #  14    0xa7c60  1      OPC=1343  
  nop                                                    #  15    0xa7c61  1      OPC=1343  
  nop                                                    #  16    0xa7c62  1      OPC=1343  
  nop                                                    #  17    0xa7c63  1      OPC=1343  
  nop                                                    #  18    0xa7c64  1      OPC=1343  
  nop                                                    #  19    0xa7c65  1      OPC=1343  
                                                                                            
.size _ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetnEPci, .-_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetnEPci

