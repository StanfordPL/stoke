  .text
  .globl SendStringMessageOnMainThread
  .type SendStringMessageOnMainThread, @function

#! file-offset 0x6ce60
#! rip-offset  0x2ce60
#! capacity    64 bytes

# Text                           #  Line  RIP      Bytes  Opcode              
.SendStringMessageOnMainThread:  #        0x2ce60  0      OPC=<label>         
  movl $0x2d460, -0x18(%rsp)     #  1     0x2ce60  8      OPC=movl_m32_imm32  
  movl %edi, -0x14(%rsp)         #  2     0x2ce68  4      OPC=movl_m32_r32    
  movl $0x0, -0x10(%rsp)         #  3     0x2ce6c  8      OPC=movl_m32_imm32  
  movl 0x10044756(%rip), %eax    #  4     0x2ce74  6      OPC=movl_r32_m32    
  nop                            #  5     0x2ce7a  1      OPC=nop             
  nop                            #  6     0x2ce7b  1      OPC=nop             
  nop                            #  7     0x2ce7c  1      OPC=nop             
  nop                            #  8     0x2ce7d  1      OPC=nop             
  nop                            #  9     0x2ce7e  1      OPC=nop             
  nop                            #  10    0x2ce7f  1      OPC=nop             
  movl %eax, %eax                #  11    0x2ce80  2      OPC=movl_r32_r32    
  movl 0x10(%r15,%rax,1), %eax   #  12    0x2ce82  5      OPC=movl_r32_m32    
  xorl %ecx, %ecx                #  13    0x2ce87  2      OPC=xorl_r32_r32    
  movq -0x18(%rsp), %rsi         #  14    0x2ce89  5      OPC=movq_r64_m64    
  xorl %edx, %edx                #  15    0x2ce8e  2      OPC=xorl_r32_r32    
  xorl %edi, %edi                #  16    0x2ce90  2      OPC=xorl_r32_r32    
  andl $0xffffffe0, %eax         #  17    0x2ce92  6      OPC=andl_r32_imm32  
  nop                            #  18    0x2ce98  1      OPC=nop             
  nop                            #  19    0x2ce99  1      OPC=nop             
  nop                            #  20    0x2ce9a  1      OPC=nop             
  addq %r15, %rax                #  21    0x2ce9b  3      OPC=addq_r64_r64    
  jmpq %rax                      #  22    0x2ce9e  2      OPC=jmpq_r64        
  nop                            #  23    0x2cea0  1      OPC=nop             
  nop                            #  24    0x2cea1  1      OPC=nop             
  nop                            #  25    0x2cea2  1      OPC=nop             
  nop                            #  26    0x2cea3  1      OPC=nop             
  nop                            #  27    0x2cea4  1      OPC=nop             
  nop                            #  28    0x2cea5  1      OPC=nop             
                                                                              
.size SendStringMessageOnMainThread, .-SendStringMessageOnMainThread

