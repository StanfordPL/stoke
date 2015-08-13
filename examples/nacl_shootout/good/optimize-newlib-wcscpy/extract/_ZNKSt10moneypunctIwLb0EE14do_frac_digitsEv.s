  .text
  .globl _ZNKSt10moneypunctIwLb0EE14do_frac_digitsEv
  .type _ZNKSt10moneypunctIwLb0EE14do_frac_digitsEv, @function

#! file-offset 0xefb40
#! rip-offset  0xafb40
#! capacity    32 bytes

# Text                                         #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb0EE14do_frac_digitsEv:  #        0xafb40  0      OPC=<label>         
  movl %edi, %edi                              #  1     0xafb40  2      OPC=movl_r32_r32    
  movl %edi, %edi                              #  2     0xafb42  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                  #  3     0xafb44  5      OPC=movl_r32_m32    
  popq %r11                                    #  4     0xafb49  2      OPC=popq_r64_1      
  movl %eax, %eax                              #  5     0xafb4b  2      OPC=movl_r32_r32    
  movl 0x34(%r15,%rax,1), %eax                 #  6     0xafb4d  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d                      #  7     0xafb52  7      OPC=andl_r32_imm32  
  nop                                          #  8     0xafb59  1      OPC=nop             
  nop                                          #  9     0xafb5a  1      OPC=nop             
  nop                                          #  10    0xafb5b  1      OPC=nop             
  nop                                          #  11    0xafb5c  1      OPC=nop             
  addq %r15, %r11                              #  12    0xafb5d  3      OPC=addq_r64_r64    
  jmpq %r11                                    #  13    0xafb60  3      OPC=jmpq_r64        
  nop                                          #  14    0xafb63  1      OPC=nop             
  nop                                          #  15    0xafb64  1      OPC=nop             
  nop                                          #  16    0xafb65  1      OPC=nop             
  nop                                          #  17    0xafb66  1      OPC=nop             
                                                                                            
.size _ZNKSt10moneypunctIwLb0EE14do_frac_digitsEv, .-_ZNKSt10moneypunctIwLb0EE14do_frac_digitsEv

