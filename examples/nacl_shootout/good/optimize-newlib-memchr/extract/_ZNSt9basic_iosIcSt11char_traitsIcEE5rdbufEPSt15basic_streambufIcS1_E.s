  .text
  .globl _ZNSt9basic_iosIcSt11char_traitsIcEE5rdbufEPSt15basic_streambufIcS1_E
  .type _ZNSt9basic_iosIcSt11char_traitsIcEE5rdbufEPSt15basic_streambufIcS1_E, @function

#! file-offset 0xa62a0
#! rip-offset  0x662a0
#! capacity    64 bytes

# Text                                                                   #  Line  RIP      Bytes  Opcode              
._ZNSt9basic_iosIcSt11char_traitsIcEE5rdbufEPSt15basic_streambufIcS1_E:  #        0x662a0  0      OPC=<label>         
  movl %edi, %edi                                                        #  1     0x662a0  2      OPC=movl_r32_r32    
  pushq %rbx                                                             #  2     0x662a2  1      OPC=pushq_r64_1     
  movl %edi, %edi                                                        #  3     0x662a3  2      OPC=movl_r32_r32    
  movl 0x78(%r15,%rdi,1), %ebx                                           #  4     0x662a5  5      OPC=movl_r32_m32    
  movl %edi, %edi                                                        #  5     0x662aa  2      OPC=movl_r32_r32    
  movl %esi, 0x78(%r15,%rdi,1)                                           #  6     0x662ac  5      OPC=movl_m32_r32    
  xorl %esi, %esi                                                        #  7     0x662b1  2      OPC=xorl_r32_r32    
  nop                                                                    #  8     0x662b3  1      OPC=nop             
  nop                                                                    #  9     0x662b4  1      OPC=nop             
  nop                                                                    #  10    0x662b5  1      OPC=nop             
  nop                                                                    #  11    0x662b6  1      OPC=nop             
  nop                                                                    #  12    0x662b7  1      OPC=nop             
  nop                                                                    #  13    0x662b8  1      OPC=nop             
  nop                                                                    #  14    0x662b9  1      OPC=nop             
  nop                                                                    #  15    0x662ba  1      OPC=nop             
  callq ._ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate     #  16    0x662bb  5      OPC=callq_label     
  movl %ebx, %eax                                                        #  17    0x662c0  2      OPC=movl_r32_r32    
  popq %rbx                                                              #  18    0x662c2  1      OPC=popq_r64_1      
  popq %r11                                                              #  19    0x662c3  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                #  20    0x662c5  7      OPC=andl_r32_imm32  
  nop                                                                    #  21    0x662cc  1      OPC=nop             
  nop                                                                    #  22    0x662cd  1      OPC=nop             
  nop                                                                    #  23    0x662ce  1      OPC=nop             
  nop                                                                    #  24    0x662cf  1      OPC=nop             
  addq %r15, %r11                                                        #  25    0x662d0  3      OPC=addq_r64_r64    
  jmpq %r11                                                              #  26    0x662d3  3      OPC=jmpq_r64        
  nop                                                                    #  27    0x662d6  1      OPC=nop             
  nop                                                                    #  28    0x662d7  1      OPC=nop             
  nop                                                                    #  29    0x662d8  1      OPC=nop             
  nop                                                                    #  30    0x662d9  1      OPC=nop             
  nop                                                                    #  31    0x662da  1      OPC=nop             
  nop                                                                    #  32    0x662db  1      OPC=nop             
  nop                                                                    #  33    0x662dc  1      OPC=nop             
  nop                                                                    #  34    0x662dd  1      OPC=nop             
  nop                                                                    #  35    0x662de  1      OPC=nop             
  nop                                                                    #  36    0x662df  1      OPC=nop             
  nop                                                                    #  37    0x662e0  1      OPC=nop             
  nop                                                                    #  38    0x662e1  1      OPC=nop             
  nop                                                                    #  39    0x662e2  1      OPC=nop             
  nop                                                                    #  40    0x662e3  1      OPC=nop             
  nop                                                                    #  41    0x662e4  1      OPC=nop             
  nop                                                                    #  42    0x662e5  1      OPC=nop             
  nop                                                                    #  43    0x662e6  1      OPC=nop             
                                                                                                                      
.size _ZNSt9basic_iosIcSt11char_traitsIcEE5rdbufEPSt15basic_streambufIcS1_E, .-_ZNSt9basic_iosIcSt11char_traitsIcEE5rdbufEPSt15basic_streambufIcS1_E

