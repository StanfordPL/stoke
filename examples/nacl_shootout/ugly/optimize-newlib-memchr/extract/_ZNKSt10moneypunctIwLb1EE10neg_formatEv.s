  .text
  .globl _ZNKSt10moneypunctIwLb1EE10neg_formatEv
  .type _ZNKSt10moneypunctIwLb1EE10neg_formatEv, @function

#! file-offset 0xf0760
#! rip-offset  0xb0760
#! capacity    64 bytes

# Text                                     #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb1EE10neg_formatEv:  #        0xb0760  0      OPC=<label>         
  movl %edi, %edi                          #  1     0xb0760  2      OPC=movl_r32_r32    
  subl $0x8, %esp                          #  2     0xb0762  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                          #  3     0xb0765  3      OPC=addq_r64_r64    
  movl %edi, %edi                          #  4     0xb0768  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                 #  5     0xb076a  4      OPC=movl_r32_m32    
  movl %eax, %eax                          #  6     0xb076e  2      OPC=movl_r32_r32    
  movl 0x28(%r15,%rax,1), %eax             #  7     0xb0770  5      OPC=movl_r32_m32    
  nop                                      #  8     0xb0775  1      OPC=nop             
  nop                                      #  9     0xb0776  1      OPC=nop             
  nop                                      #  10    0xb0777  1      OPC=nop             
  andl $0xffffffe0, %eax                   #  11    0xb0778  6      OPC=andl_r32_imm32  
  nop                                      #  12    0xb077e  1      OPC=nop             
  nop                                      #  13    0xb077f  1      OPC=nop             
  nop                                      #  14    0xb0780  1      OPC=nop             
  addq %r15, %rax                          #  15    0xb0781  3      OPC=addq_r64_r64    
  callq %rax                               #  16    0xb0784  2      OPC=callq_r64       
  addl $0x8, %esp                          #  17    0xb0786  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                          #  18    0xb0789  3      OPC=addq_r64_r64    
  popq %r11                                #  19    0xb078c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                  #  20    0xb078e  7      OPC=andl_r32_imm32  
  nop                                      #  21    0xb0795  1      OPC=nop             
  nop                                      #  22    0xb0796  1      OPC=nop             
  nop                                      #  23    0xb0797  1      OPC=nop             
  nop                                      #  24    0xb0798  1      OPC=nop             
  addq %r15, %r11                          #  25    0xb0799  3      OPC=addq_r64_r64    
  jmpq %r11                                #  26    0xb079c  3      OPC=jmpq_r64        
  nop                                      #  27    0xb079f  1      OPC=nop             
  nop                                      #  28    0xb07a0  1      OPC=nop             
  nop                                      #  29    0xb07a1  1      OPC=nop             
  nop                                      #  30    0xb07a2  1      OPC=nop             
  nop                                      #  31    0xb07a3  1      OPC=nop             
  nop                                      #  32    0xb07a4  1      OPC=nop             
  nop                                      #  33    0xb07a5  1      OPC=nop             
  nop                                      #  34    0xb07a6  1      OPC=nop             
  nop                                      #  35    0xb07a7  1      OPC=nop             
  nop                                      #  36    0xb07a8  1      OPC=nop             
  nop                                      #  37    0xb07a9  1      OPC=nop             
  nop                                      #  38    0xb07aa  1      OPC=nop             
  nop                                      #  39    0xb07ab  1      OPC=nop             
  nop                                      #  40    0xb07ac  1      OPC=nop             
                                                                                        
.size _ZNKSt10moneypunctIwLb1EE10neg_formatEv, .-_ZNKSt10moneypunctIwLb1EE10neg_formatEv

