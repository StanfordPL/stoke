  .text
  .globl _ZNSolsEPFRSt9basic_iosIcSt11char_traitsIcEES3_E
  .type _ZNSolsEPFRSt9basic_iosIcSt11char_traitsIcEES3_E, @function

#! file-offset 0xdd5c0
#! rip-offset  0x9d5c0
#! capacity    64 bytes

# Text                                              #  Line  RIP      Bytes  Opcode              
._ZNSolsEPFRSt9basic_iosIcSt11char_traitsIcEES3_E:  #        0x9d5c0  0      OPC=<label>         
  pushq %rbx                                        #  1     0x9d5c0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                   #  2     0x9d5c1  2      OPC=movl_r32_r32    
  movl %esi, %esi                                   #  3     0x9d5c3  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                   #  4     0x9d5c5  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                          #  5     0x9d5c7  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                   #  6     0x9d5cb  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                   #  7     0x9d5ce  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edi                          #  8     0x9d5d0  4      OPC=movl_r32_m32    
  addl %ebx, %edi                                   #  9     0x9d5d4  2      OPC=addl_r32_r32    
  xchgw %ax, %ax                                    #  10    0x9d5d6  2      OPC=xchgw_ax_r16    
  andl $0xffffffe0, %esi                            #  11    0x9d5d8  6      OPC=andl_r32_imm32  
  nop                                               #  12    0x9d5de  1      OPC=nop             
  nop                                               #  13    0x9d5df  1      OPC=nop             
  nop                                               #  14    0x9d5e0  1      OPC=nop             
  addq %r15, %rsi                                   #  15    0x9d5e1  3      OPC=addq_r64_r64    
  callq %rsi                                        #  16    0x9d5e4  2      OPC=callq_r64       
  movl %ebx, %eax                                   #  17    0x9d5e6  2      OPC=movl_r32_r32    
  popq %rbx                                         #  18    0x9d5e8  1      OPC=popq_r64_1      
  popq %r11                                         #  19    0x9d5e9  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                           #  20    0x9d5eb  7      OPC=andl_r32_imm32  
  nop                                               #  21    0x9d5f2  1      OPC=nop             
  nop                                               #  22    0x9d5f3  1      OPC=nop             
  nop                                               #  23    0x9d5f4  1      OPC=nop             
  nop                                               #  24    0x9d5f5  1      OPC=nop             
  addq %r15, %r11                                   #  25    0x9d5f6  3      OPC=addq_r64_r64    
  jmpq %r11                                         #  26    0x9d5f9  3      OPC=jmpq_r64        
  nop                                               #  27    0x9d5fc  1      OPC=nop             
  nop                                               #  28    0x9d5fd  1      OPC=nop             
  nop                                               #  29    0x9d5fe  1      OPC=nop             
  nop                                               #  30    0x9d5ff  1      OPC=nop             
  nop                                               #  31    0x9d600  1      OPC=nop             
  nop                                               #  32    0x9d601  1      OPC=nop             
  nop                                               #  33    0x9d602  1      OPC=nop             
  nop                                               #  34    0x9d603  1      OPC=nop             
  nop                                               #  35    0x9d604  1      OPC=nop             
  nop                                               #  36    0x9d605  1      OPC=nop             
  nop                                               #  37    0x9d606  1      OPC=nop             
  nop                                               #  38    0x9d607  1      OPC=nop             
  nop                                               #  39    0x9d608  1      OPC=nop             
  nop                                               #  40    0x9d609  1      OPC=nop             
  nop                                               #  41    0x9d60a  1      OPC=nop             
  nop                                               #  42    0x9d60b  1      OPC=nop             
  nop                                               #  43    0x9d60c  1      OPC=nop             
                                                                                                 
.size _ZNSolsEPFRSt9basic_iosIcSt11char_traitsIcEES3_E, .-_ZNSolsEPFRSt9basic_iosIcSt11char_traitsIcEES3_E

