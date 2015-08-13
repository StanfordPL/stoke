  .text
  .globl SetupLargeBenchmarks
  .type SetupLargeBenchmarks, @function

#! file-offset 0x6a2c0
#! rip-offset  0x2a2c0
#! capacity    96 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.SetupLargeBenchmarks:         #        0x2a2c0  0      OPC=<label>         
  subl $0x8, %esp              #  1     0x2a2c0  3      OPC=subl_r32_imm8   
  addq %r15, %rsp              #  2     0x2a2c3  3      OPC=addq_r64_r64    
  movl $0x10020d09, %edi       #  3     0x2a2c6  5      OPC=movl_r32_imm32  
  nop                          #  4     0x2a2cb  1      OPC=nop             
  nop                          #  5     0x2a2cc  1      OPC=nop             
  nop                          #  6     0x2a2cd  1      OPC=nop             
  nop                          #  7     0x2a2ce  1      OPC=nop             
  nop                          #  8     0x2a2cf  1      OPC=nop             
  nop                          #  9     0x2a2d0  1      OPC=nop             
  nop                          #  10    0x2a2d1  1      OPC=nop             
  nop                          #  11    0x2a2d2  1      OPC=nop             
  nop                          #  12    0x2a2d3  1      OPC=nop             
  nop                          #  13    0x2a2d4  1      OPC=nop             
  nop                          #  14    0x2a2d5  1      OPC=nop             
  nop                          #  15    0x2a2d6  1      OPC=nop             
  nop                          #  16    0x2a2d7  1      OPC=nop             
  nop                          #  17    0x2a2d8  1      OPC=nop             
  nop                          #  18    0x2a2d9  1      OPC=nop             
  nop                          #  19    0x2a2da  1      OPC=nop             
  callq .strdup                #  20    0x2a2db  5      OPC=callq_label     
  movl %eax, %edi              #  21    0x2a2e0  2      OPC=movl_r32_r32    
  xorl %r9d, %r9d              #  22    0x2a2e2  3      OPC=xorl_r32_r32    
  xorl %r8d, %r8d              #  23    0x2a2e5  3      OPC=xorl_r32_r32    
  movl $0x1c9c380, %ecx        #  24    0x2a2e8  5      OPC=movl_r32_imm32  
  movl $0x989680, %edx         #  25    0x2a2ed  5      OPC=movl_r32_imm32  
  movl $0x2a060, %esi          #  26    0x2a2f2  5      OPC=movl_r32_imm32  
  nop                          #  27    0x2a2f7  1      OPC=nop             
  nop                          #  28    0x2a2f8  1      OPC=nop             
  nop                          #  29    0x2a2f9  1      OPC=nop             
  nop                          #  30    0x2a2fa  1      OPC=nop             
  callq .RegisterBenchmark     #  31    0x2a2fb  5      OPC=callq_label     
  movl $0x1, 0x10047116(%rip)  #  32    0x2a300  10     OPC=movl_m32_imm32  
  addl $0x8, %esp              #  33    0x2a30a  3      OPC=addl_r32_imm8   
  addq %r15, %rsp              #  34    0x2a30d  3      OPC=addq_r64_r64    
  popq %r11                    #  35    0x2a310  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  36    0x2a312  7      OPC=andl_r32_imm32  
  nop                          #  37    0x2a319  1      OPC=nop             
  nop                          #  38    0x2a31a  1      OPC=nop             
  nop                          #  39    0x2a31b  1      OPC=nop             
  nop                          #  40    0x2a31c  1      OPC=nop             
  addq %r15, %r11              #  41    0x2a31d  3      OPC=addq_r64_r64    
  jmpq %r11                    #  42    0x2a320  3      OPC=jmpq_r64        
  nop                          #  43    0x2a323  1      OPC=nop             
  nop                          #  44    0x2a324  1      OPC=nop             
  nop                          #  45    0x2a325  1      OPC=nop             
  nop                          #  46    0x2a326  1      OPC=nop             
                                                                            
.size SetupLargeBenchmarks, .-SetupLargeBenchmarks

