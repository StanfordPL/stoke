  .text
  .globl _ZNSt9basic_iosIcSt11char_traitsIcEE5rdbufEPSt15basic_streambufIcS1_E
  .type _ZNSt9basic_iosIcSt11char_traitsIcEE5rdbufEPSt15basic_streambufIcS1_E, @function

#! file-offset 0xa5b80
#! rip-offset  0x65b80
#! capacity    64 bytes

# Text                                                                   #  Line  RIP      Bytes  Opcode              
._ZNSt9basic_iosIcSt11char_traitsIcEE5rdbufEPSt15basic_streambufIcS1_E:  #        0x65b80  0      OPC=<label>         
  movl %edi, %edi                                                        #  1     0x65b80  2      OPC=movl_r32_r32    
  pushq %rbx                                                             #  2     0x65b82  1      OPC=pushq_r64_1     
  movl %edi, %edi                                                        #  3     0x65b83  2      OPC=movl_r32_r32    
  movl 0x78(%r15,%rdi,1), %ebx                                           #  4     0x65b85  5      OPC=movl_r32_m32    
  movl %edi, %edi                                                        #  5     0x65b8a  2      OPC=movl_r32_r32    
  movl %esi, 0x78(%r15,%rdi,1)                                           #  6     0x65b8c  5      OPC=movl_m32_r32    
  xorl %esi, %esi                                                        #  7     0x65b91  2      OPC=xorl_r32_r32    
  nop                                                                    #  8     0x65b93  1      OPC=nop             
  nop                                                                    #  9     0x65b94  1      OPC=nop             
  nop                                                                    #  10    0x65b95  1      OPC=nop             
  nop                                                                    #  11    0x65b96  1      OPC=nop             
  nop                                                                    #  12    0x65b97  1      OPC=nop             
  nop                                                                    #  13    0x65b98  1      OPC=nop             
  nop                                                                    #  14    0x65b99  1      OPC=nop             
  nop                                                                    #  15    0x65b9a  1      OPC=nop             
  callq ._ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate     #  16    0x65b9b  5      OPC=callq_label     
  movl %ebx, %eax                                                        #  17    0x65ba0  2      OPC=movl_r32_r32    
  popq %rbx                                                              #  18    0x65ba2  1      OPC=popq_r64_1      
  popq %r11                                                              #  19    0x65ba3  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                #  20    0x65ba5  7      OPC=andl_r32_imm32  
  nop                                                                    #  21    0x65bac  1      OPC=nop             
  nop                                                                    #  22    0x65bad  1      OPC=nop             
  nop                                                                    #  23    0x65bae  1      OPC=nop             
  nop                                                                    #  24    0x65baf  1      OPC=nop             
  addq %r15, %r11                                                        #  25    0x65bb0  3      OPC=addq_r64_r64    
  jmpq %r11                                                              #  26    0x65bb3  3      OPC=jmpq_r64        
  nop                                                                    #  27    0x65bb6  1      OPC=nop             
  nop                                                                    #  28    0x65bb7  1      OPC=nop             
  nop                                                                    #  29    0x65bb8  1      OPC=nop             
  nop                                                                    #  30    0x65bb9  1      OPC=nop             
  nop                                                                    #  31    0x65bba  1      OPC=nop             
  nop                                                                    #  32    0x65bbb  1      OPC=nop             
  nop                                                                    #  33    0x65bbc  1      OPC=nop             
  nop                                                                    #  34    0x65bbd  1      OPC=nop             
  nop                                                                    #  35    0x65bbe  1      OPC=nop             
  nop                                                                    #  36    0x65bbf  1      OPC=nop             
  nop                                                                    #  37    0x65bc0  1      OPC=nop             
  nop                                                                    #  38    0x65bc1  1      OPC=nop             
  nop                                                                    #  39    0x65bc2  1      OPC=nop             
  nop                                                                    #  40    0x65bc3  1      OPC=nop             
  nop                                                                    #  41    0x65bc4  1      OPC=nop             
  nop                                                                    #  42    0x65bc5  1      OPC=nop             
  nop                                                                    #  43    0x65bc6  1      OPC=nop             
                                                                                                                      
.size _ZNSt9basic_iosIcSt11char_traitsIcEE5rdbufEPSt15basic_streambufIcS1_E, .-_ZNSt9basic_iosIcSt11char_traitsIcEE5rdbufEPSt15basic_streambufIcS1_E

