  .text
  .globl ungetc
  .type ungetc, @function

#! file-offset 0x1770c0
#! rip-offset  0x1370c0
#! capacity    96 bytes

# Text                      #  Line  RIP       Bytes  Opcode             
.ungetc:                    #        0x1370c0  0      OPC=<label>        
  movq %rbx, -0x10(%rsp)    #  1     0x1370c0  5      OPC=movq_m64_r64   
  movq %r12, -0x8(%rsp)     #  2     0x1370c5  5      OPC=movq_m64_r64   
  subl $0x18, %esp          #  3     0x1370ca  3      OPC=subl_r32_imm8  
  addq %r15, %rsp           #  4     0x1370cd  3      OPC=addq_r64_r64   
  movl %edi, %ebx           #  5     0x1370d0  2      OPC=movl_r32_r32   
  movl %esi, %r12d          #  6     0x1370d2  3      OPC=movl_r32_r32   
  nop                       #  7     0x1370d5  1      OPC=nop            
  nop                       #  8     0x1370d6  1      OPC=nop            
  nop                       #  9     0x1370d7  1      OPC=nop            
  nop                       #  10    0x1370d8  1      OPC=nop            
  nop                       #  11    0x1370d9  1      OPC=nop            
  nop                       #  12    0x1370da  1      OPC=nop            
  callq .__nacl_read_tp     #  13    0x1370db  5      OPC=callq_label    
  leaq -0x480(%rax), %rax   #  14    0x1370e0  7      OPC=leaq_r64_m16   
  movl %r12d, %edx          #  15    0x1370e7  3      OPC=movl_r32_r32   
  movl %ebx, %esi           #  16    0x1370ea  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r12     #  17    0x1370ec  5      OPC=movq_r64_m64   
  movq 0x8(%rsp), %rbx      #  18    0x1370f1  5      OPC=movq_r64_m64   
  movl %eax, %eax           #  19    0x1370f6  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi  #  20    0x1370f8  4      OPC=movl_r32_m32   
  nop                       #  21    0x1370fc  1      OPC=nop            
  nop                       #  22    0x1370fd  1      OPC=nop            
  nop                       #  23    0x1370fe  1      OPC=nop            
  nop                       #  24    0x1370ff  1      OPC=nop            
  addl $0x18, %esp          #  25    0x137100  3      OPC=addl_r32_imm8  
  addq %r15, %rsp           #  26    0x137103  3      OPC=addq_r64_r64   
  jmpq ._ungetc_r           #  27    0x137106  5      OPC=jmpq_label_1   
  nop                       #  28    0x13710b  1      OPC=nop            
  nop                       #  29    0x13710c  1      OPC=nop            
  nop                       #  30    0x13710d  1      OPC=nop            
  nop                       #  31    0x13710e  1      OPC=nop            
  nop                       #  32    0x13710f  1      OPC=nop            
  nop                       #  33    0x137110  1      OPC=nop            
  nop                       #  34    0x137111  1      OPC=nop            
  nop                       #  35    0x137112  1      OPC=nop            
  nop                       #  36    0x137113  1      OPC=nop            
  nop                       #  37    0x137114  1      OPC=nop            
  nop                       #  38    0x137115  1      OPC=nop            
  nop                       #  39    0x137116  1      OPC=nop            
  nop                       #  40    0x137117  1      OPC=nop            
  nop                       #  41    0x137118  1      OPC=nop            
  nop                       #  42    0x137119  1      OPC=nop            
  nop                       #  43    0x13711a  1      OPC=nop            
  nop                       #  44    0x13711b  1      OPC=nop            
  nop                       #  45    0x13711c  1      OPC=nop            
  nop                       #  46    0x13711d  1      OPC=nop            
  nop                       #  47    0x13711e  1      OPC=nop            
  nop                       #  48    0x13711f  1      OPC=nop            
                                                                         
.size ungetc, .-ungetc

