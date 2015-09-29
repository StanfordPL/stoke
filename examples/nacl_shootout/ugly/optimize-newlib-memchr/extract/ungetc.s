  .text
  .globl ungetc
  .type ungetc, @function

#! file-offset 0x177ae0
#! rip-offset  0x137ae0
#! capacity    96 bytes

# Text                      #  Line  RIP       Bytes  Opcode             
.ungetc:                    #        0x137ae0  0      OPC=<label>        
  movq %rbx, -0x10(%rsp)    #  1     0x137ae0  5      OPC=movq_m64_r64   
  movq %r12, -0x8(%rsp)     #  2     0x137ae5  5      OPC=movq_m64_r64   
  subl $0x18, %esp          #  3     0x137aea  3      OPC=subl_r32_imm8  
  addq %r15, %rsp           #  4     0x137aed  3      OPC=addq_r64_r64   
  movl %edi, %ebx           #  5     0x137af0  2      OPC=movl_r32_r32   
  movl %esi, %r12d          #  6     0x137af2  3      OPC=movl_r32_r32   
  nop                       #  7     0x137af5  1      OPC=nop            
  nop                       #  8     0x137af6  1      OPC=nop            
  nop                       #  9     0x137af7  1      OPC=nop            
  nop                       #  10    0x137af8  1      OPC=nop            
  nop                       #  11    0x137af9  1      OPC=nop            
  nop                       #  12    0x137afa  1      OPC=nop            
  callq .__nacl_read_tp     #  13    0x137afb  5      OPC=callq_label    
  leaq -0x480(%rax), %rax   #  14    0x137b00  7      OPC=leaq_r64_m16   
  movl %r12d, %edx          #  15    0x137b07  3      OPC=movl_r32_r32   
  movl %ebx, %esi           #  16    0x137b0a  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r12     #  17    0x137b0c  5      OPC=movq_r64_m64   
  movq 0x8(%rsp), %rbx      #  18    0x137b11  5      OPC=movq_r64_m64   
  movl %eax, %eax           #  19    0x137b16  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi  #  20    0x137b18  4      OPC=movl_r32_m32   
  nop                       #  21    0x137b1c  1      OPC=nop            
  nop                       #  22    0x137b1d  1      OPC=nop            
  nop                       #  23    0x137b1e  1      OPC=nop            
  nop                       #  24    0x137b1f  1      OPC=nop            
  addl $0x18, %esp          #  25    0x137b20  3      OPC=addl_r32_imm8  
  addq %r15, %rsp           #  26    0x137b23  3      OPC=addq_r64_r64   
  jmpq ._ungetc_r           #  27    0x137b26  5      OPC=jmpq_label_1   
  nop                       #  28    0x137b2b  1      OPC=nop            
  nop                       #  29    0x137b2c  1      OPC=nop            
  nop                       #  30    0x137b2d  1      OPC=nop            
  nop                       #  31    0x137b2e  1      OPC=nop            
  nop                       #  32    0x137b2f  1      OPC=nop            
  nop                       #  33    0x137b30  1      OPC=nop            
  nop                       #  34    0x137b31  1      OPC=nop            
  nop                       #  35    0x137b32  1      OPC=nop            
  nop                       #  36    0x137b33  1      OPC=nop            
  nop                       #  37    0x137b34  1      OPC=nop            
  nop                       #  38    0x137b35  1      OPC=nop            
  nop                       #  39    0x137b36  1      OPC=nop            
  nop                       #  40    0x137b37  1      OPC=nop            
  nop                       #  41    0x137b38  1      OPC=nop            
  nop                       #  42    0x137b39  1      OPC=nop            
  nop                       #  43    0x137b3a  1      OPC=nop            
  nop                       #  44    0x137b3b  1      OPC=nop            
  nop                       #  45    0x137b3c  1      OPC=nop            
  nop                       #  46    0x137b3d  1      OPC=nop            
  nop                       #  47    0x137b3e  1      OPC=nop            
  nop                       #  48    0x137b3f  1      OPC=nop            
                                                                         
.size ungetc, .-ungetc

