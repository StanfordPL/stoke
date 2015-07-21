  .text
  .globl List_RemoveFirst
  .type List_RemoveFirst, @function

#! file-offset 0x660e0
#! rip-offset  0x260e0
#! capacity    96 bytes

# Text                         #  Line  RIP      Bytes  Opcode    
.List_RemoveFirst:             #        0x260e0  0      OPC=0     
  movl %edi, %edi              #  1     0x260e0  2      OPC=1157  
  movl %edi, %edi              #  2     0x260e2  2      OPC=1157  
  movl 0x8(%r15,%rdi,1), %edx  #  3     0x260e4  5      OPC=1156  
  movl %edi, %edi              #  4     0x260e9  2      OPC=1157  
  cmpl %edx, 0xc(%r15,%rdi,1)  #  5     0x260eb  5      OPC=457   
  jl .L_26120                  #  6     0x260f0  6      OPC=913   
  nop                          #  7     0x260f6  1      OPC=1343  
  nop                          #  8     0x260f7  1      OPC=1343  
  leal (,%rdx,4), %eax         #  9     0x260f8  7      OPC=1066  
  movl %edi, %edi              #  10    0x260ff  2      OPC=1157  
  addl (%r15,%rdi,1), %eax     #  11    0x26101  4      OPC=66    
  nop                          #  12    0x26105  1      OPC=1343  
  movl %eax, %eax              #  13    0x26106  2      OPC=1157  
  movl (%r15,%rax,1), %eax     #  14    0x26108  4      OPC=1156  
  addl $0x1, %edx              #  15    0x2610c  3      OPC=65    
  movl %edi, %edi              #  16    0x2610f  2      OPC=1157  
  movl %edx, 0x8(%r15,%rdi,1)  #  17    0x26111  5      OPC=1136  
  popq %r11                    #  18    0x26116  2      OPC=1694  
  andl $0xffffffe0, %r11d      #  19    0x26118  7      OPC=131   
  nop                          #  20    0x2611f  1      OPC=1343  
  nop                          #  21    0x26120  1      OPC=1343  
  nop                          #  22    0x26121  1      OPC=1343  
  nop                          #  23    0x26122  1      OPC=1343  
  addq %r15, %r11              #  24    0x26123  3      OPC=72    
  jmpq %r11                    #  25    0x26126  3      OPC=928   
  nop                          #  26    0x26129  1      OPC=1343  
  nop                          #  27    0x2612a  1      OPC=1343  
  nop                          #  28    0x2612b  1      OPC=1343  
  nop                          #  29    0x2612c  1      OPC=1343  
.L_26120:                      #        0x2612d  0      OPC=0     
  xorl %eax, %eax              #  30    0x2612d  2      OPC=3758  
  popq %r11                    #  31    0x2612f  2      OPC=1694  
  andl $0xffffffe0, %r11d      #  32    0x26131  7      OPC=131   
  nop                          #  33    0x26138  1      OPC=1343  
  nop                          #  34    0x26139  1      OPC=1343  
  nop                          #  35    0x2613a  1      OPC=1343  
  nop                          #  36    0x2613b  1      OPC=1343  
  addq %r15, %r11              #  37    0x2613c  3      OPC=72    
  jmpq %r11                    #  38    0x2613f  3      OPC=928   
  nop                          #  39    0x26142  1      OPC=1343  
  nop                          #  40    0x26143  1      OPC=1343  
  nop                          #  41    0x26144  1      OPC=1343  
  nop                          #  42    0x26145  1      OPC=1343  
  nop                          #  43    0x26146  1      OPC=1343  
  nop                          #  44    0x26147  1      OPC=1343  
  nop                          #  45    0x26148  1      OPC=1343  
  nop                          #  46    0x26149  1      OPC=1343  
  nop                          #  47    0x2614a  1      OPC=1343  
  nop                          #  48    0x2614b  1      OPC=1343  
  nop                          #  49    0x2614c  1      OPC=1343  
  nop                          #  50    0x2614d  1      OPC=1343  
  nop                          #  51    0x2614e  1      OPC=1343  
  nop                          #  52    0x2614f  1      OPC=1343  
  nop                          #  53    0x26150  1      OPC=1343  
  nop                          #  54    0x26151  1      OPC=1343  
  nop                          #  55    0x26152  1      OPC=1343  
  nop                          #  56    0x26153  1      OPC=1343  
                                                                  
.size List_RemoveFirst, .-List_RemoveFirst

