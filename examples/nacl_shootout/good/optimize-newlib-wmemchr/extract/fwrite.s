  .text
  .globl fwrite
  .type fwrite, @function

#! file-offset 0x15e020
#! rip-offset  0x11e020
#! capacity    128 bytes

# Text                      #  Line  RIP       Bytes  Opcode             
.fwrite:                    #        0x11e020  0      OPC=<label>        
  movq %rbx, -0x20(%rsp)    #  1     0x11e020  5      OPC=movq_m64_r64   
  movq %r12, -0x18(%rsp)    #  2     0x11e025  5      OPC=movq_m64_r64   
  movl %edi, %ebx           #  3     0x11e02a  2      OPC=movl_r32_r32   
  movq %r13, -0x10(%rsp)    #  4     0x11e02c  5      OPC=movq_m64_r64   
  movq %r14, -0x8(%rsp)     #  5     0x11e031  5      OPC=movq_m64_r64   
  subl $0x28, %esp          #  6     0x11e036  3      OPC=subl_r32_imm8  
  addq %r15, %rsp           #  7     0x11e039  3      OPC=addq_r64_r64   
  movl %esi, %r12d          #  8     0x11e03c  3      OPC=movl_r32_r32   
  nop                       #  9     0x11e03f  1      OPC=nop            
  movl %edx, %r13d          #  10    0x11e040  3      OPC=movl_r32_r32   
  movl %ecx, %r14d          #  11    0x11e043  3      OPC=movl_r32_r32   
  nop                       #  12    0x11e046  1      OPC=nop            
  nop                       #  13    0x11e047  1      OPC=nop            
  nop                       #  14    0x11e048  1      OPC=nop            
  nop                       #  15    0x11e049  1      OPC=nop            
  nop                       #  16    0x11e04a  1      OPC=nop            
  nop                       #  17    0x11e04b  1      OPC=nop            
  nop                       #  18    0x11e04c  1      OPC=nop            
  nop                       #  19    0x11e04d  1      OPC=nop            
  nop                       #  20    0x11e04e  1      OPC=nop            
  nop                       #  21    0x11e04f  1      OPC=nop            
  nop                       #  22    0x11e050  1      OPC=nop            
  nop                       #  23    0x11e051  1      OPC=nop            
  nop                       #  24    0x11e052  1      OPC=nop            
  nop                       #  25    0x11e053  1      OPC=nop            
  nop                       #  26    0x11e054  1      OPC=nop            
  nop                       #  27    0x11e055  1      OPC=nop            
  nop                       #  28    0x11e056  1      OPC=nop            
  nop                       #  29    0x11e057  1      OPC=nop            
  nop                       #  30    0x11e058  1      OPC=nop            
  nop                       #  31    0x11e059  1      OPC=nop            
  nop                       #  32    0x11e05a  1      OPC=nop            
  callq .__nacl_read_tp     #  33    0x11e05b  5      OPC=callq_label    
  leaq -0x480(%rax), %rax   #  34    0x11e060  7      OPC=leaq_r64_m16   
  movl %r14d, %r8d          #  35    0x11e067  3      OPC=movl_r32_r32   
  movl %r13d, %ecx          #  36    0x11e06a  3      OPC=movl_r32_r32   
  movl %r12d, %edx          #  37    0x11e06d  3      OPC=movl_r32_r32   
  movl %ebx, %esi           #  38    0x11e070  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r12     #  39    0x11e072  5      OPC=movq_r64_m64   
  movq 0x8(%rsp), %rbx      #  40    0x11e077  5      OPC=movq_r64_m64   
  nop                       #  41    0x11e07c  1      OPC=nop            
  nop                       #  42    0x11e07d  1      OPC=nop            
  nop                       #  43    0x11e07e  1      OPC=nop            
  nop                       #  44    0x11e07f  1      OPC=nop            
  movq 0x18(%rsp), %r13     #  45    0x11e080  5      OPC=movq_r64_m64   
  movq 0x20(%rsp), %r14     #  46    0x11e085  5      OPC=movq_r64_m64   
  movl %eax, %eax           #  47    0x11e08a  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi  #  48    0x11e08c  4      OPC=movl_r32_m32   
  addl $0x28, %esp          #  49    0x11e090  3      OPC=addl_r32_imm8  
  addq %r15, %rsp           #  50    0x11e093  3      OPC=addq_r64_r64   
  jmpq ._fwrite_r           #  51    0x11e096  5      OPC=jmpq_label_1   
  nop                       #  52    0x11e09b  1      OPC=nop            
  nop                       #  53    0x11e09c  1      OPC=nop            
  nop                       #  54    0x11e09d  1      OPC=nop            
  nop                       #  55    0x11e09e  1      OPC=nop            
  nop                       #  56    0x11e09f  1      OPC=nop            
                                                                         
.size fwrite, .-fwrite

