  .text
  .globl vfiprintf
  .type vfiprintf, @function

#! file-offset 0x17a440
#! rip-offset  0x13a440
#! capacity    128 bytes

# Text                      #  Line  RIP       Bytes  Opcode    
.vfiprintf:                 #        0x13a440  0      OPC=0     
  movq %rbx, -0x18(%rsp)    #  1     0x13a440  5      OPC=1138  
  movq %r12, -0x10(%rsp)    #  2     0x13a445  5      OPC=1138  
  movl %edi, %ebx           #  3     0x13a44a  2      OPC=1157  
  movq %r13, -0x8(%rsp)     #  4     0x13a44c  5      OPC=1138  
  subl $0x18, %esp          #  5     0x13a451  3      OPC=2384  
  addq %r15, %rsp           #  6     0x13a454  3      OPC=72    
  movl %esi, %r12d          #  7     0x13a457  3      OPC=1157  
  movl %edx, %r13d          #  8     0x13a45a  3      OPC=1157  
  nop                       #  9     0x13a45d  1      OPC=1343  
  nop                       #  10    0x13a45e  1      OPC=1343  
  nop                       #  11    0x13a45f  1      OPC=1343  
  nop                       #  12    0x13a460  1      OPC=1343  
  nop                       #  13    0x13a461  1      OPC=1343  
  nop                       #  14    0x13a462  1      OPC=1343  
  nop                       #  15    0x13a463  1      OPC=1343  
  nop                       #  16    0x13a464  1      OPC=1343  
  nop                       #  17    0x13a465  1      OPC=1343  
  nop                       #  18    0x13a466  1      OPC=1343  
  nop                       #  19    0x13a467  1      OPC=1343  
  nop                       #  20    0x13a468  1      OPC=1343  
  nop                       #  21    0x13a469  1      OPC=1343  
  nop                       #  22    0x13a46a  1      OPC=1343  
  nop                       #  23    0x13a46b  1      OPC=1343  
  nop                       #  24    0x13a46c  1      OPC=1343  
  nop                       #  25    0x13a46d  1      OPC=1343  
  nop                       #  26    0x13a46e  1      OPC=1343  
  nop                       #  27    0x13a46f  1      OPC=1343  
  nop                       #  28    0x13a470  1      OPC=1343  
  nop                       #  29    0x13a471  1      OPC=1343  
  nop                       #  30    0x13a472  1      OPC=1343  
  nop                       #  31    0x13a473  1      OPC=1343  
  nop                       #  32    0x13a474  1      OPC=1343  
  nop                       #  33    0x13a475  1      OPC=1343  
  nop                       #  34    0x13a476  1      OPC=1343  
  nop                       #  35    0x13a477  1      OPC=1343  
  nop                       #  36    0x13a478  1      OPC=1343  
  nop                       #  37    0x13a479  1      OPC=1343  
  nop                       #  38    0x13a47a  1      OPC=1343  
  callq .__nacl_read_tp     #  39    0x13a47b  5      OPC=260   
  leaq -0x480(%rax), %rax   #  40    0x13a480  7      OPC=1069  
  movl %r13d, %ecx          #  41    0x13a487  3      OPC=1157  
  movl %r12d, %edx          #  42    0x13a48a  3      OPC=1157  
  movl %ebx, %esi           #  43    0x13a48d  2      OPC=1157  
  movq 0x8(%rsp), %r12      #  44    0x13a48f  5      OPC=1161  
  movq (%rsp), %rbx         #  45    0x13a494  4      OPC=1161  
  movq 0x10(%rsp), %r13     #  46    0x13a498  5      OPC=1161  
  nop                       #  47    0x13a49d  1      OPC=1343  
  nop                       #  48    0x13a49e  1      OPC=1343  
  nop                       #  49    0x13a49f  1      OPC=1343  
  movl %eax, %eax           #  50    0x13a4a0  2      OPC=1157  
  movl (%r15,%rax,1), %edi  #  51    0x13a4a2  4      OPC=1156  
  addl $0x18, %esp          #  52    0x13a4a6  3      OPC=65    
  addq %r15, %rsp           #  53    0x13a4a9  3      OPC=72    
  jmpq ._vfiprintf_r        #  54    0x13a4ac  5      OPC=930   
  nop                       #  55    0x13a4b1  1      OPC=1343  
  nop                       #  56    0x13a4b2  1      OPC=1343  
  nop                       #  57    0x13a4b3  1      OPC=1343  
  nop                       #  58    0x13a4b4  1      OPC=1343  
  nop                       #  59    0x13a4b5  1      OPC=1343  
  nop                       #  60    0x13a4b6  1      OPC=1343  
  nop                       #  61    0x13a4b7  1      OPC=1343  
  nop                       #  62    0x13a4b8  1      OPC=1343  
  nop                       #  63    0x13a4b9  1      OPC=1343  
  nop                       #  64    0x13a4ba  1      OPC=1343  
  nop                       #  65    0x13a4bb  1      OPC=1343  
  nop                       #  66    0x13a4bc  1      OPC=1343  
  nop                       #  67    0x13a4bd  1      OPC=1343  
  nop                       #  68    0x13a4be  1      OPC=1343  
  nop                       #  69    0x13a4bf  1      OPC=1343  
                                                                
.size vfiprintf, .-vfiprintf

