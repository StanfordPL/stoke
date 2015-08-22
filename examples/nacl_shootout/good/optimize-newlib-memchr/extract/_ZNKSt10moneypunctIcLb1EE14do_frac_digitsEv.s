  .text
  .globl _ZNKSt10moneypunctIcLb1EE14do_frac_digitsEv
  .type _ZNKSt10moneypunctIcLb1EE14do_frac_digitsEv, @function

#! file-offset 0xb7820
#! rip-offset  0x77820
#! capacity    32 bytes

# Text                                         #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIcLb1EE14do_frac_digitsEv:  #        0x77820  0      OPC=<label>         
  movl %edi, %edi                              #  1     0x77820  2      OPC=movl_r32_r32    
  movl %edi, %edi                              #  2     0x77822  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                  #  3     0x77824  5      OPC=movl_r32_m32    
  popq %r11                                    #  4     0x77829  2      OPC=popq_r64_1      
  movl %eax, %eax                              #  5     0x7782b  2      OPC=movl_r32_r32    
  movl 0x2c(%r15,%rax,1), %eax                 #  6     0x7782d  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d                      #  7     0x77832  7      OPC=andl_r32_imm32  
  nop                                          #  8     0x77839  1      OPC=nop             
  nop                                          #  9     0x7783a  1      OPC=nop             
  nop                                          #  10    0x7783b  1      OPC=nop             
  nop                                          #  11    0x7783c  1      OPC=nop             
  addq %r15, %r11                              #  12    0x7783d  3      OPC=addq_r64_r64    
  jmpq %r11                                    #  13    0x77840  3      OPC=jmpq_r64        
  nop                                          #  14    0x77843  1      OPC=nop             
  nop                                          #  15    0x77844  1      OPC=nop             
  nop                                          #  16    0x77845  1      OPC=nop             
  nop                                          #  17    0x77846  1      OPC=nop             
                                                                                            
.size _ZNKSt10moneypunctIcLb1EE14do_frac_digitsEv, .-_ZNKSt10moneypunctIcLb1EE14do_frac_digitsEv

