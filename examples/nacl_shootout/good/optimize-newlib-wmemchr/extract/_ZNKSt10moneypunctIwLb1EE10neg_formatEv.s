  .text
  .globl _ZNKSt10moneypunctIwLb1EE10neg_formatEv
  .type _ZNKSt10moneypunctIwLb1EE10neg_formatEv, @function

#! file-offset 0xf0040
#! rip-offset  0xb0040
#! capacity    64 bytes

# Text                                     #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb1EE10neg_formatEv:  #        0xb0040  0      OPC=<label>         
  movl %edi, %edi                          #  1     0xb0040  2      OPC=movl_r32_r32    
  subl $0x8, %esp                          #  2     0xb0042  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                          #  3     0xb0045  3      OPC=addq_r64_r64    
  movl %edi, %edi                          #  4     0xb0048  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                 #  5     0xb004a  4      OPC=movl_r32_m32    
  movl %eax, %eax                          #  6     0xb004e  2      OPC=movl_r32_r32    
  movl 0x28(%r15,%rax,1), %eax             #  7     0xb0050  5      OPC=movl_r32_m32    
  nop                                      #  8     0xb0055  1      OPC=nop             
  nop                                      #  9     0xb0056  1      OPC=nop             
  nop                                      #  10    0xb0057  1      OPC=nop             
  andl $0xffffffe0, %eax                   #  11    0xb0058  6      OPC=andl_r32_imm32  
  nop                                      #  12    0xb005e  1      OPC=nop             
  nop                                      #  13    0xb005f  1      OPC=nop             
  nop                                      #  14    0xb0060  1      OPC=nop             
  addq %r15, %rax                          #  15    0xb0061  3      OPC=addq_r64_r64    
  callq %rax                               #  16    0xb0064  2      OPC=callq_r64       
  addl $0x8, %esp                          #  17    0xb0066  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                          #  18    0xb0069  3      OPC=addq_r64_r64    
  popq %r11                                #  19    0xb006c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                  #  20    0xb006e  7      OPC=andl_r32_imm32  
  nop                                      #  21    0xb0075  1      OPC=nop             
  nop                                      #  22    0xb0076  1      OPC=nop             
  nop                                      #  23    0xb0077  1      OPC=nop             
  nop                                      #  24    0xb0078  1      OPC=nop             
  addq %r15, %r11                          #  25    0xb0079  3      OPC=addq_r64_r64    
  jmpq %r11                                #  26    0xb007c  3      OPC=jmpq_r64        
  nop                                      #  27    0xb007f  1      OPC=nop             
  nop                                      #  28    0xb0080  1      OPC=nop             
  nop                                      #  29    0xb0081  1      OPC=nop             
  nop                                      #  30    0xb0082  1      OPC=nop             
  nop                                      #  31    0xb0083  1      OPC=nop             
  nop                                      #  32    0xb0084  1      OPC=nop             
  nop                                      #  33    0xb0085  1      OPC=nop             
  nop                                      #  34    0xb0086  1      OPC=nop             
  nop                                      #  35    0xb0087  1      OPC=nop             
  nop                                      #  36    0xb0088  1      OPC=nop             
  nop                                      #  37    0xb0089  1      OPC=nop             
  nop                                      #  38    0xb008a  1      OPC=nop             
  nop                                      #  39    0xb008b  1      OPC=nop             
  nop                                      #  40    0xb008c  1      OPC=nop             
                                                                                        
.size _ZNKSt10moneypunctIwLb1EE10neg_formatEv, .-_ZNKSt10moneypunctIwLb1EE10neg_formatEv

