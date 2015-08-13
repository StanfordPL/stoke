  .text
  .globl SetupSmallBenchmarks
  .type SetupSmallBenchmarks, @function

#! file-offset 0x6a320
#! rip-offset  0x2a320
#! capacity    96 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.SetupSmallBenchmarks:         #        0x2a320  0      OPC=<label>         
  subl $0x8, %esp              #  1     0x2a320  3      OPC=subl_r32_imm8   
  addq %r15, %rsp              #  2     0x2a323  3      OPC=addq_r64_r64    
  movl $0x10020d09, %edi       #  3     0x2a326  5      OPC=movl_r32_imm32  
  nop                          #  4     0x2a32b  1      OPC=nop             
  nop                          #  5     0x2a32c  1      OPC=nop             
  nop                          #  6     0x2a32d  1      OPC=nop             
  nop                          #  7     0x2a32e  1      OPC=nop             
  nop                          #  8     0x2a32f  1      OPC=nop             
  nop                          #  9     0x2a330  1      OPC=nop             
  nop                          #  10    0x2a331  1      OPC=nop             
  nop                          #  11    0x2a332  1      OPC=nop             
  nop                          #  12    0x2a333  1      OPC=nop             
  nop                          #  13    0x2a334  1      OPC=nop             
  nop                          #  14    0x2a335  1      OPC=nop             
  nop                          #  15    0x2a336  1      OPC=nop             
  nop                          #  16    0x2a337  1      OPC=nop             
  nop                          #  17    0x2a338  1      OPC=nop             
  nop                          #  18    0x2a339  1      OPC=nop             
  nop                          #  19    0x2a33a  1      OPC=nop             
  callq .strdup                #  20    0x2a33b  5      OPC=callq_label     
  movl %eax, %edi              #  21    0x2a340  2      OPC=movl_r32_r32    
  xorl %r9d, %r9d              #  22    0x2a342  3      OPC=xorl_r32_r32    
  xorl %r8d, %r8d              #  23    0x2a345  3      OPC=xorl_r32_r32    
  movl $0x2dc6c0, %ecx         #  24    0x2a348  5      OPC=movl_r32_imm32  
  movl $0xf4240, %edx          #  25    0x2a34d  5      OPC=movl_r32_imm32  
  movl $0x2a060, %esi          #  26    0x2a352  5      OPC=movl_r32_imm32  
  nop                          #  27    0x2a357  1      OPC=nop             
  nop                          #  28    0x2a358  1      OPC=nop             
  nop                          #  29    0x2a359  1      OPC=nop             
  nop                          #  30    0x2a35a  1      OPC=nop             
  callq .RegisterBenchmark     #  31    0x2a35b  5      OPC=callq_label     
  movl $0x0, 0x100470b6(%rip)  #  32    0x2a360  10     OPC=movl_m32_imm32  
  addl $0x8, %esp              #  33    0x2a36a  3      OPC=addl_r32_imm8   
  addq %r15, %rsp              #  34    0x2a36d  3      OPC=addq_r64_r64    
  popq %r11                    #  35    0x2a370  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  36    0x2a372  7      OPC=andl_r32_imm32  
  nop                          #  37    0x2a379  1      OPC=nop             
  nop                          #  38    0x2a37a  1      OPC=nop             
  nop                          #  39    0x2a37b  1      OPC=nop             
  nop                          #  40    0x2a37c  1      OPC=nop             
  addq %r15, %r11              #  41    0x2a37d  3      OPC=addq_r64_r64    
  jmpq %r11                    #  42    0x2a380  3      OPC=jmpq_r64        
  nop                          #  43    0x2a383  1      OPC=nop             
  nop                          #  44    0x2a384  1      OPC=nop             
  nop                          #  45    0x2a385  1      OPC=nop             
  nop                          #  46    0x2a386  1      OPC=nop             
                                                                            
.size SetupSmallBenchmarks, .-SetupSmallBenchmarks

