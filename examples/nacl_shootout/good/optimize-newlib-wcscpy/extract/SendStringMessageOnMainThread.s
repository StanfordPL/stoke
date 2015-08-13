  .text
  .globl SendStringMessageOnMainThread
  .type SendStringMessageOnMainThread, @function

#! file-offset 0x6c440
#! rip-offset  0x2c440
#! capacity    64 bytes

# Text                           #  Line  RIP      Bytes  Opcode              
.SendStringMessageOnMainThread:  #        0x2c440  0      OPC=<label>         
  movl $0x2ca40, -0x18(%rsp)     #  1     0x2c440  8      OPC=movl_m32_imm32  
  movl %edi, -0x14(%rsp)         #  2     0x2c448  4      OPC=movl_m32_r32    
  movl $0x0, -0x10(%rsp)         #  3     0x2c44c  8      OPC=movl_m32_imm32  
  movl 0x10045176(%rip), %eax    #  4     0x2c454  6      OPC=movl_r32_m32    
  nop                            #  5     0x2c45a  1      OPC=nop             
  nop                            #  6     0x2c45b  1      OPC=nop             
  nop                            #  7     0x2c45c  1      OPC=nop             
  nop                            #  8     0x2c45d  1      OPC=nop             
  nop                            #  9     0x2c45e  1      OPC=nop             
  nop                            #  10    0x2c45f  1      OPC=nop             
  movl %eax, %eax                #  11    0x2c460  2      OPC=movl_r32_r32    
  movl 0x10(%r15,%rax,1), %eax   #  12    0x2c462  5      OPC=movl_r32_m32    
  xorl %ecx, %ecx                #  13    0x2c467  2      OPC=xorl_r32_r32    
  movq -0x18(%rsp), %rsi         #  14    0x2c469  5      OPC=movq_r64_m64    
  xorl %edx, %edx                #  15    0x2c46e  2      OPC=xorl_r32_r32    
  xorl %edi, %edi                #  16    0x2c470  2      OPC=xorl_r32_r32    
  andl $0xffffffe0, %eax         #  17    0x2c472  6      OPC=andl_r32_imm32  
  nop                            #  18    0x2c478  1      OPC=nop             
  nop                            #  19    0x2c479  1      OPC=nop             
  nop                            #  20    0x2c47a  1      OPC=nop             
  addq %r15, %rax                #  21    0x2c47b  3      OPC=addq_r64_r64    
  jmpq %rax                      #  22    0x2c47e  2      OPC=jmpq_r64        
  nop                            #  23    0x2c480  1      OPC=nop             
  nop                            #  24    0x2c481  1      OPC=nop             
  nop                            #  25    0x2c482  1      OPC=nop             
  nop                            #  26    0x2c483  1      OPC=nop             
  nop                            #  27    0x2c484  1      OPC=nop             
  nop                            #  28    0x2c485  1      OPC=nop             
                                                                              
.size SendStringMessageOnMainThread, .-SendStringMessageOnMainThread

