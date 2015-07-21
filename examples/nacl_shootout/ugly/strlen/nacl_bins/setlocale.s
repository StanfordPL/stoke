  .text
  .globl setlocale
  .type setlocale, @function

#! file-offset 0x1612c0
#! rip-offset  0x1212c0
#! capacity    96 bytes

# Text                      #  Line  RIP       Bytes  Opcode    
.setlocale:                 #        0x1212c0  0      OPC=0     
  movq %rbx, -0x10(%rsp)    #  1     0x1212c0  5      OPC=1138  
  movq %r12, -0x8(%rsp)     #  2     0x1212c5  5      OPC=1138  
  subl $0x18, %esp          #  3     0x1212ca  3      OPC=2384  
  addq %r15, %rsp           #  4     0x1212cd  3      OPC=72    
  movl %edi, %ebx           #  5     0x1212d0  2      OPC=1157  
  movl %esi, %r12d          #  6     0x1212d2  3      OPC=1157  
  nop                       #  7     0x1212d5  1      OPC=1343  
  nop                       #  8     0x1212d6  1      OPC=1343  
  nop                       #  9     0x1212d7  1      OPC=1343  
  nop                       #  10    0x1212d8  1      OPC=1343  
  nop                       #  11    0x1212d9  1      OPC=1343  
  nop                       #  12    0x1212da  1      OPC=1343  
  callq .__nacl_read_tp     #  13    0x1212db  5      OPC=260   
  leaq -0x480(%rax), %rax   #  14    0x1212e0  7      OPC=1069  
  movl %r12d, %edx          #  15    0x1212e7  3      OPC=1157  
  movl %ebx, %esi           #  16    0x1212ea  2      OPC=1157  
  movq 0x10(%rsp), %r12     #  17    0x1212ec  5      OPC=1161  
  movq 0x8(%rsp), %rbx      #  18    0x1212f1  5      OPC=1161  
  movl %eax, %eax           #  19    0x1212f6  2      OPC=1157  
  movl (%r15,%rax,1), %edi  #  20    0x1212f8  4      OPC=1156  
  nop                       #  21    0x1212fc  1      OPC=1343  
  nop                       #  22    0x1212fd  1      OPC=1343  
  nop                       #  23    0x1212fe  1      OPC=1343  
  nop                       #  24    0x1212ff  1      OPC=1343  
  addl $0x18, %esp          #  25    0x121300  3      OPC=65    
  addq %r15, %rsp           #  26    0x121303  3      OPC=72    
  jmpq ._setlocale_r        #  27    0x121306  5      OPC=930   
  nop                       #  28    0x12130b  1      OPC=1343  
  nop                       #  29    0x12130c  1      OPC=1343  
  nop                       #  30    0x12130d  1      OPC=1343  
  nop                       #  31    0x12130e  1      OPC=1343  
  nop                       #  32    0x12130f  1      OPC=1343  
  nop                       #  33    0x121310  1      OPC=1343  
  nop                       #  34    0x121311  1      OPC=1343  
  nop                       #  35    0x121312  1      OPC=1343  
  nop                       #  36    0x121313  1      OPC=1343  
  nop                       #  37    0x121314  1      OPC=1343  
  nop                       #  38    0x121315  1      OPC=1343  
  nop                       #  39    0x121316  1      OPC=1343  
  nop                       #  40    0x121317  1      OPC=1343  
  nop                       #  41    0x121318  1      OPC=1343  
  nop                       #  42    0x121319  1      OPC=1343  
  nop                       #  43    0x12131a  1      OPC=1343  
  nop                       #  44    0x12131b  1      OPC=1343  
  nop                       #  45    0x12131c  1      OPC=1343  
  nop                       #  46    0x12131d  1      OPC=1343  
  nop                       #  47    0x12131e  1      OPC=1343  
  nop                       #  48    0x12131f  1      OPC=1343  
                                                                
.size setlocale, .-setlocale

