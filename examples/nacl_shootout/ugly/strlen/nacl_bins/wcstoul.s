  .text
  .globl wcstoul
  .type wcstoul, @function

#! file-offset 0x182d20
#! rip-offset  0x142d20
#! capacity    128 bytes

# Text                      #  Line  RIP       Bytes  Opcode    
.wcstoul:                   #        0x142d20  0      OPC=0     
  movq %rbx, -0x18(%rsp)    #  1     0x142d20  5      OPC=1138  
  movq %r12, -0x10(%rsp)    #  2     0x142d25  5      OPC=1138  
  movl %edi, %ebx           #  3     0x142d2a  2      OPC=1157  
  movq %r13, -0x8(%rsp)     #  4     0x142d2c  5      OPC=1138  
  subl $0x18, %esp          #  5     0x142d31  3      OPC=2384  
  addq %r15, %rsp           #  6     0x142d34  3      OPC=72    
  movl %edx, %r13d          #  7     0x142d37  3      OPC=1157  
  movl %esi, %r12d          #  8     0x142d3a  3      OPC=1157  
  nop                       #  9     0x142d3d  1      OPC=1343  
  nop                       #  10    0x142d3e  1      OPC=1343  
  nop                       #  11    0x142d3f  1      OPC=1343  
  nop                       #  12    0x142d40  1      OPC=1343  
  nop                       #  13    0x142d41  1      OPC=1343  
  nop                       #  14    0x142d42  1      OPC=1343  
  nop                       #  15    0x142d43  1      OPC=1343  
  nop                       #  16    0x142d44  1      OPC=1343  
  nop                       #  17    0x142d45  1      OPC=1343  
  nop                       #  18    0x142d46  1      OPC=1343  
  nop                       #  19    0x142d47  1      OPC=1343  
  nop                       #  20    0x142d48  1      OPC=1343  
  nop                       #  21    0x142d49  1      OPC=1343  
  nop                       #  22    0x142d4a  1      OPC=1343  
  nop                       #  23    0x142d4b  1      OPC=1343  
  nop                       #  24    0x142d4c  1      OPC=1343  
  nop                       #  25    0x142d4d  1      OPC=1343  
  nop                       #  26    0x142d4e  1      OPC=1343  
  nop                       #  27    0x142d4f  1      OPC=1343  
  nop                       #  28    0x142d50  1      OPC=1343  
  nop                       #  29    0x142d51  1      OPC=1343  
  nop                       #  30    0x142d52  1      OPC=1343  
  nop                       #  31    0x142d53  1      OPC=1343  
  nop                       #  32    0x142d54  1      OPC=1343  
  nop                       #  33    0x142d55  1      OPC=1343  
  nop                       #  34    0x142d56  1      OPC=1343  
  nop                       #  35    0x142d57  1      OPC=1343  
  nop                       #  36    0x142d58  1      OPC=1343  
  nop                       #  37    0x142d59  1      OPC=1343  
  nop                       #  38    0x142d5a  1      OPC=1343  
  callq .__nacl_read_tp     #  39    0x142d5b  5      OPC=260   
  leaq -0x480(%rax), %rax   #  40    0x142d60  7      OPC=1069  
  movl %r13d, %ecx          #  41    0x142d67  3      OPC=1157  
  movl %r12d, %edx          #  42    0x142d6a  3      OPC=1157  
  movl %ebx, %esi           #  43    0x142d6d  2      OPC=1157  
  movq 0x8(%rsp), %r12      #  44    0x142d6f  5      OPC=1161  
  movq (%rsp), %rbx         #  45    0x142d74  4      OPC=1161  
  movq 0x10(%rsp), %r13     #  46    0x142d78  5      OPC=1161  
  nop                       #  47    0x142d7d  1      OPC=1343  
  nop                       #  48    0x142d7e  1      OPC=1343  
  nop                       #  49    0x142d7f  1      OPC=1343  
  movl %eax, %eax           #  50    0x142d80  2      OPC=1157  
  movl (%r15,%rax,1), %edi  #  51    0x142d82  4      OPC=1156  
  addl $0x18, %esp          #  52    0x142d86  3      OPC=65    
  addq %r15, %rsp           #  53    0x142d89  3      OPC=72    
  jmpq ._wcstoul_r          #  54    0x142d8c  5      OPC=930   
  nop                       #  55    0x142d91  1      OPC=1343  
  nop                       #  56    0x142d92  1      OPC=1343  
  nop                       #  57    0x142d93  1      OPC=1343  
  nop                       #  58    0x142d94  1      OPC=1343  
  nop                       #  59    0x142d95  1      OPC=1343  
  nop                       #  60    0x142d96  1      OPC=1343  
  nop                       #  61    0x142d97  1      OPC=1343  
  nop                       #  62    0x142d98  1      OPC=1343  
  nop                       #  63    0x142d99  1      OPC=1343  
  nop                       #  64    0x142d9a  1      OPC=1343  
  nop                       #  65    0x142d9b  1      OPC=1343  
  nop                       #  66    0x142d9c  1      OPC=1343  
  nop                       #  67    0x142d9d  1      OPC=1343  
  nop                       #  68    0x142d9e  1      OPC=1343  
  nop                       #  69    0x142d9f  1      OPC=1343  
                                                                
.size wcstoul, .-wcstoul

