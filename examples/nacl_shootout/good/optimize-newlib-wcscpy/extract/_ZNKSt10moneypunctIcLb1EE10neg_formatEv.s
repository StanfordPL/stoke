  .text
  .globl _ZNKSt10moneypunctIcLb1EE10neg_formatEv
  .type _ZNKSt10moneypunctIcLb1EE10neg_formatEv, @function

#! file-offset 0xb6d80
#! rip-offset  0x76d80
#! capacity    64 bytes

# Text                                     #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIcLb1EE10neg_formatEv:  #        0x76d80  0      OPC=<label>         
  movl %edi, %edi                          #  1     0x76d80  2      OPC=movl_r32_r32    
  subl $0x8, %esp                          #  2     0x76d82  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                          #  3     0x76d85  3      OPC=addq_r64_r64    
  movl %edi, %edi                          #  4     0x76d88  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                 #  5     0x76d8a  4      OPC=movl_r32_m32    
  movl %eax, %eax                          #  6     0x76d8e  2      OPC=movl_r32_r32    
  movl 0x28(%r15,%rax,1), %eax             #  7     0x76d90  5      OPC=movl_r32_m32    
  nop                                      #  8     0x76d95  1      OPC=nop             
  nop                                      #  9     0x76d96  1      OPC=nop             
  nop                                      #  10    0x76d97  1      OPC=nop             
  andl $0xffffffe0, %eax                   #  11    0x76d98  6      OPC=andl_r32_imm32  
  nop                                      #  12    0x76d9e  1      OPC=nop             
  nop                                      #  13    0x76d9f  1      OPC=nop             
  nop                                      #  14    0x76da0  1      OPC=nop             
  addq %r15, %rax                          #  15    0x76da1  3      OPC=addq_r64_r64    
  callq %rax                               #  16    0x76da4  2      OPC=callq_r64       
  addl $0x8, %esp                          #  17    0x76da6  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                          #  18    0x76da9  3      OPC=addq_r64_r64    
  popq %r11                                #  19    0x76dac  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                  #  20    0x76dae  7      OPC=andl_r32_imm32  
  nop                                      #  21    0x76db5  1      OPC=nop             
  nop                                      #  22    0x76db6  1      OPC=nop             
  nop                                      #  23    0x76db7  1      OPC=nop             
  nop                                      #  24    0x76db8  1      OPC=nop             
  addq %r15, %r11                          #  25    0x76db9  3      OPC=addq_r64_r64    
  jmpq %r11                                #  26    0x76dbc  3      OPC=jmpq_r64        
  nop                                      #  27    0x76dbf  1      OPC=nop             
  nop                                      #  28    0x76dc0  1      OPC=nop             
  nop                                      #  29    0x76dc1  1      OPC=nop             
  nop                                      #  30    0x76dc2  1      OPC=nop             
  nop                                      #  31    0x76dc3  1      OPC=nop             
  nop                                      #  32    0x76dc4  1      OPC=nop             
  nop                                      #  33    0x76dc5  1      OPC=nop             
  nop                                      #  34    0x76dc6  1      OPC=nop             
  nop                                      #  35    0x76dc7  1      OPC=nop             
  nop                                      #  36    0x76dc8  1      OPC=nop             
  nop                                      #  37    0x76dc9  1      OPC=nop             
  nop                                      #  38    0x76dca  1      OPC=nop             
  nop                                      #  39    0x76dcb  1      OPC=nop             
  nop                                      #  40    0x76dcc  1      OPC=nop             
                                                                                        
.size _ZNKSt10moneypunctIcLb1EE10neg_formatEv, .-_ZNKSt10moneypunctIcLb1EE10neg_formatEv

