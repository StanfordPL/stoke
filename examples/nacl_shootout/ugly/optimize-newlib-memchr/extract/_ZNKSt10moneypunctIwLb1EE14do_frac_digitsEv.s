  .text
  .globl _ZNKSt10moneypunctIwLb1EE14do_frac_digitsEv
  .type _ZNKSt10moneypunctIwLb1EE14do_frac_digitsEv, @function

#! file-offset 0xf07e0
#! rip-offset  0xb07e0
#! capacity    32 bytes

# Text                                         #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb1EE14do_frac_digitsEv:  #        0xb07e0  0      OPC=<label>         
  movl %edi, %edi                              #  1     0xb07e0  2      OPC=movl_r32_r32    
  movl %edi, %edi                              #  2     0xb07e2  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                  #  3     0xb07e4  5      OPC=movl_r32_m32    
  popq %r11                                    #  4     0xb07e9  2      OPC=popq_r64_1      
  movl %eax, %eax                              #  5     0xb07eb  2      OPC=movl_r32_r32    
  movl 0x34(%r15,%rax,1), %eax                 #  6     0xb07ed  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d                      #  7     0xb07f2  7      OPC=andl_r32_imm32  
  nop                                          #  8     0xb07f9  1      OPC=nop             
  nop                                          #  9     0xb07fa  1      OPC=nop             
  nop                                          #  10    0xb07fb  1      OPC=nop             
  nop                                          #  11    0xb07fc  1      OPC=nop             
  addq %r15, %r11                              #  12    0xb07fd  3      OPC=addq_r64_r64    
  jmpq %r11                                    #  13    0xb0800  3      OPC=jmpq_r64        
  nop                                          #  14    0xb0803  1      OPC=nop             
  nop                                          #  15    0xb0804  1      OPC=nop             
  nop                                          #  16    0xb0805  1      OPC=nop             
  nop                                          #  17    0xb0806  1      OPC=nop             
                                                                                            
.size _ZNKSt10moneypunctIwLb1EE14do_frac_digitsEv, .-_ZNKSt10moneypunctIwLb1EE14do_frac_digitsEv

