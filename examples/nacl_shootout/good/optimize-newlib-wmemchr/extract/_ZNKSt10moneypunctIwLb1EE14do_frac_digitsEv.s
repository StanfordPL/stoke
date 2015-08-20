  .text
  .globl _ZNKSt10moneypunctIwLb1EE14do_frac_digitsEv
  .type _ZNKSt10moneypunctIwLb1EE14do_frac_digitsEv, @function

#! file-offset 0xf00c0
#! rip-offset  0xb00c0
#! capacity    32 bytes

# Text                                         #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb1EE14do_frac_digitsEv:  #        0xb00c0  0      OPC=<label>         
  movl %edi, %edi                              #  1     0xb00c0  2      OPC=movl_r32_r32    
  movl %edi, %edi                              #  2     0xb00c2  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                  #  3     0xb00c4  5      OPC=movl_r32_m32    
  popq %r11                                    #  4     0xb00c9  2      OPC=popq_r64_1      
  movl %eax, %eax                              #  5     0xb00cb  2      OPC=movl_r32_r32    
  movl 0x34(%r15,%rax,1), %eax                 #  6     0xb00cd  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d                      #  7     0xb00d2  7      OPC=andl_r32_imm32  
  nop                                          #  8     0xb00d9  1      OPC=nop             
  nop                                          #  9     0xb00da  1      OPC=nop             
  nop                                          #  10    0xb00db  1      OPC=nop             
  nop                                          #  11    0xb00dc  1      OPC=nop             
  addq %r15, %r11                              #  12    0xb00dd  3      OPC=addq_r64_r64    
  jmpq %r11                                    #  13    0xb00e0  3      OPC=jmpq_r64        
  nop                                          #  14    0xb00e3  1      OPC=nop             
  nop                                          #  15    0xb00e4  1      OPC=nop             
  nop                                          #  16    0xb00e5  1      OPC=nop             
  nop                                          #  17    0xb00e6  1      OPC=nop             
                                                                                            
.size _ZNKSt10moneypunctIwLb1EE14do_frac_digitsEv, .-_ZNKSt10moneypunctIwLb1EE14do_frac_digitsEv

