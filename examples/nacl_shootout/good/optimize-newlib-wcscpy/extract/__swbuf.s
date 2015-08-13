  .text
  .globl __swbuf
  .type __swbuf, @function

#! file-offset 0x180bc0
#! rip-offset  0x140bc0
#! capacity    96 bytes

# Text                      #  Line  RIP       Bytes  Opcode             
.__swbuf:                   #        0x140bc0  0      OPC=<label>        
  movq %rbx, -0x10(%rsp)    #  1     0x140bc0  5      OPC=movq_m64_r64   
  movq %r12, -0x8(%rsp)     #  2     0x140bc5  5      OPC=movq_m64_r64   
  subl $0x18, %esp          #  3     0x140bca  3      OPC=subl_r32_imm8  
  addq %r15, %rsp           #  4     0x140bcd  3      OPC=addq_r64_r64   
  movl %edi, %ebx           #  5     0x140bd0  2      OPC=movl_r32_r32   
  movl %esi, %r12d          #  6     0x140bd2  3      OPC=movl_r32_r32   
  nop                       #  7     0x140bd5  1      OPC=nop            
  nop                       #  8     0x140bd6  1      OPC=nop            
  nop                       #  9     0x140bd7  1      OPC=nop            
  nop                       #  10    0x140bd8  1      OPC=nop            
  nop                       #  11    0x140bd9  1      OPC=nop            
  nop                       #  12    0x140bda  1      OPC=nop            
  callq .__nacl_read_tp     #  13    0x140bdb  5      OPC=callq_label    
  leaq -0x480(%rax), %rax   #  14    0x140be0  7      OPC=leaq_r64_m16   
  movl %r12d, %edx          #  15    0x140be7  3      OPC=movl_r32_r32   
  movl %ebx, %esi           #  16    0x140bea  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r12     #  17    0x140bec  5      OPC=movq_r64_m64   
  movq 0x8(%rsp), %rbx      #  18    0x140bf1  5      OPC=movq_r64_m64   
  movl %eax, %eax           #  19    0x140bf6  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi  #  20    0x140bf8  4      OPC=movl_r32_m32   
  nop                       #  21    0x140bfc  1      OPC=nop            
  nop                       #  22    0x140bfd  1      OPC=nop            
  nop                       #  23    0x140bfe  1      OPC=nop            
  nop                       #  24    0x140bff  1      OPC=nop            
  addl $0x18, %esp          #  25    0x140c00  3      OPC=addl_r32_imm8  
  addq %r15, %rsp           #  26    0x140c03  3      OPC=addq_r64_r64   
  jmpq .__swbuf_r           #  27    0x140c06  5      OPC=jmpq_label_1   
  nop                       #  28    0x140c0b  1      OPC=nop            
  nop                       #  29    0x140c0c  1      OPC=nop            
  nop                       #  30    0x140c0d  1      OPC=nop            
  nop                       #  31    0x140c0e  1      OPC=nop            
  nop                       #  32    0x140c0f  1      OPC=nop            
  nop                       #  33    0x140c10  1      OPC=nop            
  nop                       #  34    0x140c11  1      OPC=nop            
  nop                       #  35    0x140c12  1      OPC=nop            
  nop                       #  36    0x140c13  1      OPC=nop            
  nop                       #  37    0x140c14  1      OPC=nop            
  nop                       #  38    0x140c15  1      OPC=nop            
  nop                       #  39    0x140c16  1      OPC=nop            
  nop                       #  40    0x140c17  1      OPC=nop            
  nop                       #  41    0x140c18  1      OPC=nop            
  nop                       #  42    0x140c19  1      OPC=nop            
  nop                       #  43    0x140c1a  1      OPC=nop            
  nop                       #  44    0x140c1b  1      OPC=nop            
  nop                       #  45    0x140c1c  1      OPC=nop            
  nop                       #  46    0x140c1d  1      OPC=nop            
  nop                       #  47    0x140c1e  1      OPC=nop            
  nop                       #  48    0x140c1f  1      OPC=nop            
                                                                         
.size __swbuf, .-__swbuf

