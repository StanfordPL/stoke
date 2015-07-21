  .text
  .globl SetupLargeBenchmarks
  .type SetupLargeBenchmarks, @function

#! file-offset 0x69d80
#! rip-offset  0x29d80
#! capacity    96 bytes

# Text                         #  Line  RIP      Bytes  Opcode    
.SetupLargeBenchmarks:         #        0x29d80  0      OPC=0     
  subl $0x8, %esp              #  1     0x29d80  3      OPC=2384  
  addq %r15, %rsp              #  2     0x29d83  3      OPC=72    
  movl $0x10020d01, %edi       #  3     0x29d86  5      OPC=1154  
  nop                          #  4     0x29d8b  1      OPC=1343  
  nop                          #  5     0x29d8c  1      OPC=1343  
  nop                          #  6     0x29d8d  1      OPC=1343  
  nop                          #  7     0x29d8e  1      OPC=1343  
  nop                          #  8     0x29d8f  1      OPC=1343  
  nop                          #  9     0x29d90  1      OPC=1343  
  nop                          #  10    0x29d91  1      OPC=1343  
  nop                          #  11    0x29d92  1      OPC=1343  
  nop                          #  12    0x29d93  1      OPC=1343  
  nop                          #  13    0x29d94  1      OPC=1343  
  nop                          #  14    0x29d95  1      OPC=1343  
  nop                          #  15    0x29d96  1      OPC=1343  
  nop                          #  16    0x29d97  1      OPC=1343  
  nop                          #  17    0x29d98  1      OPC=1343  
  nop                          #  18    0x29d99  1      OPC=1343  
  nop                          #  19    0x29d9a  1      OPC=1343  
  callq .strdup                #  20    0x29d9b  5      OPC=260   
  movl %eax, %edi              #  21    0x29da0  2      OPC=1157  
  xorl %r9d, %r9d              #  22    0x29da2  3      OPC=3758  
  xorl %r8d, %r8d              #  23    0x29da5  3      OPC=3758  
  movl $0x1c9c380, %ecx        #  24    0x29da8  5      OPC=1154  
  movl $0x989680, %edx         #  25    0x29dad  5      OPC=1154  
  movl $0x29b20, %esi          #  26    0x29db2  5      OPC=1154  
  nop                          #  27    0x29db7  1      OPC=1343  
  nop                          #  28    0x29db8  1      OPC=1343  
  nop                          #  29    0x29db9  1      OPC=1343  
  nop                          #  30    0x29dba  1      OPC=1343  
  callq .RegisterBenchmark     #  31    0x29dbb  5      OPC=260   
  movl $0x1, 0x10047656(%rip)  #  32    0x29dc0  10     OPC=1135  
  addl $0x8, %esp              #  33    0x29dca  3      OPC=65    
  addq %r15, %rsp              #  34    0x29dcd  3      OPC=72    
  popq %r11                    #  35    0x29dd0  2      OPC=1694  
  andl $0xffffffe0, %r11d      #  36    0x29dd2  7      OPC=131   
  nop                          #  37    0x29dd9  1      OPC=1343  
  nop                          #  38    0x29dda  1      OPC=1343  
  nop                          #  39    0x29ddb  1      OPC=1343  
  nop                          #  40    0x29ddc  1      OPC=1343  
  addq %r15, %r11              #  41    0x29ddd  3      OPC=72    
  jmpq %r11                    #  42    0x29de0  3      OPC=928   
  nop                          #  43    0x29de3  1      OPC=1343  
  nop                          #  44    0x29de4  1      OPC=1343  
  nop                          #  45    0x29de5  1      OPC=1343  
  nop                          #  46    0x29de6  1      OPC=1343  
                                                                  
.size SetupLargeBenchmarks, .-SetupLargeBenchmarks

