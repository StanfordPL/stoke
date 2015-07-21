  .text
  .globl arrayfile_rewind
  .type arrayfile_rewind, @function

#! file-offset 0x6a860
#! rip-offset  0x2a860
#! capacity    64 bytes

# Text                          #  Line  RIP      Bytes  Opcode    
.arrayfile_rewind:              #        0x2a860  0      OPC=0     
  movl %edi, %edi               #  1     0x2a860  2      OPC=1157  
  movl %edi, %edi               #  2     0x2a862  2      OPC=1157  
  movl $0x0, (%r15,%rdi,1)      #  3     0x2a864  8      OPC=1135  
  movl %edi, %edi               #  4     0x2a86c  2      OPC=1157  
  movl 0x10(%r15,%rdi,1), %edx  #  5     0x2a86e  5      OPC=1156  
  shll $0x2, %edx               #  6     0x2a873  3      OPC=2269  
  movl %edi, %edi               #  7     0x2a876  2      OPC=1157  
  movl 0x4(%r15,%rdi,1), %edi   #  8     0x2a878  5      OPC=1156  
  xorl %esi, %esi               #  9     0x2a87d  2      OPC=3758  
  nop                           #  10    0x2a87f  1      OPC=1343  
  jmpq .memset                  #  11    0x2a880  5      OPC=930   
  nop                           #  12    0x2a885  1      OPC=1343  
  nop                           #  13    0x2a886  1      OPC=1343  
  nop                           #  14    0x2a887  1      OPC=1343  
  nop                           #  15    0x2a888  1      OPC=1343  
  nop                           #  16    0x2a889  1      OPC=1343  
  nop                           #  17    0x2a88a  1      OPC=1343  
  nop                           #  18    0x2a88b  1      OPC=1343  
  nop                           #  19    0x2a88c  1      OPC=1343  
  nop                           #  20    0x2a88d  1      OPC=1343  
  nop                           #  21    0x2a88e  1      OPC=1343  
  nop                           #  22    0x2a88f  1      OPC=1343  
  nop                           #  23    0x2a890  1      OPC=1343  
  nop                           #  24    0x2a891  1      OPC=1343  
  nop                           #  25    0x2a892  1      OPC=1343  
  nop                           #  26    0x2a893  1      OPC=1343  
  nop                           #  27    0x2a894  1      OPC=1343  
  nop                           #  28    0x2a895  1      OPC=1343  
  nop                           #  29    0x2a896  1      OPC=1343  
  nop                           #  30    0x2a897  1      OPC=1343  
  nop                           #  31    0x2a898  1      OPC=1343  
  nop                           #  32    0x2a899  1      OPC=1343  
  nop                           #  33    0x2a89a  1      OPC=1343  
  nop                           #  34    0x2a89b  1      OPC=1343  
  nop                           #  35    0x2a89c  1      OPC=1343  
  nop                           #  36    0x2a89d  1      OPC=1343  
  nop                           #  37    0x2a89e  1      OPC=1343  
  nop                           #  38    0x2a89f  1      OPC=1343  
                                                                   
.size arrayfile_rewind, .-arrayfile_rewind

