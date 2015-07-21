  .text
  .globl fopen
  .type fopen, @function

#! file-offset 0x15aba0
#! rip-offset  0x11aba0
#! capacity    96 bytes

# Text                      #  Line  RIP       Bytes  Opcode    
.fopen:                     #        0x11aba0  0      OPC=0     
  movq %rbx, -0x10(%rsp)    #  1     0x11aba0  5      OPC=1138  
  movq %r12, -0x8(%rsp)     #  2     0x11aba5  5      OPC=1138  
  subl $0x18, %esp          #  3     0x11abaa  3      OPC=2384  
  addq %r15, %rsp           #  4     0x11abad  3      OPC=72    
  movl %edi, %ebx           #  5     0x11abb0  2      OPC=1157  
  movl %esi, %r12d          #  6     0x11abb2  3      OPC=1157  
  nop                       #  7     0x11abb5  1      OPC=1343  
  nop                       #  8     0x11abb6  1      OPC=1343  
  nop                       #  9     0x11abb7  1      OPC=1343  
  nop                       #  10    0x11abb8  1      OPC=1343  
  nop                       #  11    0x11abb9  1      OPC=1343  
  nop                       #  12    0x11abba  1      OPC=1343  
  callq .__nacl_read_tp     #  13    0x11abbb  5      OPC=260   
  leaq -0x480(%rax), %rax   #  14    0x11abc0  7      OPC=1069  
  movl %r12d, %edx          #  15    0x11abc7  3      OPC=1157  
  movl %ebx, %esi           #  16    0x11abca  2      OPC=1157  
  movq 0x10(%rsp), %r12     #  17    0x11abcc  5      OPC=1161  
  movq 0x8(%rsp), %rbx      #  18    0x11abd1  5      OPC=1161  
  movl %eax, %eax           #  19    0x11abd6  2      OPC=1157  
  movl (%r15,%rax,1), %edi  #  20    0x11abd8  4      OPC=1156  
  nop                       #  21    0x11abdc  1      OPC=1343  
  nop                       #  22    0x11abdd  1      OPC=1343  
  nop                       #  23    0x11abde  1      OPC=1343  
  nop                       #  24    0x11abdf  1      OPC=1343  
  addl $0x18, %esp          #  25    0x11abe0  3      OPC=65    
  addq %r15, %rsp           #  26    0x11abe3  3      OPC=72    
  jmpq ._fopen_r            #  27    0x11abe6  5      OPC=930   
  nop                       #  28    0x11abeb  1      OPC=1343  
  nop                       #  29    0x11abec  1      OPC=1343  
  nop                       #  30    0x11abed  1      OPC=1343  
  nop                       #  31    0x11abee  1      OPC=1343  
  nop                       #  32    0x11abef  1      OPC=1343  
  nop                       #  33    0x11abf0  1      OPC=1343  
  nop                       #  34    0x11abf1  1      OPC=1343  
  nop                       #  35    0x11abf2  1      OPC=1343  
  nop                       #  36    0x11abf3  1      OPC=1343  
  nop                       #  37    0x11abf4  1      OPC=1343  
  nop                       #  38    0x11abf5  1      OPC=1343  
  nop                       #  39    0x11abf6  1      OPC=1343  
  nop                       #  40    0x11abf7  1      OPC=1343  
  nop                       #  41    0x11abf8  1      OPC=1343  
  nop                       #  42    0x11abf9  1      OPC=1343  
  nop                       #  43    0x11abfa  1      OPC=1343  
  nop                       #  44    0x11abfb  1      OPC=1343  
  nop                       #  45    0x11abfc  1      OPC=1343  
  nop                       #  46    0x11abfd  1      OPC=1343  
  nop                       #  47    0x11abfe  1      OPC=1343  
  nop                       #  48    0x11abff  1      OPC=1343  
                                                                
.size fopen, .-fopen

