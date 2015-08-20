  .text
  .globl __errno
  .type __errno, @function

#! file-offset 0x1597c0
#! rip-offset  0x1197c0
#! capacity    64 bytes

# Text                      #  Line  RIP       Bytes  Opcode              
.__errno:                   #        0x1197c0  0      OPC=<label>         
  nop                       #  1     0x1197c0  1      OPC=nop             
  nop                       #  2     0x1197c1  1      OPC=nop             
  nop                       #  3     0x1197c2  1      OPC=nop             
  nop                       #  4     0x1197c3  1      OPC=nop             
  nop                       #  5     0x1197c4  1      OPC=nop             
  nop                       #  6     0x1197c5  1      OPC=nop             
  nop                       #  7     0x1197c6  1      OPC=nop             
  nop                       #  8     0x1197c7  1      OPC=nop             
  nop                       #  9     0x1197c8  1      OPC=nop             
  nop                       #  10    0x1197c9  1      OPC=nop             
  nop                       #  11    0x1197ca  1      OPC=nop             
  nop                       #  12    0x1197cb  1      OPC=nop             
  nop                       #  13    0x1197cc  1      OPC=nop             
  nop                       #  14    0x1197cd  1      OPC=nop             
  nop                       #  15    0x1197ce  1      OPC=nop             
  nop                       #  16    0x1197cf  1      OPC=nop             
  nop                       #  17    0x1197d0  1      OPC=nop             
  nop                       #  18    0x1197d1  1      OPC=nop             
  nop                       #  19    0x1197d2  1      OPC=nop             
  nop                       #  20    0x1197d3  1      OPC=nop             
  nop                       #  21    0x1197d4  1      OPC=nop             
  nop                       #  22    0x1197d5  1      OPC=nop             
  nop                       #  23    0x1197d6  1      OPC=nop             
  nop                       #  24    0x1197d7  1      OPC=nop             
  nop                       #  25    0x1197d8  1      OPC=nop             
  nop                       #  26    0x1197d9  1      OPC=nop             
  nop                       #  27    0x1197da  1      OPC=nop             
  callq .__nacl_read_tp     #  28    0x1197db  5      OPC=callq_label     
  popq %r11                 #  29    0x1197e0  2      OPC=popq_r64_1      
  leaq -0x480(%rax), %rax   #  30    0x1197e2  7      OPC=leaq_r64_m16    
  movl %eax, %eax           #  31    0x1197e9  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax  #  32    0x1197eb  4      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d   #  33    0x1197ef  7      OPC=andl_r32_imm32  
  nop                       #  34    0x1197f6  1      OPC=nop             
  nop                       #  35    0x1197f7  1      OPC=nop             
  nop                       #  36    0x1197f8  1      OPC=nop             
  nop                       #  37    0x1197f9  1      OPC=nop             
  addq %r15, %r11           #  38    0x1197fa  3      OPC=addq_r64_r64    
  jmpq %r11                 #  39    0x1197fd  3      OPC=jmpq_r64        
  nop                       #  40    0x119800  1      OPC=nop             
  nop                       #  41    0x119801  1      OPC=nop             
  nop                       #  42    0x119802  1      OPC=nop             
  nop                       #  43    0x119803  1      OPC=nop             
  nop                       #  44    0x119804  1      OPC=nop             
  nop                       #  45    0x119805  1      OPC=nop             
  nop                       #  46    0x119806  1      OPC=nop             
                                                                          
.size __errno, .-__errno

