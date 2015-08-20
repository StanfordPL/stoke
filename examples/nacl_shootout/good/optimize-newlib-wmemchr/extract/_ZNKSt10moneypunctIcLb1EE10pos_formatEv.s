  .text
  .globl _ZNKSt10moneypunctIcLb1EE10pos_formatEv
  .type _ZNKSt10moneypunctIcLb1EE10pos_formatEv, @function

#! file-offset 0xb7040
#! rip-offset  0x77040
#! capacity    64 bytes

# Text                                     #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIcLb1EE10pos_formatEv:  #        0x77040  0      OPC=<label>         
  movl %edi, %edi                          #  1     0x77040  2      OPC=movl_r32_r32    
  subl $0x8, %esp                          #  2     0x77042  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                          #  3     0x77045  3      OPC=addq_r64_r64    
  movl %edi, %edi                          #  4     0x77048  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                 #  5     0x7704a  4      OPC=movl_r32_m32    
  movl %eax, %eax                          #  6     0x7704e  2      OPC=movl_r32_r32    
  movl 0x24(%r15,%rax,1), %eax             #  7     0x77050  5      OPC=movl_r32_m32    
  nop                                      #  8     0x77055  1      OPC=nop             
  nop                                      #  9     0x77056  1      OPC=nop             
  nop                                      #  10    0x77057  1      OPC=nop             
  andl $0xffffffe0, %eax                   #  11    0x77058  6      OPC=andl_r32_imm32  
  nop                                      #  12    0x7705e  1      OPC=nop             
  nop                                      #  13    0x7705f  1      OPC=nop             
  nop                                      #  14    0x77060  1      OPC=nop             
  addq %r15, %rax                          #  15    0x77061  3      OPC=addq_r64_r64    
  callq %rax                               #  16    0x77064  2      OPC=callq_r64       
  addl $0x8, %esp                          #  17    0x77066  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                          #  18    0x77069  3      OPC=addq_r64_r64    
  popq %r11                                #  19    0x7706c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                  #  20    0x7706e  7      OPC=andl_r32_imm32  
  nop                                      #  21    0x77075  1      OPC=nop             
  nop                                      #  22    0x77076  1      OPC=nop             
  nop                                      #  23    0x77077  1      OPC=nop             
  nop                                      #  24    0x77078  1      OPC=nop             
  addq %r15, %r11                          #  25    0x77079  3      OPC=addq_r64_r64    
  jmpq %r11                                #  26    0x7707c  3      OPC=jmpq_r64        
  nop                                      #  27    0x7707f  1      OPC=nop             
  nop                                      #  28    0x77080  1      OPC=nop             
  nop                                      #  29    0x77081  1      OPC=nop             
  nop                                      #  30    0x77082  1      OPC=nop             
  nop                                      #  31    0x77083  1      OPC=nop             
  nop                                      #  32    0x77084  1      OPC=nop             
  nop                                      #  33    0x77085  1      OPC=nop             
  nop                                      #  34    0x77086  1      OPC=nop             
  nop                                      #  35    0x77087  1      OPC=nop             
  nop                                      #  36    0x77088  1      OPC=nop             
  nop                                      #  37    0x77089  1      OPC=nop             
  nop                                      #  38    0x7708a  1      OPC=nop             
  nop                                      #  39    0x7708b  1      OPC=nop             
  nop                                      #  40    0x7708c  1      OPC=nop             
                                                                                        
.size _ZNKSt10moneypunctIcLb1EE10pos_formatEv, .-_ZNKSt10moneypunctIcLb1EE10pos_formatEv

