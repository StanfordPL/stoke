  .text
  .globl _ZNKSt10moneypunctIcLb1EE10pos_formatEv
  .type _ZNKSt10moneypunctIcLb1EE10pos_formatEv, @function

#! file-offset 0xb6d40
#! rip-offset  0x76d40
#! capacity    64 bytes

# Text                                     #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIcLb1EE10pos_formatEv:  #        0x76d40  0      OPC=<label>         
  movl %edi, %edi                          #  1     0x76d40  2      OPC=movl_r32_r32    
  subl $0x8, %esp                          #  2     0x76d42  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                          #  3     0x76d45  3      OPC=addq_r64_r64    
  movl %edi, %edi                          #  4     0x76d48  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                 #  5     0x76d4a  4      OPC=movl_r32_m32    
  movl %eax, %eax                          #  6     0x76d4e  2      OPC=movl_r32_r32    
  movl 0x24(%r15,%rax,1), %eax             #  7     0x76d50  5      OPC=movl_r32_m32    
  nop                                      #  8     0x76d55  1      OPC=nop             
  nop                                      #  9     0x76d56  1      OPC=nop             
  nop                                      #  10    0x76d57  1      OPC=nop             
  andl $0xffffffe0, %eax                   #  11    0x76d58  6      OPC=andl_r32_imm32  
  nop                                      #  12    0x76d5e  1      OPC=nop             
  nop                                      #  13    0x76d5f  1      OPC=nop             
  nop                                      #  14    0x76d60  1      OPC=nop             
  addq %r15, %rax                          #  15    0x76d61  3      OPC=addq_r64_r64    
  callq %rax                               #  16    0x76d64  2      OPC=callq_r64       
  addl $0x8, %esp                          #  17    0x76d66  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                          #  18    0x76d69  3      OPC=addq_r64_r64    
  popq %r11                                #  19    0x76d6c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                  #  20    0x76d6e  7      OPC=andl_r32_imm32  
  nop                                      #  21    0x76d75  1      OPC=nop             
  nop                                      #  22    0x76d76  1      OPC=nop             
  nop                                      #  23    0x76d77  1      OPC=nop             
  nop                                      #  24    0x76d78  1      OPC=nop             
  addq %r15, %r11                          #  25    0x76d79  3      OPC=addq_r64_r64    
  jmpq %r11                                #  26    0x76d7c  3      OPC=jmpq_r64        
  nop                                      #  27    0x76d7f  1      OPC=nop             
  nop                                      #  28    0x76d80  1      OPC=nop             
  nop                                      #  29    0x76d81  1      OPC=nop             
  nop                                      #  30    0x76d82  1      OPC=nop             
  nop                                      #  31    0x76d83  1      OPC=nop             
  nop                                      #  32    0x76d84  1      OPC=nop             
  nop                                      #  33    0x76d85  1      OPC=nop             
  nop                                      #  34    0x76d86  1      OPC=nop             
  nop                                      #  35    0x76d87  1      OPC=nop             
  nop                                      #  36    0x76d88  1      OPC=nop             
  nop                                      #  37    0x76d89  1      OPC=nop             
  nop                                      #  38    0x76d8a  1      OPC=nop             
  nop                                      #  39    0x76d8b  1      OPC=nop             
  nop                                      #  40    0x76d8c  1      OPC=nop             
                                                                                        
.size _ZNKSt10moneypunctIcLb1EE10pos_formatEv, .-_ZNKSt10moneypunctIcLb1EE10pos_formatEv

