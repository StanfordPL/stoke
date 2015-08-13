  .text
  .globl _ZNSt9basic_iosIwSt11char_traitsIwEE5rdbufEPSt15basic_streambufIwS1_E
  .type _ZNSt9basic_iosIwSt11char_traitsIwEE5rdbufEPSt15basic_streambufIwS1_E, @function

#! file-offset 0xa5760
#! rip-offset  0x65760
#! capacity    64 bytes

# Text                                                                   #  Line  RIP      Bytes  Opcode              
._ZNSt9basic_iosIwSt11char_traitsIwEE5rdbufEPSt15basic_streambufIwS1_E:  #        0x65760  0      OPC=<label>         
  movl %edi, %edi                                                        #  1     0x65760  2      OPC=movl_r32_r32    
  pushq %rbx                                                             #  2     0x65762  1      OPC=pushq_r64_1     
  movl %edi, %edi                                                        #  3     0x65763  2      OPC=movl_r32_r32    
  movl 0x7c(%r15,%rdi,1), %ebx                                           #  4     0x65765  5      OPC=movl_r32_m32    
  movl %edi, %edi                                                        #  5     0x6576a  2      OPC=movl_r32_r32    
  movl %esi, 0x7c(%r15,%rdi,1)                                           #  6     0x6576c  5      OPC=movl_m32_r32    
  xorl %esi, %esi                                                        #  7     0x65771  2      OPC=xorl_r32_r32    
  nop                                                                    #  8     0x65773  1      OPC=nop             
  nop                                                                    #  9     0x65774  1      OPC=nop             
  nop                                                                    #  10    0x65775  1      OPC=nop             
  nop                                                                    #  11    0x65776  1      OPC=nop             
  nop                                                                    #  12    0x65777  1      OPC=nop             
  nop                                                                    #  13    0x65778  1      OPC=nop             
  nop                                                                    #  14    0x65779  1      OPC=nop             
  nop                                                                    #  15    0x6577a  1      OPC=nop             
  callq ._ZNSt9basic_iosIwSt11char_traitsIwEE5clearESt12_Ios_Iostate     #  16    0x6577b  5      OPC=callq_label     
  movl %ebx, %eax                                                        #  17    0x65780  2      OPC=movl_r32_r32    
  popq %rbx                                                              #  18    0x65782  1      OPC=popq_r64_1      
  popq %r11                                                              #  19    0x65783  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                #  20    0x65785  7      OPC=andl_r32_imm32  
  nop                                                                    #  21    0x6578c  1      OPC=nop             
  nop                                                                    #  22    0x6578d  1      OPC=nop             
  nop                                                                    #  23    0x6578e  1      OPC=nop             
  nop                                                                    #  24    0x6578f  1      OPC=nop             
  addq %r15, %r11                                                        #  25    0x65790  3      OPC=addq_r64_r64    
  jmpq %r11                                                              #  26    0x65793  3      OPC=jmpq_r64        
  nop                                                                    #  27    0x65796  1      OPC=nop             
  nop                                                                    #  28    0x65797  1      OPC=nop             
  nop                                                                    #  29    0x65798  1      OPC=nop             
  nop                                                                    #  30    0x65799  1      OPC=nop             
  nop                                                                    #  31    0x6579a  1      OPC=nop             
  nop                                                                    #  32    0x6579b  1      OPC=nop             
  nop                                                                    #  33    0x6579c  1      OPC=nop             
  nop                                                                    #  34    0x6579d  1      OPC=nop             
  nop                                                                    #  35    0x6579e  1      OPC=nop             
  nop                                                                    #  36    0x6579f  1      OPC=nop             
  nop                                                                    #  37    0x657a0  1      OPC=nop             
  nop                                                                    #  38    0x657a1  1      OPC=nop             
  nop                                                                    #  39    0x657a2  1      OPC=nop             
  nop                                                                    #  40    0x657a3  1      OPC=nop             
  nop                                                                    #  41    0x657a4  1      OPC=nop             
  nop                                                                    #  42    0x657a5  1      OPC=nop             
  nop                                                                    #  43    0x657a6  1      OPC=nop             
                                                                                                                      
.size _ZNSt9basic_iosIwSt11char_traitsIwEE5rdbufEPSt15basic_streambufIwS1_E, .-_ZNSt9basic_iosIwSt11char_traitsIwEE5rdbufEPSt15basic_streambufIwS1_E

