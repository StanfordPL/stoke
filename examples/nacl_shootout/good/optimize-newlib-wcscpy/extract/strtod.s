  .text
  .globl strtod
  .type strtod, @function

#! file-offset 0x16b9c0
#! rip-offset  0x12b9c0
#! capacity    96 bytes

# Text                      #  Line  RIP       Bytes  Opcode             
.strtod:                    #        0x12b9c0  0      OPC=<label>        
  movq %rbx, -0x10(%rsp)    #  1     0x12b9c0  5      OPC=movq_m64_r64   
  movq %r12, -0x8(%rsp)     #  2     0x12b9c5  5      OPC=movq_m64_r64   
  subl $0x18, %esp          #  3     0x12b9ca  3      OPC=subl_r32_imm8  
  addq %r15, %rsp           #  4     0x12b9cd  3      OPC=addq_r64_r64   
  movl %edi, %ebx           #  5     0x12b9d0  2      OPC=movl_r32_r32   
  movl %esi, %r12d          #  6     0x12b9d2  3      OPC=movl_r32_r32   
  nop                       #  7     0x12b9d5  1      OPC=nop            
  nop                       #  8     0x12b9d6  1      OPC=nop            
  nop                       #  9     0x12b9d7  1      OPC=nop            
  nop                       #  10    0x12b9d8  1      OPC=nop            
  nop                       #  11    0x12b9d9  1      OPC=nop            
  nop                       #  12    0x12b9da  1      OPC=nop            
  callq .__nacl_read_tp     #  13    0x12b9db  5      OPC=callq_label    
  leaq -0x480(%rax), %rax   #  14    0x12b9e0  7      OPC=leaq_r64_m16   
  movl %r12d, %edx          #  15    0x12b9e7  3      OPC=movl_r32_r32   
  movl %ebx, %esi           #  16    0x12b9ea  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r12     #  17    0x12b9ec  5      OPC=movq_r64_m64   
  movq 0x8(%rsp), %rbx      #  18    0x12b9f1  5      OPC=movq_r64_m64   
  movl %eax, %eax           #  19    0x12b9f6  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi  #  20    0x12b9f8  4      OPC=movl_r32_m32   
  nop                       #  21    0x12b9fc  1      OPC=nop            
  nop                       #  22    0x12b9fd  1      OPC=nop            
  nop                       #  23    0x12b9fe  1      OPC=nop            
  nop                       #  24    0x12b9ff  1      OPC=nop            
  addl $0x18, %esp          #  25    0x12ba00  3      OPC=addl_r32_imm8  
  addq %r15, %rsp           #  26    0x12ba03  3      OPC=addq_r64_r64   
  jmpq ._strtod_r           #  27    0x12ba06  5      OPC=jmpq_label_1   
  nop                       #  28    0x12ba0b  1      OPC=nop            
  nop                       #  29    0x12ba0c  1      OPC=nop            
  nop                       #  30    0x12ba0d  1      OPC=nop            
  nop                       #  31    0x12ba0e  1      OPC=nop            
  nop                       #  32    0x12ba0f  1      OPC=nop            
  nop                       #  33    0x12ba10  1      OPC=nop            
  nop                       #  34    0x12ba11  1      OPC=nop            
  nop                       #  35    0x12ba12  1      OPC=nop            
  nop                       #  36    0x12ba13  1      OPC=nop            
  nop                       #  37    0x12ba14  1      OPC=nop            
  nop                       #  38    0x12ba15  1      OPC=nop            
  nop                       #  39    0x12ba16  1      OPC=nop            
  nop                       #  40    0x12ba17  1      OPC=nop            
  nop                       #  41    0x12ba18  1      OPC=nop            
  nop                       #  42    0x12ba19  1      OPC=nop            
  nop                       #  43    0x12ba1a  1      OPC=nop            
  nop                       #  44    0x12ba1b  1      OPC=nop            
  nop                       #  45    0x12ba1c  1      OPC=nop            
  nop                       #  46    0x12ba1d  1      OPC=nop            
  nop                       #  47    0x12ba1e  1      OPC=nop            
  nop                       #  48    0x12ba1f  1      OPC=nop            
                                                                         
.size strtod, .-strtod

