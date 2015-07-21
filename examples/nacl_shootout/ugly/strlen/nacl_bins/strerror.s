  .text
  .globl strerror
  .type strerror, @function

#! file-offset 0x166d40
#! rip-offset  0x126d40
#! capacity    64 bytes

# Text                      #  Line  RIP       Bytes  Opcode    
.strerror:                  #        0x126d40  0      OPC=0     
  pushq %rbx                #  1     0x126d40  1      OPC=1861  
  movl %edi, %ebx           #  2     0x126d41  2      OPC=1157  
  nop                       #  3     0x126d43  1      OPC=1343  
  nop                       #  4     0x126d44  1      OPC=1343  
  nop                       #  5     0x126d45  1      OPC=1343  
  nop                       #  6     0x126d46  1      OPC=1343  
  nop                       #  7     0x126d47  1      OPC=1343  
  nop                       #  8     0x126d48  1      OPC=1343  
  nop                       #  9     0x126d49  1      OPC=1343  
  nop                       #  10    0x126d4a  1      OPC=1343  
  nop                       #  11    0x126d4b  1      OPC=1343  
  nop                       #  12    0x126d4c  1      OPC=1343  
  nop                       #  13    0x126d4d  1      OPC=1343  
  nop                       #  14    0x126d4e  1      OPC=1343  
  nop                       #  15    0x126d4f  1      OPC=1343  
  nop                       #  16    0x126d50  1      OPC=1343  
  nop                       #  17    0x126d51  1      OPC=1343  
  nop                       #  18    0x126d52  1      OPC=1343  
  nop                       #  19    0x126d53  1      OPC=1343  
  nop                       #  20    0x126d54  1      OPC=1343  
  nop                       #  21    0x126d55  1      OPC=1343  
  nop                       #  22    0x126d56  1      OPC=1343  
  nop                       #  23    0x126d57  1      OPC=1343  
  nop                       #  24    0x126d58  1      OPC=1343  
  nop                       #  25    0x126d59  1      OPC=1343  
  nop                       #  26    0x126d5a  1      OPC=1343  
  callq .__nacl_read_tp     #  27    0x126d5b  5      OPC=260   
  leaq -0x480(%rax), %rax   #  28    0x126d60  7      OPC=1069  
  movl %ebx, %esi           #  29    0x126d67  2      OPC=1157  
  xorl %ecx, %ecx           #  30    0x126d69  2      OPC=3758  
  popq %rbx                 #  31    0x126d6b  1      OPC=1694  
  xorl %edx, %edx           #  32    0x126d6c  2      OPC=3758  
  movl %eax, %eax           #  33    0x126d6e  2      OPC=1157  
  movl (%r15,%rax,1), %edi  #  34    0x126d70  4      OPC=1156  
  jmpq ._strerror_r         #  35    0x126d74  5      OPC=930   
  nop                       #  36    0x126d79  1      OPC=1343  
  nop                       #  37    0x126d7a  1      OPC=1343  
  nop                       #  38    0x126d7b  1      OPC=1343  
  nop                       #  39    0x126d7c  1      OPC=1343  
  nop                       #  40    0x126d7d  1      OPC=1343  
  nop                       #  41    0x126d7e  1      OPC=1343  
  nop                       #  42    0x126d7f  1      OPC=1343  
                                                                
.size strerror, .-strerror

