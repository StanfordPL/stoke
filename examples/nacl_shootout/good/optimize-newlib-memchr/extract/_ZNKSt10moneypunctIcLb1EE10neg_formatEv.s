  .text
  .globl _ZNKSt10moneypunctIcLb1EE10neg_formatEv
  .type _ZNKSt10moneypunctIcLb1EE10neg_formatEv, @function

#! file-offset 0xb77a0
#! rip-offset  0x777a0
#! capacity    64 bytes

# Text                                     #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIcLb1EE10neg_formatEv:  #        0x777a0  0      OPC=<label>         
  movl %edi, %edi                          #  1     0x777a0  2      OPC=movl_r32_r32    
  subl $0x8, %esp                          #  2     0x777a2  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                          #  3     0x777a5  3      OPC=addq_r64_r64    
  movl %edi, %edi                          #  4     0x777a8  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                 #  5     0x777aa  4      OPC=movl_r32_m32    
  movl %eax, %eax                          #  6     0x777ae  2      OPC=movl_r32_r32    
  movl 0x28(%r15,%rax,1), %eax             #  7     0x777b0  5      OPC=movl_r32_m32    
  nop                                      #  8     0x777b5  1      OPC=nop             
  nop                                      #  9     0x777b6  1      OPC=nop             
  nop                                      #  10    0x777b7  1      OPC=nop             
  andl $0xffffffe0, %eax                   #  11    0x777b8  6      OPC=andl_r32_imm32  
  nop                                      #  12    0x777be  1      OPC=nop             
  nop                                      #  13    0x777bf  1      OPC=nop             
  nop                                      #  14    0x777c0  1      OPC=nop             
  addq %r15, %rax                          #  15    0x777c1  3      OPC=addq_r64_r64    
  callq %rax                               #  16    0x777c4  2      OPC=callq_r64       
  addl $0x8, %esp                          #  17    0x777c6  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                          #  18    0x777c9  3      OPC=addq_r64_r64    
  popq %r11                                #  19    0x777cc  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                  #  20    0x777ce  7      OPC=andl_r32_imm32  
  nop                                      #  21    0x777d5  1      OPC=nop             
  nop                                      #  22    0x777d6  1      OPC=nop             
  nop                                      #  23    0x777d7  1      OPC=nop             
  nop                                      #  24    0x777d8  1      OPC=nop             
  addq %r15, %r11                          #  25    0x777d9  3      OPC=addq_r64_r64    
  jmpq %r11                                #  26    0x777dc  3      OPC=jmpq_r64        
  nop                                      #  27    0x777df  1      OPC=nop             
  nop                                      #  28    0x777e0  1      OPC=nop             
  nop                                      #  29    0x777e1  1      OPC=nop             
  nop                                      #  30    0x777e2  1      OPC=nop             
  nop                                      #  31    0x777e3  1      OPC=nop             
  nop                                      #  32    0x777e4  1      OPC=nop             
  nop                                      #  33    0x777e5  1      OPC=nop             
  nop                                      #  34    0x777e6  1      OPC=nop             
  nop                                      #  35    0x777e7  1      OPC=nop             
  nop                                      #  36    0x777e8  1      OPC=nop             
  nop                                      #  37    0x777e9  1      OPC=nop             
  nop                                      #  38    0x777ea  1      OPC=nop             
  nop                                      #  39    0x777eb  1      OPC=nop             
  nop                                      #  40    0x777ec  1      OPC=nop             
                                                                                        
.size _ZNKSt10moneypunctIcLb1EE10neg_formatEv, .-_ZNKSt10moneypunctIcLb1EE10neg_formatEv

