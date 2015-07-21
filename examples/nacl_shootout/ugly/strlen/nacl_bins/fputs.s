  .text
  .globl fputs
  .type fputs, @function

#! file-offset 0x15b280
#! rip-offset  0x11b280
#! capacity    96 bytes

# Text                      #  Line  RIP       Bytes  Opcode    
.fputs:                     #        0x11b280  0      OPC=0     
  movq %rbx, -0x10(%rsp)    #  1     0x11b280  5      OPC=1138  
  movq %r12, -0x8(%rsp)     #  2     0x11b285  5      OPC=1138  
  subl $0x18, %esp          #  3     0x11b28a  3      OPC=2384  
  addq %r15, %rsp           #  4     0x11b28d  3      OPC=72    
  movl %edi, %ebx           #  5     0x11b290  2      OPC=1157  
  movl %esi, %r12d          #  6     0x11b292  3      OPC=1157  
  nop                       #  7     0x11b295  1      OPC=1343  
  nop                       #  8     0x11b296  1      OPC=1343  
  nop                       #  9     0x11b297  1      OPC=1343  
  nop                       #  10    0x11b298  1      OPC=1343  
  nop                       #  11    0x11b299  1      OPC=1343  
  nop                       #  12    0x11b29a  1      OPC=1343  
  callq .__nacl_read_tp     #  13    0x11b29b  5      OPC=260   
  leaq -0x480(%rax), %rax   #  14    0x11b2a0  7      OPC=1069  
  movl %r12d, %edx          #  15    0x11b2a7  3      OPC=1157  
  movl %ebx, %esi           #  16    0x11b2aa  2      OPC=1157  
  movq 0x10(%rsp), %r12     #  17    0x11b2ac  5      OPC=1161  
  movq 0x8(%rsp), %rbx      #  18    0x11b2b1  5      OPC=1161  
  movl %eax, %eax           #  19    0x11b2b6  2      OPC=1157  
  movl (%r15,%rax,1), %edi  #  20    0x11b2b8  4      OPC=1156  
  nop                       #  21    0x11b2bc  1      OPC=1343  
  nop                       #  22    0x11b2bd  1      OPC=1343  
  nop                       #  23    0x11b2be  1      OPC=1343  
  nop                       #  24    0x11b2bf  1      OPC=1343  
  addl $0x18, %esp          #  25    0x11b2c0  3      OPC=65    
  addq %r15, %rsp           #  26    0x11b2c3  3      OPC=72    
  jmpq ._fputs_r            #  27    0x11b2c6  5      OPC=930   
  nop                       #  28    0x11b2cb  1      OPC=1343  
  nop                       #  29    0x11b2cc  1      OPC=1343  
  nop                       #  30    0x11b2cd  1      OPC=1343  
  nop                       #  31    0x11b2ce  1      OPC=1343  
  nop                       #  32    0x11b2cf  1      OPC=1343  
  nop                       #  33    0x11b2d0  1      OPC=1343  
  nop                       #  34    0x11b2d1  1      OPC=1343  
  nop                       #  35    0x11b2d2  1      OPC=1343  
  nop                       #  36    0x11b2d3  1      OPC=1343  
  nop                       #  37    0x11b2d4  1      OPC=1343  
  nop                       #  38    0x11b2d5  1      OPC=1343  
  nop                       #  39    0x11b2d6  1      OPC=1343  
  nop                       #  40    0x11b2d7  1      OPC=1343  
  nop                       #  41    0x11b2d8  1      OPC=1343  
  nop                       #  42    0x11b2d9  1      OPC=1343  
  nop                       #  43    0x11b2da  1      OPC=1343  
  nop                       #  44    0x11b2db  1      OPC=1343  
  nop                       #  45    0x11b2dc  1      OPC=1343  
  nop                       #  46    0x11b2dd  1      OPC=1343  
  nop                       #  47    0x11b2de  1      OPC=1343  
  nop                       #  48    0x11b2df  1      OPC=1343  
                                                                
.size fputs, .-fputs

