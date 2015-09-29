  .text
  .globl _ZNKSt10moneypunctIwLb0EE14do_frac_digitsEv
  .type _ZNKSt10moneypunctIwLb0EE14do_frac_digitsEv, @function

#! file-offset 0xf0560
#! rip-offset  0xb0560
#! capacity    32 bytes

# Text                                         #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb0EE14do_frac_digitsEv:  #        0xb0560  0      OPC=<label>         
  movl %edi, %edi                              #  1     0xb0560  2      OPC=movl_r32_r32    
  movl %edi, %edi                              #  2     0xb0562  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                  #  3     0xb0564  5      OPC=movl_r32_m32    
  popq %r11                                    #  4     0xb0569  2      OPC=popq_r64_1      
  movl %eax, %eax                              #  5     0xb056b  2      OPC=movl_r32_r32    
  movl 0x34(%r15,%rax,1), %eax                 #  6     0xb056d  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d                      #  7     0xb0572  7      OPC=andl_r32_imm32  
  nop                                          #  8     0xb0579  1      OPC=nop             
  nop                                          #  9     0xb057a  1      OPC=nop             
  nop                                          #  10    0xb057b  1      OPC=nop             
  nop                                          #  11    0xb057c  1      OPC=nop             
  addq %r15, %r11                              #  12    0xb057d  3      OPC=addq_r64_r64    
  jmpq %r11                                    #  13    0xb0580  3      OPC=jmpq_r64        
  nop                                          #  14    0xb0583  1      OPC=nop             
  nop                                          #  15    0xb0584  1      OPC=nop             
  nop                                          #  16    0xb0585  1      OPC=nop             
  nop                                          #  17    0xb0586  1      OPC=nop             
                                                                                            
.size _ZNKSt10moneypunctIwLb0EE14do_frac_digitsEv, .-_ZNKSt10moneypunctIwLb0EE14do_frac_digitsEv

