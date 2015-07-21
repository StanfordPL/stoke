  .text
  .globl StayC
  .type StayC, @function

#! file-offset 0x68c20
#! rip-offset  0x28c20
#! capacity    128 bytes

# Text                          #  Line  RIP      Bytes  Opcode    
.StayC:                         #        0x28c20  0      OPC=0     
  pushq %r12                    #  1     0x28c20  2      OPC=1861  
  pushq %rbx                    #  2     0x28c22  1      OPC=1861  
  subl $0x8, %esp               #  3     0x28c23  3      OPC=2384  
  addq %r15, %rsp               #  4     0x28c26  3      OPC=72    
  movl %edi, %ebx               #  5     0x28c29  2      OPC=1157  
  movl $0x1, %edi               #  6     0x28c2b  5      OPC=1154  
  nop                           #  7     0x28c30  1      OPC=1343  
  nop                           #  8     0x28c31  1      OPC=1343  
  nop                           #  9     0x28c32  1      OPC=1343  
  nop                           #  10    0x28c33  1      OPC=1343  
  nop                           #  11    0x28c34  1      OPC=1343  
  nop                           #  12    0x28c35  1      OPC=1343  
  nop                           #  13    0x28c36  1      OPC=1343  
  nop                           #  14    0x28c37  1      OPC=1343  
  nop                           #  15    0x28c38  1      OPC=1343  
  nop                           #  16    0x28c39  1      OPC=1343  
  nop                           #  17    0x28c3a  1      OPC=1343  
  callq .Constraint_Create      #  18    0x28c3b  5      OPC=260   
  movl %eax, %r12d              #  19    0x28c40  3      OPC=1157  
  movl %r12d, %r12d             #  20    0x28c43  3      OPC=1157  
  movl %ebx, 0x18(%r15,%r12,1)  #  21    0x28c46  5      OPC=1136  
  movl %r12d, %r12d             #  22    0x28c4b  3      OPC=1157  
  movb $0x1, 0xd(%r15,%r12,1)   #  23    0x28c4e  6      OPC=1140  
  movl %r12d, %r12d             #  24    0x28c54  3      OPC=1157  
  movb $0x0, 0xf(%r15,%r12,1)   #  25    0x28c57  6      OPC=1140  
  movl %r12d, %edi              #  26    0x28c5d  3      OPC=1157  
  nop                           #  27    0x28c60  1      OPC=1343  
  nop                           #  28    0x28c61  1      OPC=1343  
  nop                           #  29    0x28c62  1      OPC=1343  
  nop                           #  30    0x28c63  1      OPC=1343  
  nop                           #  31    0x28c64  1      OPC=1343  
  nop                           #  32    0x28c65  1      OPC=1343  
  nop                           #  33    0x28c66  1      OPC=1343  
  nop                           #  34    0x28c67  1      OPC=1343  
  nop                           #  35    0x28c68  1      OPC=1343  
  nop                           #  36    0x28c69  1      OPC=1343  
  nop                           #  37    0x28c6a  1      OPC=1343  
  nop                           #  38    0x28c6b  1      OPC=1343  
  nop                           #  39    0x28c6c  1      OPC=1343  
  nop                           #  40    0x28c6d  1      OPC=1343  
  nop                           #  41    0x28c6e  1      OPC=1343  
  nop                           #  42    0x28c6f  1      OPC=1343  
  nop                           #  43    0x28c70  1      OPC=1343  
  nop                           #  44    0x28c71  1      OPC=1343  
  nop                           #  45    0x28c72  1      OPC=1343  
  nop                           #  46    0x28c73  1      OPC=1343  
  nop                           #  47    0x28c74  1      OPC=1343  
  nop                           #  48    0x28c75  1      OPC=1343  
  nop                           #  49    0x28c76  1      OPC=1343  
  nop                           #  50    0x28c77  1      OPC=1343  
  nop                           #  51    0x28c78  1      OPC=1343  
  nop                           #  52    0x28c79  1      OPC=1343  
  nop                           #  53    0x28c7a  1      OPC=1343  
  callq .AddConstraint          #  54    0x28c7b  5      OPC=260   
  movl %r12d, %eax              #  55    0x28c80  3      OPC=1157  
  addl $0x8, %esp               #  56    0x28c83  3      OPC=65    
  addq %r15, %rsp               #  57    0x28c86  3      OPC=72    
  popq %rbx                     #  58    0x28c89  1      OPC=1694  
  popq %r12                     #  59    0x28c8a  2      OPC=1694  
  popq %r11                     #  60    0x28c8c  2      OPC=1694  
  andl $0xffffffe0, %r11d       #  61    0x28c8e  7      OPC=131   
  nop                           #  62    0x28c95  1      OPC=1343  
  nop                           #  63    0x28c96  1      OPC=1343  
  nop                           #  64    0x28c97  1      OPC=1343  
  nop                           #  65    0x28c98  1      OPC=1343  
  addq %r15, %r11               #  66    0x28c99  3      OPC=72    
  jmpq %r11                     #  67    0x28c9c  3      OPC=928   
  nop                           #  68    0x28c9f  1      OPC=1343  
  nop                           #  69    0x28ca0  1      OPC=1343  
  nop                           #  70    0x28ca1  1      OPC=1343  
  nop                           #  71    0x28ca2  1      OPC=1343  
  nop                           #  72    0x28ca3  1      OPC=1343  
  nop                           #  73    0x28ca4  1      OPC=1343  
  nop                           #  74    0x28ca5  1      OPC=1343  
  nop                           #  75    0x28ca6  1      OPC=1343  
                                                                   
.size StayC, .-StayC

