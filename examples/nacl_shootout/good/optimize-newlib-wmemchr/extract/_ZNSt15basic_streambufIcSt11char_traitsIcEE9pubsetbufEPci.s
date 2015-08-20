  .text
  .globl _ZNSt15basic_streambufIcSt11char_traitsIcEE9pubsetbufEPci
  .type _ZNSt15basic_streambufIcSt11char_traitsIcEE9pubsetbufEPci, @function

#! file-offset 0xe8360
#! rip-offset  0xa8360
#! capacity    32 bytes

# Text                                                       #  Line  RIP      Bytes  Opcode              
._ZNSt15basic_streambufIcSt11char_traitsIcEE9pubsetbufEPci:  #        0xa8360  0      OPC=<label>         
  movl %edi, %edi                                            #  1     0xa8360  2      OPC=movl_r32_r32    
  movl %esi, %esi                                            #  2     0xa8362  2      OPC=movl_r32_r32    
  movl %edi, %edi                                            #  3     0xa8364  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                   #  4     0xa8366  4      OPC=movl_r32_m32    
  movl %eax, %eax                                            #  5     0xa836a  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rax,1), %eax                                #  6     0xa836c  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                                     #  7     0xa8371  6      OPC=andl_r32_imm32  
  nop                                                        #  8     0xa8377  1      OPC=nop             
  nop                                                        #  9     0xa8378  1      OPC=nop             
  nop                                                        #  10    0xa8379  1      OPC=nop             
  addq %r15, %rax                                            #  11    0xa837a  3      OPC=addq_r64_r64    
  jmpq %rax                                                  #  12    0xa837d  2      OPC=jmpq_r64        
  nop                                                        #  13    0xa837f  1      OPC=nop             
  nop                                                        #  14    0xa8380  1      OPC=nop             
  nop                                                        #  15    0xa8381  1      OPC=nop             
  nop                                                        #  16    0xa8382  1      OPC=nop             
  nop                                                        #  17    0xa8383  1      OPC=nop             
  nop                                                        #  18    0xa8384  1      OPC=nop             
  nop                                                        #  19    0xa8385  1      OPC=nop             
                                                                                                          
.size _ZNSt15basic_streambufIcSt11char_traitsIcEE9pubsetbufEPci, .-_ZNSt15basic_streambufIcSt11char_traitsIcEE9pubsetbufEPci

