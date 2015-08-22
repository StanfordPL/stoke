  .text
  .globl _findenv
  .type _findenv, @function

#! file-offset 0x15ebc0
#! rip-offset  0x11ebc0
#! capacity    96 bytes

# Text                      #  Line  RIP       Bytes  Opcode             
._findenv:                  #        0x11ebc0  0      OPC=<label>        
  movq %rbx, -0x10(%rsp)    #  1     0x11ebc0  5      OPC=movq_m64_r64   
  movq %r12, -0x8(%rsp)     #  2     0x11ebc5  5      OPC=movq_m64_r64   
  subl $0x18, %esp          #  3     0x11ebca  3      OPC=subl_r32_imm8  
  addq %r15, %rsp           #  4     0x11ebcd  3      OPC=addq_r64_r64   
  movl %edi, %ebx           #  5     0x11ebd0  2      OPC=movl_r32_r32   
  movl %esi, %r12d          #  6     0x11ebd2  3      OPC=movl_r32_r32   
  nop                       #  7     0x11ebd5  1      OPC=nop            
  nop                       #  8     0x11ebd6  1      OPC=nop            
  nop                       #  9     0x11ebd7  1      OPC=nop            
  nop                       #  10    0x11ebd8  1      OPC=nop            
  nop                       #  11    0x11ebd9  1      OPC=nop            
  nop                       #  12    0x11ebda  1      OPC=nop            
  callq .__nacl_read_tp     #  13    0x11ebdb  5      OPC=callq_label    
  leaq -0x480(%rax), %rax   #  14    0x11ebe0  7      OPC=leaq_r64_m16   
  movl %r12d, %edx          #  15    0x11ebe7  3      OPC=movl_r32_r32   
  movl %ebx, %esi           #  16    0x11ebea  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r12     #  17    0x11ebec  5      OPC=movq_r64_m64   
  movq 0x8(%rsp), %rbx      #  18    0x11ebf1  5      OPC=movq_r64_m64   
  movl %eax, %eax           #  19    0x11ebf6  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi  #  20    0x11ebf8  4      OPC=movl_r32_m32   
  nop                       #  21    0x11ebfc  1      OPC=nop            
  nop                       #  22    0x11ebfd  1      OPC=nop            
  nop                       #  23    0x11ebfe  1      OPC=nop            
  nop                       #  24    0x11ebff  1      OPC=nop            
  addl $0x18, %esp          #  25    0x11ec00  3      OPC=addl_r32_imm8  
  addq %r15, %rsp           #  26    0x11ec03  3      OPC=addq_r64_r64   
  jmpq ._findenv_r          #  27    0x11ec06  5      OPC=jmpq_label_1   
  nop                       #  28    0x11ec0b  1      OPC=nop            
  nop                       #  29    0x11ec0c  1      OPC=nop            
  nop                       #  30    0x11ec0d  1      OPC=nop            
  nop                       #  31    0x11ec0e  1      OPC=nop            
  nop                       #  32    0x11ec0f  1      OPC=nop            
  nop                       #  33    0x11ec10  1      OPC=nop            
  nop                       #  34    0x11ec11  1      OPC=nop            
  nop                       #  35    0x11ec12  1      OPC=nop            
  nop                       #  36    0x11ec13  1      OPC=nop            
  nop                       #  37    0x11ec14  1      OPC=nop            
  nop                       #  38    0x11ec15  1      OPC=nop            
  nop                       #  39    0x11ec16  1      OPC=nop            
  nop                       #  40    0x11ec17  1      OPC=nop            
  nop                       #  41    0x11ec18  1      OPC=nop            
  nop                       #  42    0x11ec19  1      OPC=nop            
  nop                       #  43    0x11ec1a  1      OPC=nop            
  nop                       #  44    0x11ec1b  1      OPC=nop            
  nop                       #  45    0x11ec1c  1      OPC=nop            
  nop                       #  46    0x11ec1d  1      OPC=nop            
  nop                       #  47    0x11ec1e  1      OPC=nop            
  nop                       #  48    0x11ec1f  1      OPC=nop            
                                                                         
.size _findenv, .-_findenv

