  .text
  .globl _ZNSt15basic_streambufIcSt11char_traitsIcEE9pubsetbufEPci
  .type _ZNSt15basic_streambufIcSt11char_traitsIcEE9pubsetbufEPci, @function

#! file-offset 0xe8060
#! rip-offset  0xa8060
#! capacity    32 bytes

# Text                                                       #  Line  RIP      Bytes  Opcode              
._ZNSt15basic_streambufIcSt11char_traitsIcEE9pubsetbufEPci:  #        0xa8060  0      OPC=<label>         
  movl %edi, %edi                                            #  1     0xa8060  2      OPC=movl_r32_r32    
  movl %esi, %esi                                            #  2     0xa8062  2      OPC=movl_r32_r32    
  movl %edi, %edi                                            #  3     0xa8064  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                   #  4     0xa8066  4      OPC=movl_r32_m32    
  movl %eax, %eax                                            #  5     0xa806a  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rax,1), %eax                                #  6     0xa806c  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                                     #  7     0xa8071  6      OPC=andl_r32_imm32  
  nop                                                        #  8     0xa8077  1      OPC=nop             
  nop                                                        #  9     0xa8078  1      OPC=nop             
  nop                                                        #  10    0xa8079  1      OPC=nop             
  addq %r15, %rax                                            #  11    0xa807a  3      OPC=addq_r64_r64    
  jmpq %rax                                                  #  12    0xa807d  2      OPC=jmpq_r64        
  nop                                                        #  13    0xa807f  1      OPC=nop             
  nop                                                        #  14    0xa8080  1      OPC=nop             
  nop                                                        #  15    0xa8081  1      OPC=nop             
  nop                                                        #  16    0xa8082  1      OPC=nop             
  nop                                                        #  17    0xa8083  1      OPC=nop             
  nop                                                        #  18    0xa8084  1      OPC=nop             
  nop                                                        #  19    0xa8085  1      OPC=nop             
                                                                                                          
.size _ZNSt15basic_streambufIcSt11char_traitsIcEE9pubsetbufEPci, .-_ZNSt15basic_streambufIcSt11char_traitsIcEE9pubsetbufEPci

