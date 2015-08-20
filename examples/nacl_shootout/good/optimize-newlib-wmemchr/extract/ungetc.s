  .text
  .globl ungetc
  .type ungetc, @function

#! file-offset 0x1773c0
#! rip-offset  0x1373c0
#! capacity    96 bytes

# Text                      #  Line  RIP       Bytes  Opcode             
.ungetc:                    #        0x1373c0  0      OPC=<label>        
  movq %rbx, -0x10(%rsp)    #  1     0x1373c0  5      OPC=movq_m64_r64   
  movq %r12, -0x8(%rsp)     #  2     0x1373c5  5      OPC=movq_m64_r64   
  subl $0x18, %esp          #  3     0x1373ca  3      OPC=subl_r32_imm8  
  addq %r15, %rsp           #  4     0x1373cd  3      OPC=addq_r64_r64   
  movl %edi, %ebx           #  5     0x1373d0  2      OPC=movl_r32_r32   
  movl %esi, %r12d          #  6     0x1373d2  3      OPC=movl_r32_r32   
  nop                       #  7     0x1373d5  1      OPC=nop            
  nop                       #  8     0x1373d6  1      OPC=nop            
  nop                       #  9     0x1373d7  1      OPC=nop            
  nop                       #  10    0x1373d8  1      OPC=nop            
  nop                       #  11    0x1373d9  1      OPC=nop            
  nop                       #  12    0x1373da  1      OPC=nop            
  callq .__nacl_read_tp     #  13    0x1373db  5      OPC=callq_label    
  leaq -0x480(%rax), %rax   #  14    0x1373e0  7      OPC=leaq_r64_m16   
  movl %r12d, %edx          #  15    0x1373e7  3      OPC=movl_r32_r32   
  movl %ebx, %esi           #  16    0x1373ea  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r12     #  17    0x1373ec  5      OPC=movq_r64_m64   
  movq 0x8(%rsp), %rbx      #  18    0x1373f1  5      OPC=movq_r64_m64   
  movl %eax, %eax           #  19    0x1373f6  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi  #  20    0x1373f8  4      OPC=movl_r32_m32   
  nop                       #  21    0x1373fc  1      OPC=nop            
  nop                       #  22    0x1373fd  1      OPC=nop            
  nop                       #  23    0x1373fe  1      OPC=nop            
  nop                       #  24    0x1373ff  1      OPC=nop            
  addl $0x18, %esp          #  25    0x137400  3      OPC=addl_r32_imm8  
  addq %r15, %rsp           #  26    0x137403  3      OPC=addq_r64_r64   
  jmpq ._ungetc_r           #  27    0x137406  5      OPC=jmpq_label_1   
  nop                       #  28    0x13740b  1      OPC=nop            
  nop                       #  29    0x13740c  1      OPC=nop            
  nop                       #  30    0x13740d  1      OPC=nop            
  nop                       #  31    0x13740e  1      OPC=nop            
  nop                       #  32    0x13740f  1      OPC=nop            
  nop                       #  33    0x137410  1      OPC=nop            
  nop                       #  34    0x137411  1      OPC=nop            
  nop                       #  35    0x137412  1      OPC=nop            
  nop                       #  36    0x137413  1      OPC=nop            
  nop                       #  37    0x137414  1      OPC=nop            
  nop                       #  38    0x137415  1      OPC=nop            
  nop                       #  39    0x137416  1      OPC=nop            
  nop                       #  40    0x137417  1      OPC=nop            
  nop                       #  41    0x137418  1      OPC=nop            
  nop                       #  42    0x137419  1      OPC=nop            
  nop                       #  43    0x13741a  1      OPC=nop            
  nop                       #  44    0x13741b  1      OPC=nop            
  nop                       #  45    0x13741c  1      OPC=nop            
  nop                       #  46    0x13741d  1      OPC=nop            
  nop                       #  47    0x13741e  1      OPC=nop            
  nop                       #  48    0x13741f  1      OPC=nop            
                                                                         
.size ungetc, .-ungetc

