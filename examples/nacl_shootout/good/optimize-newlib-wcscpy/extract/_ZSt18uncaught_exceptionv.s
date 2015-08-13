  .text
  .globl _ZSt18uncaught_exceptionv
  .type _ZSt18uncaught_exceptionv, @function

#! file-offset 0x122ec0
#! rip-offset  0xe2ec0
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
._ZSt18uncaught_exceptionv:    #        0xe2ec0  0      OPC=<label>         
  subl $0x8, %esp              #  1     0xe2ec0  3      OPC=subl_r32_imm8   
  addq %r15, %rsp              #  2     0xe2ec3  3      OPC=addq_r64_r64    
  nop                          #  3     0xe2ec6  1      OPC=nop             
  nop                          #  4     0xe2ec7  1      OPC=nop             
  nop                          #  5     0xe2ec8  1      OPC=nop             
  nop                          #  6     0xe2ec9  1      OPC=nop             
  nop                          #  7     0xe2eca  1      OPC=nop             
  nop                          #  8     0xe2ecb  1      OPC=nop             
  nop                          #  9     0xe2ecc  1      OPC=nop             
  nop                          #  10    0xe2ecd  1      OPC=nop             
  nop                          #  11    0xe2ece  1      OPC=nop             
  nop                          #  12    0xe2ecf  1      OPC=nop             
  nop                          #  13    0xe2ed0  1      OPC=nop             
  nop                          #  14    0xe2ed1  1      OPC=nop             
  nop                          #  15    0xe2ed2  1      OPC=nop             
  nop                          #  16    0xe2ed3  1      OPC=nop             
  nop                          #  17    0xe2ed4  1      OPC=nop             
  nop                          #  18    0xe2ed5  1      OPC=nop             
  nop                          #  19    0xe2ed6  1      OPC=nop             
  nop                          #  20    0xe2ed7  1      OPC=nop             
  nop                          #  21    0xe2ed8  1      OPC=nop             
  nop                          #  22    0xe2ed9  1      OPC=nop             
  nop                          #  23    0xe2eda  1      OPC=nop             
  callq .__cxa_get_globals     #  24    0xe2edb  5      OPC=callq_label     
  movl %eax, %eax              #  25    0xe2ee0  2      OPC=movl_r32_r32    
  movl %eax, %eax              #  26    0xe2ee2  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rax,1), %eax  #  27    0xe2ee4  5      OPC=movl_r32_m32    
  testl %eax, %eax             #  28    0xe2ee9  2      OPC=testl_r32_r32   
  setne %al                    #  29    0xe2eeb  3      OPC=setne_r8        
  addl $0x8, %esp              #  30    0xe2eee  3      OPC=addl_r32_imm8   
  addq %r15, %rsp              #  31    0xe2ef1  3      OPC=addq_r64_r64    
  popq %r11                    #  32    0xe2ef4  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  33    0xe2ef6  7      OPC=andl_r32_imm32  
  nop                          #  34    0xe2efd  1      OPC=nop             
  nop                          #  35    0xe2efe  1      OPC=nop             
  nop                          #  36    0xe2eff  1      OPC=nop             
  nop                          #  37    0xe2f00  1      OPC=nop             
  addq %r15, %r11              #  38    0xe2f01  3      OPC=addq_r64_r64    
  jmpq %r11                    #  39    0xe2f04  3      OPC=jmpq_r64        
                                                                            
.size _ZSt18uncaught_exceptionv, .-_ZSt18uncaught_exceptionv

