  .text
  .globl strtoul
  .type strtoul, @function

#! file-offset 0x16c0c0
#! rip-offset  0x12c0c0
#! capacity    128 bytes

# Text                      #  Line  RIP       Bytes  Opcode             
.strtoul:                   #        0x12c0c0  0      OPC=<label>        
  movq %rbx, -0x18(%rsp)    #  1     0x12c0c0  5      OPC=movq_m64_r64   
  movq %r12, -0x10(%rsp)    #  2     0x12c0c5  5      OPC=movq_m64_r64   
  movl %edi, %ebx           #  3     0x12c0ca  2      OPC=movl_r32_r32   
  movq %r13, -0x8(%rsp)     #  4     0x12c0cc  5      OPC=movq_m64_r64   
  subl $0x18, %esp          #  5     0x12c0d1  3      OPC=subl_r32_imm8  
  addq %r15, %rsp           #  6     0x12c0d4  3      OPC=addq_r64_r64   
  movl %edx, %r13d          #  7     0x12c0d7  3      OPC=movl_r32_r32   
  movl %esi, %r12d          #  8     0x12c0da  3      OPC=movl_r32_r32   
  nop                       #  9     0x12c0dd  1      OPC=nop            
  nop                       #  10    0x12c0de  1      OPC=nop            
  nop                       #  11    0x12c0df  1      OPC=nop            
  nop                       #  12    0x12c0e0  1      OPC=nop            
  nop                       #  13    0x12c0e1  1      OPC=nop            
  nop                       #  14    0x12c0e2  1      OPC=nop            
  nop                       #  15    0x12c0e3  1      OPC=nop            
  nop                       #  16    0x12c0e4  1      OPC=nop            
  nop                       #  17    0x12c0e5  1      OPC=nop            
  nop                       #  18    0x12c0e6  1      OPC=nop            
  nop                       #  19    0x12c0e7  1      OPC=nop            
  nop                       #  20    0x12c0e8  1      OPC=nop            
  nop                       #  21    0x12c0e9  1      OPC=nop            
  nop                       #  22    0x12c0ea  1      OPC=nop            
  nop                       #  23    0x12c0eb  1      OPC=nop            
  nop                       #  24    0x12c0ec  1      OPC=nop            
  nop                       #  25    0x12c0ed  1      OPC=nop            
  nop                       #  26    0x12c0ee  1      OPC=nop            
  nop                       #  27    0x12c0ef  1      OPC=nop            
  nop                       #  28    0x12c0f0  1      OPC=nop            
  nop                       #  29    0x12c0f1  1      OPC=nop            
  nop                       #  30    0x12c0f2  1      OPC=nop            
  nop                       #  31    0x12c0f3  1      OPC=nop            
  nop                       #  32    0x12c0f4  1      OPC=nop            
  nop                       #  33    0x12c0f5  1      OPC=nop            
  nop                       #  34    0x12c0f6  1      OPC=nop            
  nop                       #  35    0x12c0f7  1      OPC=nop            
  nop                       #  36    0x12c0f8  1      OPC=nop            
  nop                       #  37    0x12c0f9  1      OPC=nop            
  nop                       #  38    0x12c0fa  1      OPC=nop            
  callq .__nacl_read_tp     #  39    0x12c0fb  5      OPC=callq_label    
  leaq -0x480(%rax), %rax   #  40    0x12c100  7      OPC=leaq_r64_m16   
  movl %r13d, %ecx          #  41    0x12c107  3      OPC=movl_r32_r32   
  movl %r12d, %edx          #  42    0x12c10a  3      OPC=movl_r32_r32   
  movl %ebx, %esi           #  43    0x12c10d  2      OPC=movl_r32_r32   
  movq 0x8(%rsp), %r12      #  44    0x12c10f  5      OPC=movq_r64_m64   
  movq (%rsp), %rbx         #  45    0x12c114  4      OPC=movq_r64_m64   
  movq 0x10(%rsp), %r13     #  46    0x12c118  5      OPC=movq_r64_m64   
  nop                       #  47    0x12c11d  1      OPC=nop            
  nop                       #  48    0x12c11e  1      OPC=nop            
  nop                       #  49    0x12c11f  1      OPC=nop            
  movl %eax, %eax           #  50    0x12c120  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi  #  51    0x12c122  4      OPC=movl_r32_m32   
  addl $0x18, %esp          #  52    0x12c126  3      OPC=addl_r32_imm8  
  addq %r15, %rsp           #  53    0x12c129  3      OPC=addq_r64_r64   
  jmpq ._strtoul_r          #  54    0x12c12c  5      OPC=jmpq_label_1   
  nop                       #  55    0x12c131  1      OPC=nop            
  nop                       #  56    0x12c132  1      OPC=nop            
  nop                       #  57    0x12c133  1      OPC=nop            
  nop                       #  58    0x12c134  1      OPC=nop            
  nop                       #  59    0x12c135  1      OPC=nop            
  nop                       #  60    0x12c136  1      OPC=nop            
  nop                       #  61    0x12c137  1      OPC=nop            
  nop                       #  62    0x12c138  1      OPC=nop            
  nop                       #  63    0x12c139  1      OPC=nop            
  nop                       #  64    0x12c13a  1      OPC=nop            
  nop                       #  65    0x12c13b  1      OPC=nop            
  nop                       #  66    0x12c13c  1      OPC=nop            
  nop                       #  67    0x12c13d  1      OPC=nop            
  nop                       #  68    0x12c13e  1      OPC=nop            
  nop                       #  69    0x12c13f  1      OPC=nop            
                                                                         
.size strtoul, .-strtoul

