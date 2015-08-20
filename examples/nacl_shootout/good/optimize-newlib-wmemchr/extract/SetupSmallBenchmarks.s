  .text
  .globl SetupSmallBenchmarks
  .type SetupSmallBenchmarks, @function

#! file-offset 0x6a620
#! rip-offset  0x2a620
#! capacity    96 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.SetupSmallBenchmarks:         #        0x2a620  0      OPC=<label>         
  subl $0x8, %esp              #  1     0x2a620  3      OPC=subl_r32_imm8   
  addq %r15, %rsp              #  2     0x2a623  3      OPC=addq_r64_r64    
  movl $0x10020d09, %edi       #  3     0x2a626  5      OPC=movl_r32_imm32  
  nop                          #  4     0x2a62b  1      OPC=nop             
  nop                          #  5     0x2a62c  1      OPC=nop             
  nop                          #  6     0x2a62d  1      OPC=nop             
  nop                          #  7     0x2a62e  1      OPC=nop             
  nop                          #  8     0x2a62f  1      OPC=nop             
  nop                          #  9     0x2a630  1      OPC=nop             
  nop                          #  10    0x2a631  1      OPC=nop             
  nop                          #  11    0x2a632  1      OPC=nop             
  nop                          #  12    0x2a633  1      OPC=nop             
  nop                          #  13    0x2a634  1      OPC=nop             
  nop                          #  14    0x2a635  1      OPC=nop             
  nop                          #  15    0x2a636  1      OPC=nop             
  nop                          #  16    0x2a637  1      OPC=nop             
  nop                          #  17    0x2a638  1      OPC=nop             
  nop                          #  18    0x2a639  1      OPC=nop             
  nop                          #  19    0x2a63a  1      OPC=nop             
  callq .strdup                #  20    0x2a63b  5      OPC=callq_label     
  movl %eax, %edi              #  21    0x2a640  2      OPC=movl_r32_r32    
  xorl %r9d, %r9d              #  22    0x2a642  3      OPC=xorl_r32_r32    
  xorl %r8d, %r8d              #  23    0x2a645  3      OPC=xorl_r32_r32    
  movl $0x2dc6c0, %ecx         #  24    0x2a648  5      OPC=movl_r32_imm32  
  movl $0xf4240, %edx          #  25    0x2a64d  5      OPC=movl_r32_imm32  
  movl $0x2a360, %esi          #  26    0x2a652  5      OPC=movl_r32_imm32  
  nop                          #  27    0x2a657  1      OPC=nop             
  nop                          #  28    0x2a658  1      OPC=nop             
  nop                          #  29    0x2a659  1      OPC=nop             
  nop                          #  30    0x2a65a  1      OPC=nop             
  callq .RegisterBenchmark     #  31    0x2a65b  5      OPC=callq_label     
  movl $0x0, 0x10046db6(%rip)  #  32    0x2a660  10     OPC=movl_m32_imm32  
  addl $0x8, %esp              #  33    0x2a66a  3      OPC=addl_r32_imm8   
  addq %r15, %rsp              #  34    0x2a66d  3      OPC=addq_r64_r64    
  popq %r11                    #  35    0x2a670  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  36    0x2a672  7      OPC=andl_r32_imm32  
  nop                          #  37    0x2a679  1      OPC=nop             
  nop                          #  38    0x2a67a  1      OPC=nop             
  nop                          #  39    0x2a67b  1      OPC=nop             
  nop                          #  40    0x2a67c  1      OPC=nop             
  addq %r15, %r11              #  41    0x2a67d  3      OPC=addq_r64_r64    
  jmpq %r11                    #  42    0x2a680  3      OPC=jmpq_r64        
  nop                          #  43    0x2a683  1      OPC=nop             
  nop                          #  44    0x2a684  1      OPC=nop             
  nop                          #  45    0x2a685  1      OPC=nop             
  nop                          #  46    0x2a686  1      OPC=nop             
                                                                            
.size SetupSmallBenchmarks, .-SetupSmallBenchmarks

