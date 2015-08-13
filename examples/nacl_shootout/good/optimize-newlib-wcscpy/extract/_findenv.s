  .text
  .globl _findenv
  .type _findenv, @function

#! file-offset 0x15e1a0
#! rip-offset  0x11e1a0
#! capacity    96 bytes

# Text                      #  Line  RIP       Bytes  Opcode             
._findenv:                  #        0x11e1a0  0      OPC=<label>        
  movq %rbx, -0x10(%rsp)    #  1     0x11e1a0  5      OPC=movq_m64_r64   
  movq %r12, -0x8(%rsp)     #  2     0x11e1a5  5      OPC=movq_m64_r64   
  subl $0x18, %esp          #  3     0x11e1aa  3      OPC=subl_r32_imm8  
  addq %r15, %rsp           #  4     0x11e1ad  3      OPC=addq_r64_r64   
  movl %edi, %ebx           #  5     0x11e1b0  2      OPC=movl_r32_r32   
  movl %esi, %r12d          #  6     0x11e1b2  3      OPC=movl_r32_r32   
  nop                       #  7     0x11e1b5  1      OPC=nop            
  nop                       #  8     0x11e1b6  1      OPC=nop            
  nop                       #  9     0x11e1b7  1      OPC=nop            
  nop                       #  10    0x11e1b8  1      OPC=nop            
  nop                       #  11    0x11e1b9  1      OPC=nop            
  nop                       #  12    0x11e1ba  1      OPC=nop            
  callq .__nacl_read_tp     #  13    0x11e1bb  5      OPC=callq_label    
  leaq -0x480(%rax), %rax   #  14    0x11e1c0  7      OPC=leaq_r64_m16   
  movl %r12d, %edx          #  15    0x11e1c7  3      OPC=movl_r32_r32   
  movl %ebx, %esi           #  16    0x11e1ca  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r12     #  17    0x11e1cc  5      OPC=movq_r64_m64   
  movq 0x8(%rsp), %rbx      #  18    0x11e1d1  5      OPC=movq_r64_m64   
  movl %eax, %eax           #  19    0x11e1d6  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi  #  20    0x11e1d8  4      OPC=movl_r32_m32   
  nop                       #  21    0x11e1dc  1      OPC=nop            
  nop                       #  22    0x11e1dd  1      OPC=nop            
  nop                       #  23    0x11e1de  1      OPC=nop            
  nop                       #  24    0x11e1df  1      OPC=nop            
  addl $0x18, %esp          #  25    0x11e1e0  3      OPC=addl_r32_imm8  
  addq %r15, %rsp           #  26    0x11e1e3  3      OPC=addq_r64_r64   
  jmpq ._findenv_r          #  27    0x11e1e6  5      OPC=jmpq_label_1   
  nop                       #  28    0x11e1eb  1      OPC=nop            
  nop                       #  29    0x11e1ec  1      OPC=nop            
  nop                       #  30    0x11e1ed  1      OPC=nop            
  nop                       #  31    0x11e1ee  1      OPC=nop            
  nop                       #  32    0x11e1ef  1      OPC=nop            
  nop                       #  33    0x11e1f0  1      OPC=nop            
  nop                       #  34    0x11e1f1  1      OPC=nop            
  nop                       #  35    0x11e1f2  1      OPC=nop            
  nop                       #  36    0x11e1f3  1      OPC=nop            
  nop                       #  37    0x11e1f4  1      OPC=nop            
  nop                       #  38    0x11e1f5  1      OPC=nop            
  nop                       #  39    0x11e1f6  1      OPC=nop            
  nop                       #  40    0x11e1f7  1      OPC=nop            
  nop                       #  41    0x11e1f8  1      OPC=nop            
  nop                       #  42    0x11e1f9  1      OPC=nop            
  nop                       #  43    0x11e1fa  1      OPC=nop            
  nop                       #  44    0x11e1fb  1      OPC=nop            
  nop                       #  45    0x11e1fc  1      OPC=nop            
  nop                       #  46    0x11e1fd  1      OPC=nop            
  nop                       #  47    0x11e1fe  1      OPC=nop            
  nop                       #  48    0x11e1ff  1      OPC=nop            
                                                                         
.size _findenv, .-_findenv

