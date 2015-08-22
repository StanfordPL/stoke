  .text
  .globl _ZNSt9basic_iosIwSt11char_traitsIwEE5rdbufEPSt15basic_streambufIwS1_E
  .type _ZNSt9basic_iosIwSt11char_traitsIwEE5rdbufEPSt15basic_streambufIwS1_E, @function

#! file-offset 0xa6180
#! rip-offset  0x66180
#! capacity    64 bytes

# Text                                                                   #  Line  RIP      Bytes  Opcode              
._ZNSt9basic_iosIwSt11char_traitsIwEE5rdbufEPSt15basic_streambufIwS1_E:  #        0x66180  0      OPC=<label>         
  movl %edi, %edi                                                        #  1     0x66180  2      OPC=movl_r32_r32    
  pushq %rbx                                                             #  2     0x66182  1      OPC=pushq_r64_1     
  movl %edi, %edi                                                        #  3     0x66183  2      OPC=movl_r32_r32    
  movl 0x7c(%r15,%rdi,1), %ebx                                           #  4     0x66185  5      OPC=movl_r32_m32    
  movl %edi, %edi                                                        #  5     0x6618a  2      OPC=movl_r32_r32    
  movl %esi, 0x7c(%r15,%rdi,1)                                           #  6     0x6618c  5      OPC=movl_m32_r32    
  xorl %esi, %esi                                                        #  7     0x66191  2      OPC=xorl_r32_r32    
  nop                                                                    #  8     0x66193  1      OPC=nop             
  nop                                                                    #  9     0x66194  1      OPC=nop             
  nop                                                                    #  10    0x66195  1      OPC=nop             
  nop                                                                    #  11    0x66196  1      OPC=nop             
  nop                                                                    #  12    0x66197  1      OPC=nop             
  nop                                                                    #  13    0x66198  1      OPC=nop             
  nop                                                                    #  14    0x66199  1      OPC=nop             
  nop                                                                    #  15    0x6619a  1      OPC=nop             
  callq ._ZNSt9basic_iosIwSt11char_traitsIwEE5clearESt12_Ios_Iostate     #  16    0x6619b  5      OPC=callq_label     
  movl %ebx, %eax                                                        #  17    0x661a0  2      OPC=movl_r32_r32    
  popq %rbx                                                              #  18    0x661a2  1      OPC=popq_r64_1      
  popq %r11                                                              #  19    0x661a3  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                #  20    0x661a5  7      OPC=andl_r32_imm32  
  nop                                                                    #  21    0x661ac  1      OPC=nop             
  nop                                                                    #  22    0x661ad  1      OPC=nop             
  nop                                                                    #  23    0x661ae  1      OPC=nop             
  nop                                                                    #  24    0x661af  1      OPC=nop             
  addq %r15, %r11                                                        #  25    0x661b0  3      OPC=addq_r64_r64    
  jmpq %r11                                                              #  26    0x661b3  3      OPC=jmpq_r64        
  nop                                                                    #  27    0x661b6  1      OPC=nop             
  nop                                                                    #  28    0x661b7  1      OPC=nop             
  nop                                                                    #  29    0x661b8  1      OPC=nop             
  nop                                                                    #  30    0x661b9  1      OPC=nop             
  nop                                                                    #  31    0x661ba  1      OPC=nop             
  nop                                                                    #  32    0x661bb  1      OPC=nop             
  nop                                                                    #  33    0x661bc  1      OPC=nop             
  nop                                                                    #  34    0x661bd  1      OPC=nop             
  nop                                                                    #  35    0x661be  1      OPC=nop             
  nop                                                                    #  36    0x661bf  1      OPC=nop             
  nop                                                                    #  37    0x661c0  1      OPC=nop             
  nop                                                                    #  38    0x661c1  1      OPC=nop             
  nop                                                                    #  39    0x661c2  1      OPC=nop             
  nop                                                                    #  40    0x661c3  1      OPC=nop             
  nop                                                                    #  41    0x661c4  1      OPC=nop             
  nop                                                                    #  42    0x661c5  1      OPC=nop             
  nop                                                                    #  43    0x661c6  1      OPC=nop             
                                                                                                                      
.size _ZNSt9basic_iosIwSt11char_traitsIwEE5rdbufEPSt15basic_streambufIwS1_E, .-_ZNSt9basic_iosIwSt11char_traitsIwEE5rdbufEPSt15basic_streambufIwS1_E

