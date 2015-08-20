  .text
  .globl _ZNKSt10moneypunctIwLb0EE10neg_formatEv
  .type _ZNKSt10moneypunctIwLb0EE10neg_formatEv, @function

#! file-offset 0xefdc0
#! rip-offset  0xafdc0
#! capacity    64 bytes

# Text                                     #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb0EE10neg_formatEv:  #        0xafdc0  0      OPC=<label>         
  movl %edi, %edi                          #  1     0xafdc0  2      OPC=movl_r32_r32    
  subl $0x8, %esp                          #  2     0xafdc2  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                          #  3     0xafdc5  3      OPC=addq_r64_r64    
  movl %edi, %edi                          #  4     0xafdc8  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                 #  5     0xafdca  4      OPC=movl_r32_m32    
  movl %eax, %eax                          #  6     0xafdce  2      OPC=movl_r32_r32    
  movl 0x28(%r15,%rax,1), %eax             #  7     0xafdd0  5      OPC=movl_r32_m32    
  nop                                      #  8     0xafdd5  1      OPC=nop             
  nop                                      #  9     0xafdd6  1      OPC=nop             
  nop                                      #  10    0xafdd7  1      OPC=nop             
  andl $0xffffffe0, %eax                   #  11    0xafdd8  6      OPC=andl_r32_imm32  
  nop                                      #  12    0xafdde  1      OPC=nop             
  nop                                      #  13    0xafddf  1      OPC=nop             
  nop                                      #  14    0xafde0  1      OPC=nop             
  addq %r15, %rax                          #  15    0xafde1  3      OPC=addq_r64_r64    
  callq %rax                               #  16    0xafde4  2      OPC=callq_r64       
  addl $0x8, %esp                          #  17    0xafde6  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                          #  18    0xafde9  3      OPC=addq_r64_r64    
  popq %r11                                #  19    0xafdec  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                  #  20    0xafdee  7      OPC=andl_r32_imm32  
  nop                                      #  21    0xafdf5  1      OPC=nop             
  nop                                      #  22    0xafdf6  1      OPC=nop             
  nop                                      #  23    0xafdf7  1      OPC=nop             
  nop                                      #  24    0xafdf8  1      OPC=nop             
  addq %r15, %r11                          #  25    0xafdf9  3      OPC=addq_r64_r64    
  jmpq %r11                                #  26    0xafdfc  3      OPC=jmpq_r64        
  nop                                      #  27    0xafdff  1      OPC=nop             
  nop                                      #  28    0xafe00  1      OPC=nop             
  nop                                      #  29    0xafe01  1      OPC=nop             
  nop                                      #  30    0xafe02  1      OPC=nop             
  nop                                      #  31    0xafe03  1      OPC=nop             
  nop                                      #  32    0xafe04  1      OPC=nop             
  nop                                      #  33    0xafe05  1      OPC=nop             
  nop                                      #  34    0xafe06  1      OPC=nop             
  nop                                      #  35    0xafe07  1      OPC=nop             
  nop                                      #  36    0xafe08  1      OPC=nop             
  nop                                      #  37    0xafe09  1      OPC=nop             
  nop                                      #  38    0xafe0a  1      OPC=nop             
  nop                                      #  39    0xafe0b  1      OPC=nop             
  nop                                      #  40    0xafe0c  1      OPC=nop             
                                                                                        
.size _ZNKSt10moneypunctIwLb0EE10neg_formatEv, .-_ZNKSt10moneypunctIwLb0EE10neg_formatEv

