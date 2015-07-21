  .text
  .globl IncrementalAdd
  .type IncrementalAdd, @function

#! file-offset 0x68780
#! rip-offset  0x28780
#! capacity    96 bytes

# Text                         #  Line  RIP      Bytes  Opcode    
.IncrementalAdd:               #        0x28780  0      OPC=0     
  subl $0x8, %esp              #  1     0x28780  3      OPC=2384  
  addq %r15, %rsp              #  2     0x28783  3      OPC=72    
  movl %edi, %edi              #  3     0x28786  2      OPC=1157  
  addl $0x1, 0x100489b5(%rip)  #  4     0x28788  7      OPC=51    
  xchgw %ax, %ax               #  5     0x2878f  2      OPC=3700  
  nop                          #  6     0x28791  1      OPC=1343  
  nop                          #  7     0x28792  1      OPC=1343  
  nop                          #  8     0x28793  1      OPC=1343  
  nop                          #  9     0x28794  1      OPC=1343  
  nop                          #  10    0x28795  1      OPC=1343  
  nop                          #  11    0x28796  1      OPC=1343  
  nop                          #  12    0x28797  1      OPC=1343  
  nop                          #  13    0x28798  1      OPC=1343  
  nop                          #  14    0x28799  1      OPC=1343  
  nop                          #  15    0x2879a  1      OPC=1343  
  nop                          #  16    0x2879b  1      OPC=1343  
  nop                          #  17    0x2879c  1      OPC=1343  
  nop                          #  18    0x2879d  1      OPC=1343  
  nop                          #  19    0x2879e  1      OPC=1343  
  nop                          #  20    0x2879f  1      OPC=1343  
.L_287a0:                      #        0x287a0  0      OPC=0     
  nop                          #  21    0x287a0  1      OPC=1343  
  nop                          #  22    0x287a1  1      OPC=1343  
  nop                          #  23    0x287a2  1      OPC=1343  
  nop                          #  24    0x287a3  1      OPC=1343  
  nop                          #  25    0x287a4  1      OPC=1343  
  nop                          #  26    0x287a5  1      OPC=1343  
  nop                          #  27    0x287a6  1      OPC=1343  
  nop                          #  28    0x287a7  1      OPC=1343  
  nop                          #  29    0x287a8  1      OPC=1343  
  nop                          #  30    0x287a9  1      OPC=1343  
  nop                          #  31    0x287aa  1      OPC=1343  
  nop                          #  32    0x287ab  1      OPC=1343  
  nop                          #  33    0x287ac  1      OPC=1343  
  nop                          #  34    0x287ad  1      OPC=1343  
  nop                          #  35    0x287ae  1      OPC=1343  
  nop                          #  36    0x287af  1      OPC=1343  
  nop                          #  37    0x287b0  1      OPC=1343  
  nop                          #  38    0x287b1  1      OPC=1343  
  nop                          #  39    0x287b2  1      OPC=1343  
  nop                          #  40    0x287b3  1      OPC=1343  
  nop                          #  41    0x287b4  1      OPC=1343  
  nop                          #  42    0x287b5  1      OPC=1343  
  nop                          #  43    0x287b6  1      OPC=1343  
  nop                          #  44    0x287b7  1      OPC=1343  
  nop                          #  45    0x287b8  1      OPC=1343  
  nop                          #  46    0x287b9  1      OPC=1343  
  nop                          #  47    0x287ba  1      OPC=1343  
  callq .Satisfy               #  48    0x287bb  5      OPC=260   
  movl %eax, %edi              #  49    0x287c0  2      OPC=1157  
  testq %rdi, %rdi             #  50    0x287c2  3      OPC=2438  
  jne .L_287a0                 #  51    0x287c5  6      OPC=963   
  nop                          #  52    0x287cb  1      OPC=1343  
  nop                          #  53    0x287cc  1      OPC=1343  
  addl $0x8, %esp              #  54    0x287cd  3      OPC=65    
  addq %r15, %rsp              #  55    0x287d0  3      OPC=72    
  popq %r11                    #  56    0x287d3  2      OPC=1694  
  andl $0xffffffe0, %r11d      #  57    0x287d5  7      OPC=131   
  nop                          #  58    0x287dc  1      OPC=1343  
  nop                          #  59    0x287dd  1      OPC=1343  
  nop                          #  60    0x287de  1      OPC=1343  
  nop                          #  61    0x287df  1      OPC=1343  
  addq %r15, %r11              #  62    0x287e0  3      OPC=72    
  jmpq %r11                    #  63    0x287e3  3      OPC=928   
  nop                          #  64    0x287e6  1      OPC=1343  
  nop                          #  65    0x287e7  1      OPC=1343  
  nop                          #  66    0x287e8  1      OPC=1343  
  nop                          #  67    0x287e9  1      OPC=1343  
  nop                          #  68    0x287ea  1      OPC=1343  
  nop                          #  69    0x287eb  1      OPC=1343  
  nop                          #  70    0x287ec  1      OPC=1343  
                                                                  
.size IncrementalAdd, .-IncrementalAdd

