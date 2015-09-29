  .text
  .globl _ZNKSt10moneypunctIwLb0EE10pos_formatEv
  .type _ZNKSt10moneypunctIwLb0EE10pos_formatEv, @function

#! file-offset 0xf04a0
#! rip-offset  0xb04a0
#! capacity    64 bytes

# Text                                     #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb0EE10pos_formatEv:  #        0xb04a0  0      OPC=<label>         
  movl %edi, %edi                          #  1     0xb04a0  2      OPC=movl_r32_r32    
  subl $0x8, %esp                          #  2     0xb04a2  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                          #  3     0xb04a5  3      OPC=addq_r64_r64    
  movl %edi, %edi                          #  4     0xb04a8  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                 #  5     0xb04aa  4      OPC=movl_r32_m32    
  movl %eax, %eax                          #  6     0xb04ae  2      OPC=movl_r32_r32    
  movl 0x24(%r15,%rax,1), %eax             #  7     0xb04b0  5      OPC=movl_r32_m32    
  nop                                      #  8     0xb04b5  1      OPC=nop             
  nop                                      #  9     0xb04b6  1      OPC=nop             
  nop                                      #  10    0xb04b7  1      OPC=nop             
  andl $0xffffffe0, %eax                   #  11    0xb04b8  6      OPC=andl_r32_imm32  
  nop                                      #  12    0xb04be  1      OPC=nop             
  nop                                      #  13    0xb04bf  1      OPC=nop             
  nop                                      #  14    0xb04c0  1      OPC=nop             
  addq %r15, %rax                          #  15    0xb04c1  3      OPC=addq_r64_r64    
  callq %rax                               #  16    0xb04c4  2      OPC=callq_r64       
  addl $0x8, %esp                          #  17    0xb04c6  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                          #  18    0xb04c9  3      OPC=addq_r64_r64    
  popq %r11                                #  19    0xb04cc  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                  #  20    0xb04ce  7      OPC=andl_r32_imm32  
  nop                                      #  21    0xb04d5  1      OPC=nop             
  nop                                      #  22    0xb04d6  1      OPC=nop             
  nop                                      #  23    0xb04d7  1      OPC=nop             
  nop                                      #  24    0xb04d8  1      OPC=nop             
  addq %r15, %r11                          #  25    0xb04d9  3      OPC=addq_r64_r64    
  jmpq %r11                                #  26    0xb04dc  3      OPC=jmpq_r64        
  nop                                      #  27    0xb04df  1      OPC=nop             
  nop                                      #  28    0xb04e0  1      OPC=nop             
  nop                                      #  29    0xb04e1  1      OPC=nop             
  nop                                      #  30    0xb04e2  1      OPC=nop             
  nop                                      #  31    0xb04e3  1      OPC=nop             
  nop                                      #  32    0xb04e4  1      OPC=nop             
  nop                                      #  33    0xb04e5  1      OPC=nop             
  nop                                      #  34    0xb04e6  1      OPC=nop             
  nop                                      #  35    0xb04e7  1      OPC=nop             
  nop                                      #  36    0xb04e8  1      OPC=nop             
  nop                                      #  37    0xb04e9  1      OPC=nop             
  nop                                      #  38    0xb04ea  1      OPC=nop             
  nop                                      #  39    0xb04eb  1      OPC=nop             
  nop                                      #  40    0xb04ec  1      OPC=nop             
                                                                                        
.size _ZNKSt10moneypunctIwLb0EE10pos_formatEv, .-_ZNKSt10moneypunctIwLb0EE10pos_formatEv

