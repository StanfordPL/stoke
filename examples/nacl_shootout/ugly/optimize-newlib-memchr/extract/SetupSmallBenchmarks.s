  .text
  .globl SetupSmallBenchmarks
  .type SetupSmallBenchmarks, @function

#! file-offset 0x6ad40
#! rip-offset  0x2ad40
#! capacity    96 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.SetupSmallBenchmarks:         #        0x2ad40  0      OPC=<label>         
  subl $0x8, %esp              #  1     0x2ad40  3      OPC=subl_r32_imm8   
  addq %r15, %rsp              #  2     0x2ad43  3      OPC=addq_r64_r64    
  movl $0x10020d09, %edi       #  3     0x2ad46  5      OPC=movl_r32_imm32  
  nop                          #  4     0x2ad4b  1      OPC=nop             
  nop                          #  5     0x2ad4c  1      OPC=nop             
  nop                          #  6     0x2ad4d  1      OPC=nop             
  nop                          #  7     0x2ad4e  1      OPC=nop             
  nop                          #  8     0x2ad4f  1      OPC=nop             
  nop                          #  9     0x2ad50  1      OPC=nop             
  nop                          #  10    0x2ad51  1      OPC=nop             
  nop                          #  11    0x2ad52  1      OPC=nop             
  nop                          #  12    0x2ad53  1      OPC=nop             
  nop                          #  13    0x2ad54  1      OPC=nop             
  nop                          #  14    0x2ad55  1      OPC=nop             
  nop                          #  15    0x2ad56  1      OPC=nop             
  nop                          #  16    0x2ad57  1      OPC=nop             
  nop                          #  17    0x2ad58  1      OPC=nop             
  nop                          #  18    0x2ad59  1      OPC=nop             
  nop                          #  19    0x2ad5a  1      OPC=nop             
  callq .strdup                #  20    0x2ad5b  5      OPC=callq_label     
  movl %eax, %edi              #  21    0x2ad60  2      OPC=movl_r32_r32    
  xorl %r9d, %r9d              #  22    0x2ad62  3      OPC=xorl_r32_r32    
  xorl %r8d, %r8d              #  23    0x2ad65  3      OPC=xorl_r32_r32    
  movl $0x2dc6c0, %ecx         #  24    0x2ad68  5      OPC=movl_r32_imm32  
  movl $0xf4240, %edx          #  25    0x2ad6d  5      OPC=movl_r32_imm32  
  movl $0x2a8c0, %esi          #  26    0x2ad72  5      OPC=movl_r32_imm32  
  nop                          #  27    0x2ad77  1      OPC=nop             
  nop                          #  28    0x2ad78  1      OPC=nop             
  nop                          #  29    0x2ad79  1      OPC=nop             
  nop                          #  30    0x2ad7a  1      OPC=nop             
  callq .RegisterBenchmark     #  31    0x2ad7b  5      OPC=callq_label     
  movl $0x0, 0x10046696(%rip)  #  32    0x2ad80  10     OPC=movl_m32_imm32  
  addl $0x8, %esp              #  33    0x2ad8a  3      OPC=addl_r32_imm8   
  addq %r15, %rsp              #  34    0x2ad8d  3      OPC=addq_r64_r64    
  popq %r11                    #  35    0x2ad90  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  36    0x2ad92  7      OPC=andl_r32_imm32  
  nop                          #  37    0x2ad99  1      OPC=nop             
  nop                          #  38    0x2ad9a  1      OPC=nop             
  nop                          #  39    0x2ad9b  1      OPC=nop             
  nop                          #  40    0x2ad9c  1      OPC=nop             
  addq %r15, %r11              #  41    0x2ad9d  3      OPC=addq_r64_r64    
  jmpq %r11                    #  42    0x2ada0  3      OPC=jmpq_r64        
  nop                          #  43    0x2ada3  1      OPC=nop             
  nop                          #  44    0x2ada4  1      OPC=nop             
  nop                          #  45    0x2ada5  1      OPC=nop             
  nop                          #  46    0x2ada6  1      OPC=nop             
                                                                            
.size SetupSmallBenchmarks, .-SetupSmallBenchmarks

