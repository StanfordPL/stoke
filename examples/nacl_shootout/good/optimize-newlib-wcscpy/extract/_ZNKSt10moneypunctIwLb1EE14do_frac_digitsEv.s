  .text
  .globl _ZNKSt10moneypunctIwLb1EE14do_frac_digitsEv
  .type _ZNKSt10moneypunctIwLb1EE14do_frac_digitsEv, @function

#! file-offset 0xefdc0
#! rip-offset  0xafdc0
#! capacity    32 bytes

# Text                                         #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb1EE14do_frac_digitsEv:  #        0xafdc0  0      OPC=<label>         
  movl %edi, %edi                              #  1     0xafdc0  2      OPC=movl_r32_r32    
  movl %edi, %edi                              #  2     0xafdc2  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                  #  3     0xafdc4  5      OPC=movl_r32_m32    
  popq %r11                                    #  4     0xafdc9  2      OPC=popq_r64_1      
  movl %eax, %eax                              #  5     0xafdcb  2      OPC=movl_r32_r32    
  movl 0x34(%r15,%rax,1), %eax                 #  6     0xafdcd  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d                      #  7     0xafdd2  7      OPC=andl_r32_imm32  
  nop                                          #  8     0xafdd9  1      OPC=nop             
  nop                                          #  9     0xafdda  1      OPC=nop             
  nop                                          #  10    0xafddb  1      OPC=nop             
  nop                                          #  11    0xafddc  1      OPC=nop             
  addq %r15, %r11                              #  12    0xafddd  3      OPC=addq_r64_r64    
  jmpq %r11                                    #  13    0xafde0  3      OPC=jmpq_r64        
  nop                                          #  14    0xafde3  1      OPC=nop             
  nop                                          #  15    0xafde4  1      OPC=nop             
  nop                                          #  16    0xafde5  1      OPC=nop             
  nop                                          #  17    0xafde6  1      OPC=nop             
                                                                                            
.size _ZNKSt10moneypunctIwLb1EE14do_frac_digitsEv, .-_ZNKSt10moneypunctIwLb1EE14do_frac_digitsEv

