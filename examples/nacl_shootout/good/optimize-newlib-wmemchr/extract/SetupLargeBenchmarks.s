  .text
  .globl SetupLargeBenchmarks
  .type SetupLargeBenchmarks, @function

#! file-offset 0x6a5c0
#! rip-offset  0x2a5c0
#! capacity    96 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.SetupLargeBenchmarks:         #        0x2a5c0  0      OPC=<label>         
  subl $0x8, %esp              #  1     0x2a5c0  3      OPC=subl_r32_imm8   
  addq %r15, %rsp              #  2     0x2a5c3  3      OPC=addq_r64_r64    
  movl $0x10020d09, %edi       #  3     0x2a5c6  5      OPC=movl_r32_imm32  
  nop                          #  4     0x2a5cb  1      OPC=nop             
  nop                          #  5     0x2a5cc  1      OPC=nop             
  nop                          #  6     0x2a5cd  1      OPC=nop             
  nop                          #  7     0x2a5ce  1      OPC=nop             
  nop                          #  8     0x2a5cf  1      OPC=nop             
  nop                          #  9     0x2a5d0  1      OPC=nop             
  nop                          #  10    0x2a5d1  1      OPC=nop             
  nop                          #  11    0x2a5d2  1      OPC=nop             
  nop                          #  12    0x2a5d3  1      OPC=nop             
  nop                          #  13    0x2a5d4  1      OPC=nop             
  nop                          #  14    0x2a5d5  1      OPC=nop             
  nop                          #  15    0x2a5d6  1      OPC=nop             
  nop                          #  16    0x2a5d7  1      OPC=nop             
  nop                          #  17    0x2a5d8  1      OPC=nop             
  nop                          #  18    0x2a5d9  1      OPC=nop             
  nop                          #  19    0x2a5da  1      OPC=nop             
  callq .strdup                #  20    0x2a5db  5      OPC=callq_label     
  movl %eax, %edi              #  21    0x2a5e0  2      OPC=movl_r32_r32    
  xorl %r9d, %r9d              #  22    0x2a5e2  3      OPC=xorl_r32_r32    
  xorl %r8d, %r8d              #  23    0x2a5e5  3      OPC=xorl_r32_r32    
  movl $0x1c9c380, %ecx        #  24    0x2a5e8  5      OPC=movl_r32_imm32  
  movl $0x4c4b40, %edx         #  25    0x2a5ed  5      OPC=movl_r32_imm32  
  movl $0x2a360, %esi          #  26    0x2a5f2  5      OPC=movl_r32_imm32  
  nop                          #  27    0x2a5f7  1      OPC=nop             
  nop                          #  28    0x2a5f8  1      OPC=nop             
  nop                          #  29    0x2a5f9  1      OPC=nop             
  nop                          #  30    0x2a5fa  1      OPC=nop             
  callq .RegisterBenchmark     #  31    0x2a5fb  5      OPC=callq_label     
  movl $0x1, 0x10046e16(%rip)  #  32    0x2a600  10     OPC=movl_m32_imm32  
  addl $0x8, %esp              #  33    0x2a60a  3      OPC=addl_r32_imm8   
  addq %r15, %rsp              #  34    0x2a60d  3      OPC=addq_r64_r64    
  popq %r11                    #  35    0x2a610  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  36    0x2a612  7      OPC=andl_r32_imm32  
  nop                          #  37    0x2a619  1      OPC=nop             
  nop                          #  38    0x2a61a  1      OPC=nop             
  nop                          #  39    0x2a61b  1      OPC=nop             
  nop                          #  40    0x2a61c  1      OPC=nop             
  addq %r15, %r11              #  41    0x2a61d  3      OPC=addq_r64_r64    
  jmpq %r11                    #  42    0x2a620  3      OPC=jmpq_r64        
  nop                          #  43    0x2a623  1      OPC=nop             
  nop                          #  44    0x2a624  1      OPC=nop             
  nop                          #  45    0x2a625  1      OPC=nop             
  nop                          #  46    0x2a626  1      OPC=nop             
                                                                            
.size SetupLargeBenchmarks, .-SetupLargeBenchmarks

