  .text
  .globl _ZNKSt7collateIwE10_M_compareEPKwS2_
  .type _ZNKSt7collateIwE10_M_compareEPKwS2_, @function

#! file-offset 0x11bb20
#! rip-offset  0xdbb20
#! capacity    64 bytes

# Text                                  #  Line  RIP      Bytes  Opcode              
._ZNKSt7collateIwE10_M_compareEPKwS2_:  #        0xdbb20  0      OPC=<label>         
  subl $0x8, %esp                       #  1     0xdbb20  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                       #  2     0xdbb23  3      OPC=addq_r64_r64    
  movl %esi, %edi                       #  3     0xdbb26  2      OPC=movl_r32_r32    
  movl %edx, %esi                       #  4     0xdbb28  2      OPC=movl_r32_r32    
  xchgw %ax, %ax                        #  5     0xdbb2a  2      OPC=xchgw_ax_r16    
  nop                                   #  6     0xdbb2c  1      OPC=nop             
  nop                                   #  7     0xdbb2d  1      OPC=nop             
  nop                                   #  8     0xdbb2e  1      OPC=nop             
  nop                                   #  9     0xdbb2f  1      OPC=nop             
  nop                                   #  10    0xdbb30  1      OPC=nop             
  nop                                   #  11    0xdbb31  1      OPC=nop             
  nop                                   #  12    0xdbb32  1      OPC=nop             
  nop                                   #  13    0xdbb33  1      OPC=nop             
  nop                                   #  14    0xdbb34  1      OPC=nop             
  nop                                   #  15    0xdbb35  1      OPC=nop             
  nop                                   #  16    0xdbb36  1      OPC=nop             
  nop                                   #  17    0xdbb37  1      OPC=nop             
  nop                                   #  18    0xdbb38  1      OPC=nop             
  nop                                   #  19    0xdbb39  1      OPC=nop             
  nop                                   #  20    0xdbb3a  1      OPC=nop             
  callq .wcscoll                        #  21    0xdbb3b  5      OPC=callq_label     
  movl %eax, %edx                       #  22    0xdbb40  2      OPC=movl_r32_r32    
  xorl %eax, %eax                       #  23    0xdbb42  2      OPC=xorl_r32_r32    
  testl %edx, %edx                      #  24    0xdbb44  2      OPC=testl_r32_r32   
  setne %al                             #  25    0xdbb46  3      OPC=setne_r8        
  addl $0x8, %esp                       #  26    0xdbb49  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                       #  27    0xdbb4c  3      OPC=addq_r64_r64    
  sarl $0x1e, %edx                      #  28    0xdbb4f  3      OPC=sarl_r32_imm8   
  popq %r11                             #  29    0xdbb52  2      OPC=popq_r64_1      
  orl %edx, %eax                        #  30    0xdbb54  2      OPC=orl_r32_r32     
  andl $0xffffffe0, %r11d               #  31    0xdbb56  7      OPC=andl_r32_imm32  
  nop                                   #  32    0xdbb5d  1      OPC=nop             
  nop                                   #  33    0xdbb5e  1      OPC=nop             
  nop                                   #  34    0xdbb5f  1      OPC=nop             
  nop                                   #  35    0xdbb60  1      OPC=nop             
  addq %r15, %r11                       #  36    0xdbb61  3      OPC=addq_r64_r64    
  jmpq %r11                             #  37    0xdbb64  3      OPC=jmpq_r64        
                                                                                     
.size _ZNKSt7collateIwE10_M_compareEPKwS2_, .-_ZNKSt7collateIwE10_M_compareEPKwS2_

