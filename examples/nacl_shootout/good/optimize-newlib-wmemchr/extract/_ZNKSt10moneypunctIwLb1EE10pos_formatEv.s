  .text
  .globl _ZNKSt10moneypunctIwLb1EE10pos_formatEv
  .type _ZNKSt10moneypunctIwLb1EE10pos_formatEv, @function

#! file-offset 0xf0000
#! rip-offset  0xb0000
#! capacity    64 bytes

# Text                                     #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb1EE10pos_formatEv:  #        0xb0000  0      OPC=<label>         
  movl %edi, %edi                          #  1     0xb0000  2      OPC=movl_r32_r32    
  subl $0x8, %esp                          #  2     0xb0002  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                          #  3     0xb0005  3      OPC=addq_r64_r64    
  movl %edi, %edi                          #  4     0xb0008  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                 #  5     0xb000a  4      OPC=movl_r32_m32    
  movl %eax, %eax                          #  6     0xb000e  2      OPC=movl_r32_r32    
  movl 0x24(%r15,%rax,1), %eax             #  7     0xb0010  5      OPC=movl_r32_m32    
  nop                                      #  8     0xb0015  1      OPC=nop             
  nop                                      #  9     0xb0016  1      OPC=nop             
  nop                                      #  10    0xb0017  1      OPC=nop             
  andl $0xffffffe0, %eax                   #  11    0xb0018  6      OPC=andl_r32_imm32  
  nop                                      #  12    0xb001e  1      OPC=nop             
  nop                                      #  13    0xb001f  1      OPC=nop             
  nop                                      #  14    0xb0020  1      OPC=nop             
  addq %r15, %rax                          #  15    0xb0021  3      OPC=addq_r64_r64    
  callq %rax                               #  16    0xb0024  2      OPC=callq_r64       
  addl $0x8, %esp                          #  17    0xb0026  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                          #  18    0xb0029  3      OPC=addq_r64_r64    
  popq %r11                                #  19    0xb002c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                  #  20    0xb002e  7      OPC=andl_r32_imm32  
  nop                                      #  21    0xb0035  1      OPC=nop             
  nop                                      #  22    0xb0036  1      OPC=nop             
  nop                                      #  23    0xb0037  1      OPC=nop             
  nop                                      #  24    0xb0038  1      OPC=nop             
  addq %r15, %r11                          #  25    0xb0039  3      OPC=addq_r64_r64    
  jmpq %r11                                #  26    0xb003c  3      OPC=jmpq_r64        
  nop                                      #  27    0xb003f  1      OPC=nop             
  nop                                      #  28    0xb0040  1      OPC=nop             
  nop                                      #  29    0xb0041  1      OPC=nop             
  nop                                      #  30    0xb0042  1      OPC=nop             
  nop                                      #  31    0xb0043  1      OPC=nop             
  nop                                      #  32    0xb0044  1      OPC=nop             
  nop                                      #  33    0xb0045  1      OPC=nop             
  nop                                      #  34    0xb0046  1      OPC=nop             
  nop                                      #  35    0xb0047  1      OPC=nop             
  nop                                      #  36    0xb0048  1      OPC=nop             
  nop                                      #  37    0xb0049  1      OPC=nop             
  nop                                      #  38    0xb004a  1      OPC=nop             
  nop                                      #  39    0xb004b  1      OPC=nop             
  nop                                      #  40    0xb004c  1      OPC=nop             
                                                                                        
.size _ZNKSt10moneypunctIwLb1EE10pos_formatEv, .-_ZNKSt10moneypunctIwLb1EE10pos_formatEv

