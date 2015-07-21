  .text
  .globl strtod
  .type strtod, @function

#! file-offset 0x16b480
#! rip-offset  0x12b480
#! capacity    96 bytes

# Text                      #  Line  RIP       Bytes  Opcode    
.strtod:                    #        0x12b480  0      OPC=0     
  movq %rbx, -0x10(%rsp)    #  1     0x12b480  5      OPC=1138  
  movq %r12, -0x8(%rsp)     #  2     0x12b485  5      OPC=1138  
  subl $0x18, %esp          #  3     0x12b48a  3      OPC=2384  
  addq %r15, %rsp           #  4     0x12b48d  3      OPC=72    
  movl %edi, %ebx           #  5     0x12b490  2      OPC=1157  
  movl %esi, %r12d          #  6     0x12b492  3      OPC=1157  
  nop                       #  7     0x12b495  1      OPC=1343  
  nop                       #  8     0x12b496  1      OPC=1343  
  nop                       #  9     0x12b497  1      OPC=1343  
  nop                       #  10    0x12b498  1      OPC=1343  
  nop                       #  11    0x12b499  1      OPC=1343  
  nop                       #  12    0x12b49a  1      OPC=1343  
  callq .__nacl_read_tp     #  13    0x12b49b  5      OPC=260   
  leaq -0x480(%rax), %rax   #  14    0x12b4a0  7      OPC=1069  
  movl %r12d, %edx          #  15    0x12b4a7  3      OPC=1157  
  movl %ebx, %esi           #  16    0x12b4aa  2      OPC=1157  
  movq 0x10(%rsp), %r12     #  17    0x12b4ac  5      OPC=1161  
  movq 0x8(%rsp), %rbx      #  18    0x12b4b1  5      OPC=1161  
  movl %eax, %eax           #  19    0x12b4b6  2      OPC=1157  
  movl (%r15,%rax,1), %edi  #  20    0x12b4b8  4      OPC=1156  
  nop                       #  21    0x12b4bc  1      OPC=1343  
  nop                       #  22    0x12b4bd  1      OPC=1343  
  nop                       #  23    0x12b4be  1      OPC=1343  
  nop                       #  24    0x12b4bf  1      OPC=1343  
  addl $0x18, %esp          #  25    0x12b4c0  3      OPC=65    
  addq %r15, %rsp           #  26    0x12b4c3  3      OPC=72    
  jmpq ._strtod_r           #  27    0x12b4c6  5      OPC=930   
  nop                       #  28    0x12b4cb  1      OPC=1343  
  nop                       #  29    0x12b4cc  1      OPC=1343  
  nop                       #  30    0x12b4cd  1      OPC=1343  
  nop                       #  31    0x12b4ce  1      OPC=1343  
  nop                       #  32    0x12b4cf  1      OPC=1343  
  nop                       #  33    0x12b4d0  1      OPC=1343  
  nop                       #  34    0x12b4d1  1      OPC=1343  
  nop                       #  35    0x12b4d2  1      OPC=1343  
  nop                       #  36    0x12b4d3  1      OPC=1343  
  nop                       #  37    0x12b4d4  1      OPC=1343  
  nop                       #  38    0x12b4d5  1      OPC=1343  
  nop                       #  39    0x12b4d6  1      OPC=1343  
  nop                       #  40    0x12b4d7  1      OPC=1343  
  nop                       #  41    0x12b4d8  1      OPC=1343  
  nop                       #  42    0x12b4d9  1      OPC=1343  
  nop                       #  43    0x12b4da  1      OPC=1343  
  nop                       #  44    0x12b4db  1      OPC=1343  
  nop                       #  45    0x12b4dc  1      OPC=1343  
  nop                       #  46    0x12b4dd  1      OPC=1343  
  nop                       #  47    0x12b4de  1      OPC=1343  
  nop                       #  48    0x12b4df  1      OPC=1343  
                                                                
.size strtod, .-strtod

