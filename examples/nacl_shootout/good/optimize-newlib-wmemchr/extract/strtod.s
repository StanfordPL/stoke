  .text
  .globl strtod
  .type strtod, @function

#! file-offset 0x16bcc0
#! rip-offset  0x12bcc0
#! capacity    96 bytes

# Text                      #  Line  RIP       Bytes  Opcode             
.strtod:                    #        0x12bcc0  0      OPC=<label>        
  movq %rbx, -0x10(%rsp)    #  1     0x12bcc0  5      OPC=movq_m64_r64   
  movq %r12, -0x8(%rsp)     #  2     0x12bcc5  5      OPC=movq_m64_r64   
  subl $0x18, %esp          #  3     0x12bcca  3      OPC=subl_r32_imm8  
  addq %r15, %rsp           #  4     0x12bccd  3      OPC=addq_r64_r64   
  movl %edi, %ebx           #  5     0x12bcd0  2      OPC=movl_r32_r32   
  movl %esi, %r12d          #  6     0x12bcd2  3      OPC=movl_r32_r32   
  nop                       #  7     0x12bcd5  1      OPC=nop            
  nop                       #  8     0x12bcd6  1      OPC=nop            
  nop                       #  9     0x12bcd7  1      OPC=nop            
  nop                       #  10    0x12bcd8  1      OPC=nop            
  nop                       #  11    0x12bcd9  1      OPC=nop            
  nop                       #  12    0x12bcda  1      OPC=nop            
  callq .__nacl_read_tp     #  13    0x12bcdb  5      OPC=callq_label    
  leaq -0x480(%rax), %rax   #  14    0x12bce0  7      OPC=leaq_r64_m16   
  movl %r12d, %edx          #  15    0x12bce7  3      OPC=movl_r32_r32   
  movl %ebx, %esi           #  16    0x12bcea  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r12     #  17    0x12bcec  5      OPC=movq_r64_m64   
  movq 0x8(%rsp), %rbx      #  18    0x12bcf1  5      OPC=movq_r64_m64   
  movl %eax, %eax           #  19    0x12bcf6  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi  #  20    0x12bcf8  4      OPC=movl_r32_m32   
  nop                       #  21    0x12bcfc  1      OPC=nop            
  nop                       #  22    0x12bcfd  1      OPC=nop            
  nop                       #  23    0x12bcfe  1      OPC=nop            
  nop                       #  24    0x12bcff  1      OPC=nop            
  addl $0x18, %esp          #  25    0x12bd00  3      OPC=addl_r32_imm8  
  addq %r15, %rsp           #  26    0x12bd03  3      OPC=addq_r64_r64   
  jmpq ._strtod_r           #  27    0x12bd06  5      OPC=jmpq_label_1   
  nop                       #  28    0x12bd0b  1      OPC=nop            
  nop                       #  29    0x12bd0c  1      OPC=nop            
  nop                       #  30    0x12bd0d  1      OPC=nop            
  nop                       #  31    0x12bd0e  1      OPC=nop            
  nop                       #  32    0x12bd0f  1      OPC=nop            
  nop                       #  33    0x12bd10  1      OPC=nop            
  nop                       #  34    0x12bd11  1      OPC=nop            
  nop                       #  35    0x12bd12  1      OPC=nop            
  nop                       #  36    0x12bd13  1      OPC=nop            
  nop                       #  37    0x12bd14  1      OPC=nop            
  nop                       #  38    0x12bd15  1      OPC=nop            
  nop                       #  39    0x12bd16  1      OPC=nop            
  nop                       #  40    0x12bd17  1      OPC=nop            
  nop                       #  41    0x12bd18  1      OPC=nop            
  nop                       #  42    0x12bd19  1      OPC=nop            
  nop                       #  43    0x12bd1a  1      OPC=nop            
  nop                       #  44    0x12bd1b  1      OPC=nop            
  nop                       #  45    0x12bd1c  1      OPC=nop            
  nop                       #  46    0x12bd1d  1      OPC=nop            
  nop                       #  47    0x12bd1e  1      OPC=nop            
  nop                       #  48    0x12bd1f  1      OPC=nop            
                                                                         
.size strtod, .-strtod

