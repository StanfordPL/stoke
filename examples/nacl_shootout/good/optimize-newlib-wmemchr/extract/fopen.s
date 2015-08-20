  .text
  .globl fopen
  .type fopen, @function

#! file-offset 0x15b3e0
#! rip-offset  0x11b3e0
#! capacity    96 bytes

# Text                      #  Line  RIP       Bytes  Opcode             
.fopen:                     #        0x11b3e0  0      OPC=<label>        
  movq %rbx, -0x10(%rsp)    #  1     0x11b3e0  5      OPC=movq_m64_r64   
  movq %r12, -0x8(%rsp)     #  2     0x11b3e5  5      OPC=movq_m64_r64   
  subl $0x18, %esp          #  3     0x11b3ea  3      OPC=subl_r32_imm8  
  addq %r15, %rsp           #  4     0x11b3ed  3      OPC=addq_r64_r64   
  movl %edi, %ebx           #  5     0x11b3f0  2      OPC=movl_r32_r32   
  movl %esi, %r12d          #  6     0x11b3f2  3      OPC=movl_r32_r32   
  nop                       #  7     0x11b3f5  1      OPC=nop            
  nop                       #  8     0x11b3f6  1      OPC=nop            
  nop                       #  9     0x11b3f7  1      OPC=nop            
  nop                       #  10    0x11b3f8  1      OPC=nop            
  nop                       #  11    0x11b3f9  1      OPC=nop            
  nop                       #  12    0x11b3fa  1      OPC=nop            
  callq .__nacl_read_tp     #  13    0x11b3fb  5      OPC=callq_label    
  leaq -0x480(%rax), %rax   #  14    0x11b400  7      OPC=leaq_r64_m16   
  movl %r12d, %edx          #  15    0x11b407  3      OPC=movl_r32_r32   
  movl %ebx, %esi           #  16    0x11b40a  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r12     #  17    0x11b40c  5      OPC=movq_r64_m64   
  movq 0x8(%rsp), %rbx      #  18    0x11b411  5      OPC=movq_r64_m64   
  movl %eax, %eax           #  19    0x11b416  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi  #  20    0x11b418  4      OPC=movl_r32_m32   
  nop                       #  21    0x11b41c  1      OPC=nop            
  nop                       #  22    0x11b41d  1      OPC=nop            
  nop                       #  23    0x11b41e  1      OPC=nop            
  nop                       #  24    0x11b41f  1      OPC=nop            
  addl $0x18, %esp          #  25    0x11b420  3      OPC=addl_r32_imm8  
  addq %r15, %rsp           #  26    0x11b423  3      OPC=addq_r64_r64   
  jmpq ._fopen_r            #  27    0x11b426  5      OPC=jmpq_label_1   
  nop                       #  28    0x11b42b  1      OPC=nop            
  nop                       #  29    0x11b42c  1      OPC=nop            
  nop                       #  30    0x11b42d  1      OPC=nop            
  nop                       #  31    0x11b42e  1      OPC=nop            
  nop                       #  32    0x11b42f  1      OPC=nop            
  nop                       #  33    0x11b430  1      OPC=nop            
  nop                       #  34    0x11b431  1      OPC=nop            
  nop                       #  35    0x11b432  1      OPC=nop            
  nop                       #  36    0x11b433  1      OPC=nop            
  nop                       #  37    0x11b434  1      OPC=nop            
  nop                       #  38    0x11b435  1      OPC=nop            
  nop                       #  39    0x11b436  1      OPC=nop            
  nop                       #  40    0x11b437  1      OPC=nop            
  nop                       #  41    0x11b438  1      OPC=nop            
  nop                       #  42    0x11b439  1      OPC=nop            
  nop                       #  43    0x11b43a  1      OPC=nop            
  nop                       #  44    0x11b43b  1      OPC=nop            
  nop                       #  45    0x11b43c  1      OPC=nop            
  nop                       #  46    0x11b43d  1      OPC=nop            
  nop                       #  47    0x11b43e  1      OPC=nop            
  nop                       #  48    0x11b43f  1      OPC=nop            
                                                                         
.size fopen, .-fopen

