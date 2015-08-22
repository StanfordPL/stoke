  .text
  .globl _ZNKSt10moneypunctIcLb1EE10pos_formatEv
  .type _ZNKSt10moneypunctIcLb1EE10pos_formatEv, @function

#! file-offset 0xb7760
#! rip-offset  0x77760
#! capacity    64 bytes

# Text                                     #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIcLb1EE10pos_formatEv:  #        0x77760  0      OPC=<label>         
  movl %edi, %edi                          #  1     0x77760  2      OPC=movl_r32_r32    
  subl $0x8, %esp                          #  2     0x77762  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                          #  3     0x77765  3      OPC=addq_r64_r64    
  movl %edi, %edi                          #  4     0x77768  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                 #  5     0x7776a  4      OPC=movl_r32_m32    
  movl %eax, %eax                          #  6     0x7776e  2      OPC=movl_r32_r32    
  movl 0x24(%r15,%rax,1), %eax             #  7     0x77770  5      OPC=movl_r32_m32    
  nop                                      #  8     0x77775  1      OPC=nop             
  nop                                      #  9     0x77776  1      OPC=nop             
  nop                                      #  10    0x77777  1      OPC=nop             
  andl $0xffffffe0, %eax                   #  11    0x77778  6      OPC=andl_r32_imm32  
  nop                                      #  12    0x7777e  1      OPC=nop             
  nop                                      #  13    0x7777f  1      OPC=nop             
  nop                                      #  14    0x77780  1      OPC=nop             
  addq %r15, %rax                          #  15    0x77781  3      OPC=addq_r64_r64    
  callq %rax                               #  16    0x77784  2      OPC=callq_r64       
  addl $0x8, %esp                          #  17    0x77786  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                          #  18    0x77789  3      OPC=addq_r64_r64    
  popq %r11                                #  19    0x7778c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                  #  20    0x7778e  7      OPC=andl_r32_imm32  
  nop                                      #  21    0x77795  1      OPC=nop             
  nop                                      #  22    0x77796  1      OPC=nop             
  nop                                      #  23    0x77797  1      OPC=nop             
  nop                                      #  24    0x77798  1      OPC=nop             
  addq %r15, %r11                          #  25    0x77799  3      OPC=addq_r64_r64    
  jmpq %r11                                #  26    0x7779c  3      OPC=jmpq_r64        
  nop                                      #  27    0x7779f  1      OPC=nop             
  nop                                      #  28    0x777a0  1      OPC=nop             
  nop                                      #  29    0x777a1  1      OPC=nop             
  nop                                      #  30    0x777a2  1      OPC=nop             
  nop                                      #  31    0x777a3  1      OPC=nop             
  nop                                      #  32    0x777a4  1      OPC=nop             
  nop                                      #  33    0x777a5  1      OPC=nop             
  nop                                      #  34    0x777a6  1      OPC=nop             
  nop                                      #  35    0x777a7  1      OPC=nop             
  nop                                      #  36    0x777a8  1      OPC=nop             
  nop                                      #  37    0x777a9  1      OPC=nop             
  nop                                      #  38    0x777aa  1      OPC=nop             
  nop                                      #  39    0x777ab  1      OPC=nop             
  nop                                      #  40    0x777ac  1      OPC=nop             
                                                                                        
.size _ZNKSt10moneypunctIcLb1EE10pos_formatEv, .-_ZNKSt10moneypunctIcLb1EE10pos_formatEv

