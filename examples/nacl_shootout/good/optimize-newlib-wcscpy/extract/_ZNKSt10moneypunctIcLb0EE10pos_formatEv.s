  .text
  .globl _ZNKSt10moneypunctIcLb0EE10pos_formatEv
  .type _ZNKSt10moneypunctIcLb0EE10pos_formatEv, @function

#! file-offset 0xb6ac0
#! rip-offset  0x76ac0
#! capacity    64 bytes

# Text                                     #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIcLb0EE10pos_formatEv:  #        0x76ac0  0      OPC=<label>         
  movl %edi, %edi                          #  1     0x76ac0  2      OPC=movl_r32_r32    
  subl $0x8, %esp                          #  2     0x76ac2  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                          #  3     0x76ac5  3      OPC=addq_r64_r64    
  movl %edi, %edi                          #  4     0x76ac8  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                 #  5     0x76aca  4      OPC=movl_r32_m32    
  movl %eax, %eax                          #  6     0x76ace  2      OPC=movl_r32_r32    
  movl 0x24(%r15,%rax,1), %eax             #  7     0x76ad0  5      OPC=movl_r32_m32    
  nop                                      #  8     0x76ad5  1      OPC=nop             
  nop                                      #  9     0x76ad6  1      OPC=nop             
  nop                                      #  10    0x76ad7  1      OPC=nop             
  andl $0xffffffe0, %eax                   #  11    0x76ad8  6      OPC=andl_r32_imm32  
  nop                                      #  12    0x76ade  1      OPC=nop             
  nop                                      #  13    0x76adf  1      OPC=nop             
  nop                                      #  14    0x76ae0  1      OPC=nop             
  addq %r15, %rax                          #  15    0x76ae1  3      OPC=addq_r64_r64    
  callq %rax                               #  16    0x76ae4  2      OPC=callq_r64       
  addl $0x8, %esp                          #  17    0x76ae6  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                          #  18    0x76ae9  3      OPC=addq_r64_r64    
  popq %r11                                #  19    0x76aec  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                  #  20    0x76aee  7      OPC=andl_r32_imm32  
  nop                                      #  21    0x76af5  1      OPC=nop             
  nop                                      #  22    0x76af6  1      OPC=nop             
  nop                                      #  23    0x76af7  1      OPC=nop             
  nop                                      #  24    0x76af8  1      OPC=nop             
  addq %r15, %r11                          #  25    0x76af9  3      OPC=addq_r64_r64    
  jmpq %r11                                #  26    0x76afc  3      OPC=jmpq_r64        
  nop                                      #  27    0x76aff  1      OPC=nop             
  nop                                      #  28    0x76b00  1      OPC=nop             
  nop                                      #  29    0x76b01  1      OPC=nop             
  nop                                      #  30    0x76b02  1      OPC=nop             
  nop                                      #  31    0x76b03  1      OPC=nop             
  nop                                      #  32    0x76b04  1      OPC=nop             
  nop                                      #  33    0x76b05  1      OPC=nop             
  nop                                      #  34    0x76b06  1      OPC=nop             
  nop                                      #  35    0x76b07  1      OPC=nop             
  nop                                      #  36    0x76b08  1      OPC=nop             
  nop                                      #  37    0x76b09  1      OPC=nop             
  nop                                      #  38    0x76b0a  1      OPC=nop             
  nop                                      #  39    0x76b0b  1      OPC=nop             
  nop                                      #  40    0x76b0c  1      OPC=nop             
                                                                                        
.size _ZNKSt10moneypunctIcLb0EE10pos_formatEv, .-_ZNKSt10moneypunctIcLb0EE10pos_formatEv

