  .text
  .globl _ZNKSt10moneypunctIwLb0EE10neg_formatEv
  .type _ZNKSt10moneypunctIwLb0EE10neg_formatEv, @function

#! file-offset 0xf04e0
#! rip-offset  0xb04e0
#! capacity    64 bytes

# Text                                     #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb0EE10neg_formatEv:  #        0xb04e0  0      OPC=<label>         
  movl %edi, %edi                          #  1     0xb04e0  2      OPC=movl_r32_r32    
  subl $0x8, %esp                          #  2     0xb04e2  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                          #  3     0xb04e5  3      OPC=addq_r64_r64    
  movl %edi, %edi                          #  4     0xb04e8  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                 #  5     0xb04ea  4      OPC=movl_r32_m32    
  movl %eax, %eax                          #  6     0xb04ee  2      OPC=movl_r32_r32    
  movl 0x28(%r15,%rax,1), %eax             #  7     0xb04f0  5      OPC=movl_r32_m32    
  nop                                      #  8     0xb04f5  1      OPC=nop             
  nop                                      #  9     0xb04f6  1      OPC=nop             
  nop                                      #  10    0xb04f7  1      OPC=nop             
  andl $0xffffffe0, %eax                   #  11    0xb04f8  6      OPC=andl_r32_imm32  
  nop                                      #  12    0xb04fe  1      OPC=nop             
  nop                                      #  13    0xb04ff  1      OPC=nop             
  nop                                      #  14    0xb0500  1      OPC=nop             
  addq %r15, %rax                          #  15    0xb0501  3      OPC=addq_r64_r64    
  callq %rax                               #  16    0xb0504  2      OPC=callq_r64       
  addl $0x8, %esp                          #  17    0xb0506  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                          #  18    0xb0509  3      OPC=addq_r64_r64    
  popq %r11                                #  19    0xb050c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                  #  20    0xb050e  7      OPC=andl_r32_imm32  
  nop                                      #  21    0xb0515  1      OPC=nop             
  nop                                      #  22    0xb0516  1      OPC=nop             
  nop                                      #  23    0xb0517  1      OPC=nop             
  nop                                      #  24    0xb0518  1      OPC=nop             
  addq %r15, %r11                          #  25    0xb0519  3      OPC=addq_r64_r64    
  jmpq %r11                                #  26    0xb051c  3      OPC=jmpq_r64        
  nop                                      #  27    0xb051f  1      OPC=nop             
  nop                                      #  28    0xb0520  1      OPC=nop             
  nop                                      #  29    0xb0521  1      OPC=nop             
  nop                                      #  30    0xb0522  1      OPC=nop             
  nop                                      #  31    0xb0523  1      OPC=nop             
  nop                                      #  32    0xb0524  1      OPC=nop             
  nop                                      #  33    0xb0525  1      OPC=nop             
  nop                                      #  34    0xb0526  1      OPC=nop             
  nop                                      #  35    0xb0527  1      OPC=nop             
  nop                                      #  36    0xb0528  1      OPC=nop             
  nop                                      #  37    0xb0529  1      OPC=nop             
  nop                                      #  38    0xb052a  1      OPC=nop             
  nop                                      #  39    0xb052b  1      OPC=nop             
  nop                                      #  40    0xb052c  1      OPC=nop             
                                                                                        
.size _ZNKSt10moneypunctIwLb0EE10neg_formatEv, .-_ZNKSt10moneypunctIwLb0EE10neg_formatEv

