  .text
  .globl _ZSt18uncaught_exceptionv
  .type _ZSt18uncaught_exceptionv, @function

#! file-offset 0x1238e0
#! rip-offset  0xe38e0
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
._ZSt18uncaught_exceptionv:    #        0xe38e0  0      OPC=<label>         
  subl $0x8, %esp              #  1     0xe38e0  3      OPC=subl_r32_imm8   
  addq %r15, %rsp              #  2     0xe38e3  3      OPC=addq_r64_r64    
  nop                          #  3     0xe38e6  1      OPC=nop             
  nop                          #  4     0xe38e7  1      OPC=nop             
  nop                          #  5     0xe38e8  1      OPC=nop             
  nop                          #  6     0xe38e9  1      OPC=nop             
  nop                          #  7     0xe38ea  1      OPC=nop             
  nop                          #  8     0xe38eb  1      OPC=nop             
  nop                          #  9     0xe38ec  1      OPC=nop             
  nop                          #  10    0xe38ed  1      OPC=nop             
  nop                          #  11    0xe38ee  1      OPC=nop             
  nop                          #  12    0xe38ef  1      OPC=nop             
  nop                          #  13    0xe38f0  1      OPC=nop             
  nop                          #  14    0xe38f1  1      OPC=nop             
  nop                          #  15    0xe38f2  1      OPC=nop             
  nop                          #  16    0xe38f3  1      OPC=nop             
  nop                          #  17    0xe38f4  1      OPC=nop             
  nop                          #  18    0xe38f5  1      OPC=nop             
  nop                          #  19    0xe38f6  1      OPC=nop             
  nop                          #  20    0xe38f7  1      OPC=nop             
  nop                          #  21    0xe38f8  1      OPC=nop             
  nop                          #  22    0xe38f9  1      OPC=nop             
  nop                          #  23    0xe38fa  1      OPC=nop             
  callq .__cxa_get_globals     #  24    0xe38fb  5      OPC=callq_label     
  movl %eax, %eax              #  25    0xe3900  2      OPC=movl_r32_r32    
  movl %eax, %eax              #  26    0xe3902  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rax,1), %eax  #  27    0xe3904  5      OPC=movl_r32_m32    
  testl %eax, %eax             #  28    0xe3909  2      OPC=testl_r32_r32   
  setne %al                    #  29    0xe390b  3      OPC=setne_r8        
  addl $0x8, %esp              #  30    0xe390e  3      OPC=addl_r32_imm8   
  addq %r15, %rsp              #  31    0xe3911  3      OPC=addq_r64_r64    
  popq %r11                    #  32    0xe3914  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  33    0xe3916  7      OPC=andl_r32_imm32  
  nop                          #  34    0xe391d  1      OPC=nop             
  nop                          #  35    0xe391e  1      OPC=nop             
  nop                          #  36    0xe391f  1      OPC=nop             
  nop                          #  37    0xe3920  1      OPC=nop             
  addq %r15, %r11              #  38    0xe3921  3      OPC=addq_r64_r64    
  jmpq %r11                    #  39    0xe3924  3      OPC=jmpq_r64        
                                                                            
.size _ZSt18uncaught_exceptionv, .-_ZSt18uncaught_exceptionv

