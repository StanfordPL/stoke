  .text
  .globl fputs
  .type fputs, @function

#! file-offset 0x15b7c0
#! rip-offset  0x11b7c0
#! capacity    96 bytes

# Text                      #  Line  RIP       Bytes  Opcode             
.fputs:                     #        0x11b7c0  0      OPC=<label>        
  movq %rbx, -0x10(%rsp)    #  1     0x11b7c0  5      OPC=movq_m64_r64   
  movq %r12, -0x8(%rsp)     #  2     0x11b7c5  5      OPC=movq_m64_r64   
  subl $0x18, %esp          #  3     0x11b7ca  3      OPC=subl_r32_imm8  
  addq %r15, %rsp           #  4     0x11b7cd  3      OPC=addq_r64_r64   
  movl %edi, %ebx           #  5     0x11b7d0  2      OPC=movl_r32_r32   
  movl %esi, %r12d          #  6     0x11b7d2  3      OPC=movl_r32_r32   
  nop                       #  7     0x11b7d5  1      OPC=nop            
  nop                       #  8     0x11b7d6  1      OPC=nop            
  nop                       #  9     0x11b7d7  1      OPC=nop            
  nop                       #  10    0x11b7d8  1      OPC=nop            
  nop                       #  11    0x11b7d9  1      OPC=nop            
  nop                       #  12    0x11b7da  1      OPC=nop            
  callq .__nacl_read_tp     #  13    0x11b7db  5      OPC=callq_label    
  leaq -0x480(%rax), %rax   #  14    0x11b7e0  7      OPC=leaq_r64_m16   
  movl %r12d, %edx          #  15    0x11b7e7  3      OPC=movl_r32_r32   
  movl %ebx, %esi           #  16    0x11b7ea  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r12     #  17    0x11b7ec  5      OPC=movq_r64_m64   
  movq 0x8(%rsp), %rbx      #  18    0x11b7f1  5      OPC=movq_r64_m64   
  movl %eax, %eax           #  19    0x11b7f6  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi  #  20    0x11b7f8  4      OPC=movl_r32_m32   
  nop                       #  21    0x11b7fc  1      OPC=nop            
  nop                       #  22    0x11b7fd  1      OPC=nop            
  nop                       #  23    0x11b7fe  1      OPC=nop            
  nop                       #  24    0x11b7ff  1      OPC=nop            
  addl $0x18, %esp          #  25    0x11b800  3      OPC=addl_r32_imm8  
  addq %r15, %rsp           #  26    0x11b803  3      OPC=addq_r64_r64   
  jmpq ._fputs_r            #  27    0x11b806  5      OPC=jmpq_label_1   
  nop                       #  28    0x11b80b  1      OPC=nop            
  nop                       #  29    0x11b80c  1      OPC=nop            
  nop                       #  30    0x11b80d  1      OPC=nop            
  nop                       #  31    0x11b80e  1      OPC=nop            
  nop                       #  32    0x11b80f  1      OPC=nop            
  nop                       #  33    0x11b810  1      OPC=nop            
  nop                       #  34    0x11b811  1      OPC=nop            
  nop                       #  35    0x11b812  1      OPC=nop            
  nop                       #  36    0x11b813  1      OPC=nop            
  nop                       #  37    0x11b814  1      OPC=nop            
  nop                       #  38    0x11b815  1      OPC=nop            
  nop                       #  39    0x11b816  1      OPC=nop            
  nop                       #  40    0x11b817  1      OPC=nop            
  nop                       #  41    0x11b818  1      OPC=nop            
  nop                       #  42    0x11b819  1      OPC=nop            
  nop                       #  43    0x11b81a  1      OPC=nop            
  nop                       #  44    0x11b81b  1      OPC=nop            
  nop                       #  45    0x11b81c  1      OPC=nop            
  nop                       #  46    0x11b81d  1      OPC=nop            
  nop                       #  47    0x11b81e  1      OPC=nop            
  nop                       #  48    0x11b81f  1      OPC=nop            
                                                                         
.size fputs, .-fputs

