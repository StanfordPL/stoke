  .text
  .globl fputs
  .type fputs, @function

#! file-offset 0x15c1e0
#! rip-offset  0x11c1e0
#! capacity    96 bytes

# Text                      #  Line  RIP       Bytes  Opcode             
.fputs:                     #        0x11c1e0  0      OPC=<label>        
  movq %rbx, -0x10(%rsp)    #  1     0x11c1e0  5      OPC=movq_m64_r64   
  movq %r12, -0x8(%rsp)     #  2     0x11c1e5  5      OPC=movq_m64_r64   
  subl $0x18, %esp          #  3     0x11c1ea  3      OPC=subl_r32_imm8  
  addq %r15, %rsp           #  4     0x11c1ed  3      OPC=addq_r64_r64   
  movl %edi, %ebx           #  5     0x11c1f0  2      OPC=movl_r32_r32   
  movl %esi, %r12d          #  6     0x11c1f2  3      OPC=movl_r32_r32   
  nop                       #  7     0x11c1f5  1      OPC=nop            
  nop                       #  8     0x11c1f6  1      OPC=nop            
  nop                       #  9     0x11c1f7  1      OPC=nop            
  nop                       #  10    0x11c1f8  1      OPC=nop            
  nop                       #  11    0x11c1f9  1      OPC=nop            
  nop                       #  12    0x11c1fa  1      OPC=nop            
  callq .__nacl_read_tp     #  13    0x11c1fb  5      OPC=callq_label    
  leaq -0x480(%rax), %rax   #  14    0x11c200  7      OPC=leaq_r64_m16   
  movl %r12d, %edx          #  15    0x11c207  3      OPC=movl_r32_r32   
  movl %ebx, %esi           #  16    0x11c20a  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r12     #  17    0x11c20c  5      OPC=movq_r64_m64   
  movq 0x8(%rsp), %rbx      #  18    0x11c211  5      OPC=movq_r64_m64   
  movl %eax, %eax           #  19    0x11c216  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi  #  20    0x11c218  4      OPC=movl_r32_m32   
  nop                       #  21    0x11c21c  1      OPC=nop            
  nop                       #  22    0x11c21d  1      OPC=nop            
  nop                       #  23    0x11c21e  1      OPC=nop            
  nop                       #  24    0x11c21f  1      OPC=nop            
  addl $0x18, %esp          #  25    0x11c220  3      OPC=addl_r32_imm8  
  addq %r15, %rsp           #  26    0x11c223  3      OPC=addq_r64_r64   
  jmpq ._fputs_r            #  27    0x11c226  5      OPC=jmpq_label_1   
  nop                       #  28    0x11c22b  1      OPC=nop            
  nop                       #  29    0x11c22c  1      OPC=nop            
  nop                       #  30    0x11c22d  1      OPC=nop            
  nop                       #  31    0x11c22e  1      OPC=nop            
  nop                       #  32    0x11c22f  1      OPC=nop            
  nop                       #  33    0x11c230  1      OPC=nop            
  nop                       #  34    0x11c231  1      OPC=nop            
  nop                       #  35    0x11c232  1      OPC=nop            
  nop                       #  36    0x11c233  1      OPC=nop            
  nop                       #  37    0x11c234  1      OPC=nop            
  nop                       #  38    0x11c235  1      OPC=nop            
  nop                       #  39    0x11c236  1      OPC=nop            
  nop                       #  40    0x11c237  1      OPC=nop            
  nop                       #  41    0x11c238  1      OPC=nop            
  nop                       #  42    0x11c239  1      OPC=nop            
  nop                       #  43    0x11c23a  1      OPC=nop            
  nop                       #  44    0x11c23b  1      OPC=nop            
  nop                       #  45    0x11c23c  1      OPC=nop            
  nop                       #  46    0x11c23d  1      OPC=nop            
  nop                       #  47    0x11c23e  1      OPC=nop            
  nop                       #  48    0x11c23f  1      OPC=nop            
                                                                         
.size fputs, .-fputs

