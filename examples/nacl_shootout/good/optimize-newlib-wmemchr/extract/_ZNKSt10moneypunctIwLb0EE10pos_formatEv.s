  .text
  .globl _ZNKSt10moneypunctIwLb0EE10pos_formatEv
  .type _ZNKSt10moneypunctIwLb0EE10pos_formatEv, @function

#! file-offset 0xefd80
#! rip-offset  0xafd80
#! capacity    64 bytes

# Text                                     #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb0EE10pos_formatEv:  #        0xafd80  0      OPC=<label>         
  movl %edi, %edi                          #  1     0xafd80  2      OPC=movl_r32_r32    
  subl $0x8, %esp                          #  2     0xafd82  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                          #  3     0xafd85  3      OPC=addq_r64_r64    
  movl %edi, %edi                          #  4     0xafd88  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                 #  5     0xafd8a  4      OPC=movl_r32_m32    
  movl %eax, %eax                          #  6     0xafd8e  2      OPC=movl_r32_r32    
  movl 0x24(%r15,%rax,1), %eax             #  7     0xafd90  5      OPC=movl_r32_m32    
  nop                                      #  8     0xafd95  1      OPC=nop             
  nop                                      #  9     0xafd96  1      OPC=nop             
  nop                                      #  10    0xafd97  1      OPC=nop             
  andl $0xffffffe0, %eax                   #  11    0xafd98  6      OPC=andl_r32_imm32  
  nop                                      #  12    0xafd9e  1      OPC=nop             
  nop                                      #  13    0xafd9f  1      OPC=nop             
  nop                                      #  14    0xafda0  1      OPC=nop             
  addq %r15, %rax                          #  15    0xafda1  3      OPC=addq_r64_r64    
  callq %rax                               #  16    0xafda4  2      OPC=callq_r64       
  addl $0x8, %esp                          #  17    0xafda6  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                          #  18    0xafda9  3      OPC=addq_r64_r64    
  popq %r11                                #  19    0xafdac  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                  #  20    0xafdae  7      OPC=andl_r32_imm32  
  nop                                      #  21    0xafdb5  1      OPC=nop             
  nop                                      #  22    0xafdb6  1      OPC=nop             
  nop                                      #  23    0xafdb7  1      OPC=nop             
  nop                                      #  24    0xafdb8  1      OPC=nop             
  addq %r15, %r11                          #  25    0xafdb9  3      OPC=addq_r64_r64    
  jmpq %r11                                #  26    0xafdbc  3      OPC=jmpq_r64        
  nop                                      #  27    0xafdbf  1      OPC=nop             
  nop                                      #  28    0xafdc0  1      OPC=nop             
  nop                                      #  29    0xafdc1  1      OPC=nop             
  nop                                      #  30    0xafdc2  1      OPC=nop             
  nop                                      #  31    0xafdc3  1      OPC=nop             
  nop                                      #  32    0xafdc4  1      OPC=nop             
  nop                                      #  33    0xafdc5  1      OPC=nop             
  nop                                      #  34    0xafdc6  1      OPC=nop             
  nop                                      #  35    0xafdc7  1      OPC=nop             
  nop                                      #  36    0xafdc8  1      OPC=nop             
  nop                                      #  37    0xafdc9  1      OPC=nop             
  nop                                      #  38    0xafdca  1      OPC=nop             
  nop                                      #  39    0xafdcb  1      OPC=nop             
  nop                                      #  40    0xafdcc  1      OPC=nop             
                                                                                        
.size _ZNKSt10moneypunctIwLb0EE10pos_formatEv, .-_ZNKSt10moneypunctIwLb0EE10pos_formatEv

