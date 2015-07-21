  .text
  .globl EditC
  .type EditC, @function

#! file-offset 0x68ae0
#! rip-offset  0x28ae0
#! capacity    128 bytes

# Text                          #  Line  RIP      Bytes  Opcode    
.EditC:                         #        0x28ae0  0      OPC=0     
  pushq %r12                    #  1     0x28ae0  2      OPC=1861  
  pushq %rbx                    #  2     0x28ae2  1      OPC=1861  
  subl $0x8, %esp               #  3     0x28ae3  3      OPC=2384  
  addq %r15, %rsp               #  4     0x28ae6  3      OPC=72    
  movl %edi, %ebx               #  5     0x28ae9  2      OPC=1157  
  movl $0x1, %edi               #  6     0x28aeb  5      OPC=1154  
  nop                           #  7     0x28af0  1      OPC=1343  
  nop                           #  8     0x28af1  1      OPC=1343  
  nop                           #  9     0x28af2  1      OPC=1343  
  nop                           #  10    0x28af3  1      OPC=1343  
  nop                           #  11    0x28af4  1      OPC=1343  
  nop                           #  12    0x28af5  1      OPC=1343  
  nop                           #  13    0x28af6  1      OPC=1343  
  nop                           #  14    0x28af7  1      OPC=1343  
  nop                           #  15    0x28af8  1      OPC=1343  
  nop                           #  16    0x28af9  1      OPC=1343  
  nop                           #  17    0x28afa  1      OPC=1343  
  callq .Constraint_Create      #  18    0x28afb  5      OPC=260   
  movl %eax, %r12d              #  19    0x28b00  3      OPC=1157  
  movl %r12d, %r12d             #  20    0x28b03  3      OPC=1157  
  movl $0x1, 0x4(%r15,%r12,1)   #  21    0x28b06  9      OPC=1135  
  movl %r12d, %r12d             #  22    0x28b0f  3      OPC=1157  
  movl %ebx, 0x18(%r15,%r12,1)  #  23    0x28b12  5      OPC=1136  
  movl %r12d, %r12d             #  24    0x28b17  3      OPC=1157  
  movb $0x1, 0xd(%r15,%r12,1)   #  25    0x28b1a  6      OPC=1140  
  movl %r12d, %r12d             #  26    0x28b20  3      OPC=1157  
  movb $0x0, 0xf(%r15,%r12,1)   #  27    0x28b23  6      OPC=1140  
  movl %r12d, %edi              #  28    0x28b29  3      OPC=1157  
  nop                           #  29    0x28b2c  1      OPC=1343  
  nop                           #  30    0x28b2d  1      OPC=1343  
  nop                           #  31    0x28b2e  1      OPC=1343  
  nop                           #  32    0x28b2f  1      OPC=1343  
  nop                           #  33    0x28b30  1      OPC=1343  
  nop                           #  34    0x28b31  1      OPC=1343  
  nop                           #  35    0x28b32  1      OPC=1343  
  nop                           #  36    0x28b33  1      OPC=1343  
  nop                           #  37    0x28b34  1      OPC=1343  
  nop                           #  38    0x28b35  1      OPC=1343  
  nop                           #  39    0x28b36  1      OPC=1343  
  nop                           #  40    0x28b37  1      OPC=1343  
  nop                           #  41    0x28b38  1      OPC=1343  
  nop                           #  42    0x28b39  1      OPC=1343  
  nop                           #  43    0x28b3a  1      OPC=1343  
  callq .AddConstraint          #  44    0x28b3b  5      OPC=260   
  movl %r12d, %eax              #  45    0x28b40  3      OPC=1157  
  addl $0x8, %esp               #  46    0x28b43  3      OPC=65    
  addq %r15, %rsp               #  47    0x28b46  3      OPC=72    
  popq %rbx                     #  48    0x28b49  1      OPC=1694  
  popq %r12                     #  49    0x28b4a  2      OPC=1694  
  popq %r11                     #  50    0x28b4c  2      OPC=1694  
  andl $0xffffffe0, %r11d       #  51    0x28b4e  7      OPC=131   
  nop                           #  52    0x28b55  1      OPC=1343  
  nop                           #  53    0x28b56  1      OPC=1343  
  nop                           #  54    0x28b57  1      OPC=1343  
  nop                           #  55    0x28b58  1      OPC=1343  
  addq %r15, %r11               #  56    0x28b59  3      OPC=72    
  jmpq %r11                     #  57    0x28b5c  3      OPC=928   
  nop                           #  58    0x28b5f  1      OPC=1343  
  nop                           #  59    0x28b60  1      OPC=1343  
  nop                           #  60    0x28b61  1      OPC=1343  
  nop                           #  61    0x28b62  1      OPC=1343  
  nop                           #  62    0x28b63  1      OPC=1343  
  nop                           #  63    0x28b64  1      OPC=1343  
  nop                           #  64    0x28b65  1      OPC=1343  
  nop                           #  65    0x28b66  1      OPC=1343  
                                                                   
.size EditC, .-EditC

