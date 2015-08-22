  .text
  .globl _ZNKSt10moneypunctIcLb0EE10pos_formatEv
  .type _ZNKSt10moneypunctIcLb0EE10pos_formatEv, @function

#! file-offset 0xb74e0
#! rip-offset  0x774e0
#! capacity    64 bytes

# Text                                     #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIcLb0EE10pos_formatEv:  #        0x774e0  0      OPC=<label>         
  movl %edi, %edi                          #  1     0x774e0  2      OPC=movl_r32_r32    
  subl $0x8, %esp                          #  2     0x774e2  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                          #  3     0x774e5  3      OPC=addq_r64_r64    
  movl %edi, %edi                          #  4     0x774e8  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                 #  5     0x774ea  4      OPC=movl_r32_m32    
  movl %eax, %eax                          #  6     0x774ee  2      OPC=movl_r32_r32    
  movl 0x24(%r15,%rax,1), %eax             #  7     0x774f0  5      OPC=movl_r32_m32    
  nop                                      #  8     0x774f5  1      OPC=nop             
  nop                                      #  9     0x774f6  1      OPC=nop             
  nop                                      #  10    0x774f7  1      OPC=nop             
  andl $0xffffffe0, %eax                   #  11    0x774f8  6      OPC=andl_r32_imm32  
  nop                                      #  12    0x774fe  1      OPC=nop             
  nop                                      #  13    0x774ff  1      OPC=nop             
  nop                                      #  14    0x77500  1      OPC=nop             
  addq %r15, %rax                          #  15    0x77501  3      OPC=addq_r64_r64    
  callq %rax                               #  16    0x77504  2      OPC=callq_r64       
  addl $0x8, %esp                          #  17    0x77506  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                          #  18    0x77509  3      OPC=addq_r64_r64    
  popq %r11                                #  19    0x7750c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                  #  20    0x7750e  7      OPC=andl_r32_imm32  
  nop                                      #  21    0x77515  1      OPC=nop             
  nop                                      #  22    0x77516  1      OPC=nop             
  nop                                      #  23    0x77517  1      OPC=nop             
  nop                                      #  24    0x77518  1      OPC=nop             
  addq %r15, %r11                          #  25    0x77519  3      OPC=addq_r64_r64    
  jmpq %r11                                #  26    0x7751c  3      OPC=jmpq_r64        
  nop                                      #  27    0x7751f  1      OPC=nop             
  nop                                      #  28    0x77520  1      OPC=nop             
  nop                                      #  29    0x77521  1      OPC=nop             
  nop                                      #  30    0x77522  1      OPC=nop             
  nop                                      #  31    0x77523  1      OPC=nop             
  nop                                      #  32    0x77524  1      OPC=nop             
  nop                                      #  33    0x77525  1      OPC=nop             
  nop                                      #  34    0x77526  1      OPC=nop             
  nop                                      #  35    0x77527  1      OPC=nop             
  nop                                      #  36    0x77528  1      OPC=nop             
  nop                                      #  37    0x77529  1      OPC=nop             
  nop                                      #  38    0x7752a  1      OPC=nop             
  nop                                      #  39    0x7752b  1      OPC=nop             
  nop                                      #  40    0x7752c  1      OPC=nop             
                                                                                        
.size _ZNKSt10moneypunctIcLb0EE10pos_formatEv, .-_ZNKSt10moneypunctIcLb0EE10pos_formatEv

