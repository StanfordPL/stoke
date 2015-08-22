  .text
  .globl SetupLargeBenchmarks
  .type SetupLargeBenchmarks, @function

#! file-offset 0x6ace0
#! rip-offset  0x2ace0
#! capacity    96 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.SetupLargeBenchmarks:         #        0x2ace0  0      OPC=<label>         
  subl $0x8, %esp              #  1     0x2ace0  3      OPC=subl_r32_imm8   
  addq %r15, %rsp              #  2     0x2ace3  3      OPC=addq_r64_r64    
  movl $0x10020d09, %edi       #  3     0x2ace6  5      OPC=movl_r32_imm32  
  nop                          #  4     0x2aceb  1      OPC=nop             
  nop                          #  5     0x2acec  1      OPC=nop             
  nop                          #  6     0x2aced  1      OPC=nop             
  nop                          #  7     0x2acee  1      OPC=nop             
  nop                          #  8     0x2acef  1      OPC=nop             
  nop                          #  9     0x2acf0  1      OPC=nop             
  nop                          #  10    0x2acf1  1      OPC=nop             
  nop                          #  11    0x2acf2  1      OPC=nop             
  nop                          #  12    0x2acf3  1      OPC=nop             
  nop                          #  13    0x2acf4  1      OPC=nop             
  nop                          #  14    0x2acf5  1      OPC=nop             
  nop                          #  15    0x2acf6  1      OPC=nop             
  nop                          #  16    0x2acf7  1      OPC=nop             
  nop                          #  17    0x2acf8  1      OPC=nop             
  nop                          #  18    0x2acf9  1      OPC=nop             
  nop                          #  19    0x2acfa  1      OPC=nop             
  callq .strdup                #  20    0x2acfb  5      OPC=callq_label     
  movl %eax, %edi              #  21    0x2ad00  2      OPC=movl_r32_r32    
  xorl %r9d, %r9d              #  22    0x2ad02  3      OPC=xorl_r32_r32    
  xorl %r8d, %r8d              #  23    0x2ad05  3      OPC=xorl_r32_r32    
  movl $0x1c9c380, %ecx        #  24    0x2ad08  5      OPC=movl_r32_imm32  
  movl $0x4c4b40, %edx         #  25    0x2ad0d  5      OPC=movl_r32_imm32  
  movl $0x2a9a0, %esi          #  26    0x2ad12  5      OPC=movl_r32_imm32  
  nop                          #  27    0x2ad17  1      OPC=nop             
  nop                          #  28    0x2ad18  1      OPC=nop             
  nop                          #  29    0x2ad19  1      OPC=nop             
  nop                          #  30    0x2ad1a  1      OPC=nop             
  callq .RegisterBenchmark     #  31    0x2ad1b  5      OPC=callq_label     
  movl $0x1, 0x100466f6(%rip)  #  32    0x2ad20  10     OPC=movl_m32_imm32  
  addl $0x8, %esp              #  33    0x2ad2a  3      OPC=addl_r32_imm8   
  addq %r15, %rsp              #  34    0x2ad2d  3      OPC=addq_r64_r64    
  popq %r11                    #  35    0x2ad30  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  36    0x2ad32  7      OPC=andl_r32_imm32  
  nop                          #  37    0x2ad39  1      OPC=nop             
  nop                          #  38    0x2ad3a  1      OPC=nop             
  nop                          #  39    0x2ad3b  1      OPC=nop             
  nop                          #  40    0x2ad3c  1      OPC=nop             
  addq %r15, %r11              #  41    0x2ad3d  3      OPC=addq_r64_r64    
  jmpq %r11                    #  42    0x2ad40  3      OPC=jmpq_r64        
  nop                          #  43    0x2ad43  1      OPC=nop             
  nop                          #  44    0x2ad44  1      OPC=nop             
  nop                          #  45    0x2ad45  1      OPC=nop             
  nop                          #  46    0x2ad46  1      OPC=nop             
                                                                            
.size SetupLargeBenchmarks, .-SetupLargeBenchmarks

