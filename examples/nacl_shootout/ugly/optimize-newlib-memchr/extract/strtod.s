  .text
  .globl strtod
  .type strtod, @function

#! file-offset 0x16c3e0
#! rip-offset  0x12c3e0
#! capacity    96 bytes

# Text                      #  Line  RIP       Bytes  Opcode             
.strtod:                    #        0x12c3e0  0      OPC=<label>        
  movq %rbx, -0x10(%rsp)    #  1     0x12c3e0  5      OPC=movq_m64_r64   
  movq %r12, -0x8(%rsp)     #  2     0x12c3e5  5      OPC=movq_m64_r64   
  subl $0x18, %esp          #  3     0x12c3ea  3      OPC=subl_r32_imm8  
  addq %r15, %rsp           #  4     0x12c3ed  3      OPC=addq_r64_r64   
  movl %edi, %ebx           #  5     0x12c3f0  2      OPC=movl_r32_r32   
  movl %esi, %r12d          #  6     0x12c3f2  3      OPC=movl_r32_r32   
  nop                       #  7     0x12c3f5  1      OPC=nop            
  nop                       #  8     0x12c3f6  1      OPC=nop            
  nop                       #  9     0x12c3f7  1      OPC=nop            
  nop                       #  10    0x12c3f8  1      OPC=nop            
  nop                       #  11    0x12c3f9  1      OPC=nop            
  nop                       #  12    0x12c3fa  1      OPC=nop            
  callq .__nacl_read_tp     #  13    0x12c3fb  5      OPC=callq_label    
  leaq -0x480(%rax), %rax   #  14    0x12c400  7      OPC=leaq_r64_m16   
  movl %r12d, %edx          #  15    0x12c407  3      OPC=movl_r32_r32   
  movl %ebx, %esi           #  16    0x12c40a  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r12     #  17    0x12c40c  5      OPC=movq_r64_m64   
  movq 0x8(%rsp), %rbx      #  18    0x12c411  5      OPC=movq_r64_m64   
  movl %eax, %eax           #  19    0x12c416  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi  #  20    0x12c418  4      OPC=movl_r32_m32   
  nop                       #  21    0x12c41c  1      OPC=nop            
  nop                       #  22    0x12c41d  1      OPC=nop            
  nop                       #  23    0x12c41e  1      OPC=nop            
  nop                       #  24    0x12c41f  1      OPC=nop            
  addl $0x18, %esp          #  25    0x12c420  3      OPC=addl_r32_imm8  
  addq %r15, %rsp           #  26    0x12c423  3      OPC=addq_r64_r64   
  jmpq ._strtod_r           #  27    0x12c426  5      OPC=jmpq_label_1   
  nop                       #  28    0x12c42b  1      OPC=nop            
  nop                       #  29    0x12c42c  1      OPC=nop            
  nop                       #  30    0x12c42d  1      OPC=nop            
  nop                       #  31    0x12c42e  1      OPC=nop            
  nop                       #  32    0x12c42f  1      OPC=nop            
  nop                       #  33    0x12c430  1      OPC=nop            
  nop                       #  34    0x12c431  1      OPC=nop            
  nop                       #  35    0x12c432  1      OPC=nop            
  nop                       #  36    0x12c433  1      OPC=nop            
  nop                       #  37    0x12c434  1      OPC=nop            
  nop                       #  38    0x12c435  1      OPC=nop            
  nop                       #  39    0x12c436  1      OPC=nop            
  nop                       #  40    0x12c437  1      OPC=nop            
  nop                       #  41    0x12c438  1      OPC=nop            
  nop                       #  42    0x12c439  1      OPC=nop            
  nop                       #  43    0x12c43a  1      OPC=nop            
  nop                       #  44    0x12c43b  1      OPC=nop            
  nop                       #  45    0x12c43c  1      OPC=nop            
  nop                       #  46    0x12c43d  1      OPC=nop            
  nop                       #  47    0x12c43e  1      OPC=nop            
  nop                       #  48    0x12c43f  1      OPC=nop            
                                                                         
.size strtod, .-strtod

