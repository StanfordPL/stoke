  .text
  .globl _ZNKSt10moneypunctIwLb1EE10neg_formatEv
  .type _ZNKSt10moneypunctIwLb1EE10neg_formatEv, @function

#! file-offset 0xefd40
#! rip-offset  0xafd40
#! capacity    64 bytes

# Text                                     #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb1EE10neg_formatEv:  #        0xafd40  0      OPC=<label>         
  movl %edi, %edi                          #  1     0xafd40  2      OPC=movl_r32_r32    
  subl $0x8, %esp                          #  2     0xafd42  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                          #  3     0xafd45  3      OPC=addq_r64_r64    
  movl %edi, %edi                          #  4     0xafd48  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                 #  5     0xafd4a  4      OPC=movl_r32_m32    
  movl %eax, %eax                          #  6     0xafd4e  2      OPC=movl_r32_r32    
  movl 0x28(%r15,%rax,1), %eax             #  7     0xafd50  5      OPC=movl_r32_m32    
  nop                                      #  8     0xafd55  1      OPC=nop             
  nop                                      #  9     0xafd56  1      OPC=nop             
  nop                                      #  10    0xafd57  1      OPC=nop             
  andl $0xffffffe0, %eax                   #  11    0xafd58  6      OPC=andl_r32_imm32  
  nop                                      #  12    0xafd5e  1      OPC=nop             
  nop                                      #  13    0xafd5f  1      OPC=nop             
  nop                                      #  14    0xafd60  1      OPC=nop             
  addq %r15, %rax                          #  15    0xafd61  3      OPC=addq_r64_r64    
  callq %rax                               #  16    0xafd64  2      OPC=callq_r64       
  addl $0x8, %esp                          #  17    0xafd66  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                          #  18    0xafd69  3      OPC=addq_r64_r64    
  popq %r11                                #  19    0xafd6c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                  #  20    0xafd6e  7      OPC=andl_r32_imm32  
  nop                                      #  21    0xafd75  1      OPC=nop             
  nop                                      #  22    0xafd76  1      OPC=nop             
  nop                                      #  23    0xafd77  1      OPC=nop             
  nop                                      #  24    0xafd78  1      OPC=nop             
  addq %r15, %r11                          #  25    0xafd79  3      OPC=addq_r64_r64    
  jmpq %r11                                #  26    0xafd7c  3      OPC=jmpq_r64        
  nop                                      #  27    0xafd7f  1      OPC=nop             
  nop                                      #  28    0xafd80  1      OPC=nop             
  nop                                      #  29    0xafd81  1      OPC=nop             
  nop                                      #  30    0xafd82  1      OPC=nop             
  nop                                      #  31    0xafd83  1      OPC=nop             
  nop                                      #  32    0xafd84  1      OPC=nop             
  nop                                      #  33    0xafd85  1      OPC=nop             
  nop                                      #  34    0xafd86  1      OPC=nop             
  nop                                      #  35    0xafd87  1      OPC=nop             
  nop                                      #  36    0xafd88  1      OPC=nop             
  nop                                      #  37    0xafd89  1      OPC=nop             
  nop                                      #  38    0xafd8a  1      OPC=nop             
  nop                                      #  39    0xafd8b  1      OPC=nop             
  nop                                      #  40    0xafd8c  1      OPC=nop             
                                                                                        
.size _ZNKSt10moneypunctIwLb1EE10neg_formatEv, .-_ZNKSt10moneypunctIwLb1EE10neg_formatEv

