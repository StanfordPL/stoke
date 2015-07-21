  .text
  .globl SetupSmallBenchmarks
  .type SetupSmallBenchmarks, @function

#! file-offset 0x69de0
#! rip-offset  0x29de0
#! capacity    96 bytes

# Text                         #  Line  RIP      Bytes  Opcode    
.SetupSmallBenchmarks:         #        0x29de0  0      OPC=0     
  subl $0x8, %esp              #  1     0x29de0  3      OPC=2384  
  addq %r15, %rsp              #  2     0x29de3  3      OPC=72    
  movl $0x10020d01, %edi       #  3     0x29de6  5      OPC=1154  
  nop                          #  4     0x29deb  1      OPC=1343  
  nop                          #  5     0x29dec  1      OPC=1343  
  nop                          #  6     0x29ded  1      OPC=1343  
  nop                          #  7     0x29dee  1      OPC=1343  
  nop                          #  8     0x29def  1      OPC=1343  
  nop                          #  9     0x29df0  1      OPC=1343  
  nop                          #  10    0x29df1  1      OPC=1343  
  nop                          #  11    0x29df2  1      OPC=1343  
  nop                          #  12    0x29df3  1      OPC=1343  
  nop                          #  13    0x29df4  1      OPC=1343  
  nop                          #  14    0x29df5  1      OPC=1343  
  nop                          #  15    0x29df6  1      OPC=1343  
  nop                          #  16    0x29df7  1      OPC=1343  
  nop                          #  17    0x29df8  1      OPC=1343  
  nop                          #  18    0x29df9  1      OPC=1343  
  nop                          #  19    0x29dfa  1      OPC=1343  
  callq .strdup                #  20    0x29dfb  5      OPC=260   
  movl %eax, %edi              #  21    0x29e00  2      OPC=1157  
  xorl %r9d, %r9d              #  22    0x29e02  3      OPC=3758  
  xorl %r8d, %r8d              #  23    0x29e05  3      OPC=3758  
  movl $0x2dc6c0, %ecx         #  24    0x29e08  5      OPC=1154  
  movl $0xf4240, %edx          #  25    0x29e0d  5      OPC=1154  
  movl $0x29b20, %esi          #  26    0x29e12  5      OPC=1154  
  nop                          #  27    0x29e17  1      OPC=1343  
  nop                          #  28    0x29e18  1      OPC=1343  
  nop                          #  29    0x29e19  1      OPC=1343  
  nop                          #  30    0x29e1a  1      OPC=1343  
  callq .RegisterBenchmark     #  31    0x29e1b  5      OPC=260   
  movl $0x0, 0x100475f6(%rip)  #  32    0x29e20  10     OPC=1135  
  addl $0x8, %esp              #  33    0x29e2a  3      OPC=65    
  addq %r15, %rsp              #  34    0x29e2d  3      OPC=72    
  popq %r11                    #  35    0x29e30  2      OPC=1694  
  andl $0xffffffe0, %r11d      #  36    0x29e32  7      OPC=131   
  nop                          #  37    0x29e39  1      OPC=1343  
  nop                          #  38    0x29e3a  1      OPC=1343  
  nop                          #  39    0x29e3b  1      OPC=1343  
  nop                          #  40    0x29e3c  1      OPC=1343  
  addq %r15, %r11              #  41    0x29e3d  3      OPC=72    
  jmpq %r11                    #  42    0x29e40  3      OPC=928   
  nop                          #  43    0x29e43  1      OPC=1343  
  nop                          #  44    0x29e44  1      OPC=1343  
  nop                          #  45    0x29e45  1      OPC=1343  
  nop                          #  46    0x29e46  1      OPC=1343  
                                                                  
.size SetupSmallBenchmarks, .-SetupSmallBenchmarks

