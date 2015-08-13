  .text
  .globl _ZNSt9basic_iosIcSt11char_traitsIcEE5rdbufEPSt15basic_streambufIcS1_E
  .type _ZNSt9basic_iosIcSt11char_traitsIcEE5rdbufEPSt15basic_streambufIcS1_E, @function

#! file-offset 0xa5880
#! rip-offset  0x65880
#! capacity    64 bytes

# Text                                                                   #  Line  RIP      Bytes  Opcode              
._ZNSt9basic_iosIcSt11char_traitsIcEE5rdbufEPSt15basic_streambufIcS1_E:  #        0x65880  0      OPC=<label>         
  movl %edi, %edi                                                        #  1     0x65880  2      OPC=movl_r32_r32    
  pushq %rbx                                                             #  2     0x65882  1      OPC=pushq_r64_1     
  movl %edi, %edi                                                        #  3     0x65883  2      OPC=movl_r32_r32    
  movl 0x78(%r15,%rdi,1), %ebx                                           #  4     0x65885  5      OPC=movl_r32_m32    
  movl %edi, %edi                                                        #  5     0x6588a  2      OPC=movl_r32_r32    
  movl %esi, 0x78(%r15,%rdi,1)                                           #  6     0x6588c  5      OPC=movl_m32_r32    
  xorl %esi, %esi                                                        #  7     0x65891  2      OPC=xorl_r32_r32    
  nop                                                                    #  8     0x65893  1      OPC=nop             
  nop                                                                    #  9     0x65894  1      OPC=nop             
  nop                                                                    #  10    0x65895  1      OPC=nop             
  nop                                                                    #  11    0x65896  1      OPC=nop             
  nop                                                                    #  12    0x65897  1      OPC=nop             
  nop                                                                    #  13    0x65898  1      OPC=nop             
  nop                                                                    #  14    0x65899  1      OPC=nop             
  nop                                                                    #  15    0x6589a  1      OPC=nop             
  callq ._ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate     #  16    0x6589b  5      OPC=callq_label     
  movl %ebx, %eax                                                        #  17    0x658a0  2      OPC=movl_r32_r32    
  popq %rbx                                                              #  18    0x658a2  1      OPC=popq_r64_1      
  popq %r11                                                              #  19    0x658a3  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                #  20    0x658a5  7      OPC=andl_r32_imm32  
  nop                                                                    #  21    0x658ac  1      OPC=nop             
  nop                                                                    #  22    0x658ad  1      OPC=nop             
  nop                                                                    #  23    0x658ae  1      OPC=nop             
  nop                                                                    #  24    0x658af  1      OPC=nop             
  addq %r15, %r11                                                        #  25    0x658b0  3      OPC=addq_r64_r64    
  jmpq %r11                                                              #  26    0x658b3  3      OPC=jmpq_r64        
  nop                                                                    #  27    0x658b6  1      OPC=nop             
  nop                                                                    #  28    0x658b7  1      OPC=nop             
  nop                                                                    #  29    0x658b8  1      OPC=nop             
  nop                                                                    #  30    0x658b9  1      OPC=nop             
  nop                                                                    #  31    0x658ba  1      OPC=nop             
  nop                                                                    #  32    0x658bb  1      OPC=nop             
  nop                                                                    #  33    0x658bc  1      OPC=nop             
  nop                                                                    #  34    0x658bd  1      OPC=nop             
  nop                                                                    #  35    0x658be  1      OPC=nop             
  nop                                                                    #  36    0x658bf  1      OPC=nop             
  nop                                                                    #  37    0x658c0  1      OPC=nop             
  nop                                                                    #  38    0x658c1  1      OPC=nop             
  nop                                                                    #  39    0x658c2  1      OPC=nop             
  nop                                                                    #  40    0x658c3  1      OPC=nop             
  nop                                                                    #  41    0x658c4  1      OPC=nop             
  nop                                                                    #  42    0x658c5  1      OPC=nop             
  nop                                                                    #  43    0x658c6  1      OPC=nop             
                                                                                                                      
.size _ZNSt9basic_iosIcSt11char_traitsIcEE5rdbufEPSt15basic_streambufIcS1_E, .-_ZNSt9basic_iosIcSt11char_traitsIcEE5rdbufEPSt15basic_streambufIcS1_E

