  .text
  .globl __swbuf
  .type __swbuf, @function

#! file-offset 0x1815e0
#! rip-offset  0x1415e0
#! capacity    96 bytes

# Text                      #  Line  RIP       Bytes  Opcode             
.__swbuf:                   #        0x1415e0  0      OPC=<label>        
  movq %rbx, -0x10(%rsp)    #  1     0x1415e0  5      OPC=movq_m64_r64   
  movq %r12, -0x8(%rsp)     #  2     0x1415e5  5      OPC=movq_m64_r64   
  subl $0x18, %esp          #  3     0x1415ea  3      OPC=subl_r32_imm8  
  addq %r15, %rsp           #  4     0x1415ed  3      OPC=addq_r64_r64   
  movl %edi, %ebx           #  5     0x1415f0  2      OPC=movl_r32_r32   
  movl %esi, %r12d          #  6     0x1415f2  3      OPC=movl_r32_r32   
  nop                       #  7     0x1415f5  1      OPC=nop            
  nop                       #  8     0x1415f6  1      OPC=nop            
  nop                       #  9     0x1415f7  1      OPC=nop            
  nop                       #  10    0x1415f8  1      OPC=nop            
  nop                       #  11    0x1415f9  1      OPC=nop            
  nop                       #  12    0x1415fa  1      OPC=nop            
  callq .__nacl_read_tp     #  13    0x1415fb  5      OPC=callq_label    
  leaq -0x480(%rax), %rax   #  14    0x141600  7      OPC=leaq_r64_m16   
  movl %r12d, %edx          #  15    0x141607  3      OPC=movl_r32_r32   
  movl %ebx, %esi           #  16    0x14160a  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r12     #  17    0x14160c  5      OPC=movq_r64_m64   
  movq 0x8(%rsp), %rbx      #  18    0x141611  5      OPC=movq_r64_m64   
  movl %eax, %eax           #  19    0x141616  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi  #  20    0x141618  4      OPC=movl_r32_m32   
  nop                       #  21    0x14161c  1      OPC=nop            
  nop                       #  22    0x14161d  1      OPC=nop            
  nop                       #  23    0x14161e  1      OPC=nop            
  nop                       #  24    0x14161f  1      OPC=nop            
  addl $0x18, %esp          #  25    0x141620  3      OPC=addl_r32_imm8  
  addq %r15, %rsp           #  26    0x141623  3      OPC=addq_r64_r64   
  jmpq .__swbuf_r           #  27    0x141626  5      OPC=jmpq_label_1   
  nop                       #  28    0x14162b  1      OPC=nop            
  nop                       #  29    0x14162c  1      OPC=nop            
  nop                       #  30    0x14162d  1      OPC=nop            
  nop                       #  31    0x14162e  1      OPC=nop            
  nop                       #  32    0x14162f  1      OPC=nop            
  nop                       #  33    0x141630  1      OPC=nop            
  nop                       #  34    0x141631  1      OPC=nop            
  nop                       #  35    0x141632  1      OPC=nop            
  nop                       #  36    0x141633  1      OPC=nop            
  nop                       #  37    0x141634  1      OPC=nop            
  nop                       #  38    0x141635  1      OPC=nop            
  nop                       #  39    0x141636  1      OPC=nop            
  nop                       #  40    0x141637  1      OPC=nop            
  nop                       #  41    0x141638  1      OPC=nop            
  nop                       #  42    0x141639  1      OPC=nop            
  nop                       #  43    0x14163a  1      OPC=nop            
  nop                       #  44    0x14163b  1      OPC=nop            
  nop                       #  45    0x14163c  1      OPC=nop            
  nop                       #  46    0x14163d  1      OPC=nop            
  nop                       #  47    0x14163e  1      OPC=nop            
  nop                       #  48    0x14163f  1      OPC=nop            
                                                                         
.size __swbuf, .-__swbuf

