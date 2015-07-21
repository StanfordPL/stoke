  .text
  .globl __swbuf
  .type __swbuf, @function

#! file-offset 0x180680
#! rip-offset  0x140680
#! capacity    96 bytes

# Text                      #  Line  RIP       Bytes  Opcode    
.__swbuf:                   #        0x140680  0      OPC=0     
  movq %rbx, -0x10(%rsp)    #  1     0x140680  5      OPC=1138  
  movq %r12, -0x8(%rsp)     #  2     0x140685  5      OPC=1138  
  subl $0x18, %esp          #  3     0x14068a  3      OPC=2384  
  addq %r15, %rsp           #  4     0x14068d  3      OPC=72    
  movl %edi, %ebx           #  5     0x140690  2      OPC=1157  
  movl %esi, %r12d          #  6     0x140692  3      OPC=1157  
  nop                       #  7     0x140695  1      OPC=1343  
  nop                       #  8     0x140696  1      OPC=1343  
  nop                       #  9     0x140697  1      OPC=1343  
  nop                       #  10    0x140698  1      OPC=1343  
  nop                       #  11    0x140699  1      OPC=1343  
  nop                       #  12    0x14069a  1      OPC=1343  
  callq .__nacl_read_tp     #  13    0x14069b  5      OPC=260   
  leaq -0x480(%rax), %rax   #  14    0x1406a0  7      OPC=1069  
  movl %r12d, %edx          #  15    0x1406a7  3      OPC=1157  
  movl %ebx, %esi           #  16    0x1406aa  2      OPC=1157  
  movq 0x10(%rsp), %r12     #  17    0x1406ac  5      OPC=1161  
  movq 0x8(%rsp), %rbx      #  18    0x1406b1  5      OPC=1161  
  movl %eax, %eax           #  19    0x1406b6  2      OPC=1157  
  movl (%r15,%rax,1), %edi  #  20    0x1406b8  4      OPC=1156  
  nop                       #  21    0x1406bc  1      OPC=1343  
  nop                       #  22    0x1406bd  1      OPC=1343  
  nop                       #  23    0x1406be  1      OPC=1343  
  nop                       #  24    0x1406bf  1      OPC=1343  
  addl $0x18, %esp          #  25    0x1406c0  3      OPC=65    
  addq %r15, %rsp           #  26    0x1406c3  3      OPC=72    
  jmpq .__swbuf_r           #  27    0x1406c6  5      OPC=930   
  nop                       #  28    0x1406cb  1      OPC=1343  
  nop                       #  29    0x1406cc  1      OPC=1343  
  nop                       #  30    0x1406cd  1      OPC=1343  
  nop                       #  31    0x1406ce  1      OPC=1343  
  nop                       #  32    0x1406cf  1      OPC=1343  
  nop                       #  33    0x1406d0  1      OPC=1343  
  nop                       #  34    0x1406d1  1      OPC=1343  
  nop                       #  35    0x1406d2  1      OPC=1343  
  nop                       #  36    0x1406d3  1      OPC=1343  
  nop                       #  37    0x1406d4  1      OPC=1343  
  nop                       #  38    0x1406d5  1      OPC=1343  
  nop                       #  39    0x1406d6  1      OPC=1343  
  nop                       #  40    0x1406d7  1      OPC=1343  
  nop                       #  41    0x1406d8  1      OPC=1343  
  nop                       #  42    0x1406d9  1      OPC=1343  
  nop                       #  43    0x1406da  1      OPC=1343  
  nop                       #  44    0x1406db  1      OPC=1343  
  nop                       #  45    0x1406dc  1      OPC=1343  
  nop                       #  46    0x1406dd  1      OPC=1343  
  nop                       #  47    0x1406de  1      OPC=1343  
  nop                       #  48    0x1406df  1      OPC=1343  
                                                                
.size __swbuf, .-__swbuf

