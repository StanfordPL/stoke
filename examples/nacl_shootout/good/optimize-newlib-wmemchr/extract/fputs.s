  .text
  .globl fputs
  .type fputs, @function

#! file-offset 0x15bac0
#! rip-offset  0x11bac0
#! capacity    96 bytes

# Text                      #  Line  RIP       Bytes  Opcode             
.fputs:                     #        0x11bac0  0      OPC=<label>        
  movq %rbx, -0x10(%rsp)    #  1     0x11bac0  5      OPC=movq_m64_r64   
  movq %r12, -0x8(%rsp)     #  2     0x11bac5  5      OPC=movq_m64_r64   
  subl $0x18, %esp          #  3     0x11baca  3      OPC=subl_r32_imm8  
  addq %r15, %rsp           #  4     0x11bacd  3      OPC=addq_r64_r64   
  movl %edi, %ebx           #  5     0x11bad0  2      OPC=movl_r32_r32   
  movl %esi, %r12d          #  6     0x11bad2  3      OPC=movl_r32_r32   
  nop                       #  7     0x11bad5  1      OPC=nop            
  nop                       #  8     0x11bad6  1      OPC=nop            
  nop                       #  9     0x11bad7  1      OPC=nop            
  nop                       #  10    0x11bad8  1      OPC=nop            
  nop                       #  11    0x11bad9  1      OPC=nop            
  nop                       #  12    0x11bada  1      OPC=nop            
  callq .__nacl_read_tp     #  13    0x11badb  5      OPC=callq_label    
  leaq -0x480(%rax), %rax   #  14    0x11bae0  7      OPC=leaq_r64_m16   
  movl %r12d, %edx          #  15    0x11bae7  3      OPC=movl_r32_r32   
  movl %ebx, %esi           #  16    0x11baea  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r12     #  17    0x11baec  5      OPC=movq_r64_m64   
  movq 0x8(%rsp), %rbx      #  18    0x11baf1  5      OPC=movq_r64_m64   
  movl %eax, %eax           #  19    0x11baf6  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi  #  20    0x11baf8  4      OPC=movl_r32_m32   
  nop                       #  21    0x11bafc  1      OPC=nop            
  nop                       #  22    0x11bafd  1      OPC=nop            
  nop                       #  23    0x11bafe  1      OPC=nop            
  nop                       #  24    0x11baff  1      OPC=nop            
  addl $0x18, %esp          #  25    0x11bb00  3      OPC=addl_r32_imm8  
  addq %r15, %rsp           #  26    0x11bb03  3      OPC=addq_r64_r64   
  jmpq ._fputs_r            #  27    0x11bb06  5      OPC=jmpq_label_1   
  nop                       #  28    0x11bb0b  1      OPC=nop            
  nop                       #  29    0x11bb0c  1      OPC=nop            
  nop                       #  30    0x11bb0d  1      OPC=nop            
  nop                       #  31    0x11bb0e  1      OPC=nop            
  nop                       #  32    0x11bb0f  1      OPC=nop            
  nop                       #  33    0x11bb10  1      OPC=nop            
  nop                       #  34    0x11bb11  1      OPC=nop            
  nop                       #  35    0x11bb12  1      OPC=nop            
  nop                       #  36    0x11bb13  1      OPC=nop            
  nop                       #  37    0x11bb14  1      OPC=nop            
  nop                       #  38    0x11bb15  1      OPC=nop            
  nop                       #  39    0x11bb16  1      OPC=nop            
  nop                       #  40    0x11bb17  1      OPC=nop            
  nop                       #  41    0x11bb18  1      OPC=nop            
  nop                       #  42    0x11bb19  1      OPC=nop            
  nop                       #  43    0x11bb1a  1      OPC=nop            
  nop                       #  44    0x11bb1b  1      OPC=nop            
  nop                       #  45    0x11bb1c  1      OPC=nop            
  nop                       #  46    0x11bb1d  1      OPC=nop            
  nop                       #  47    0x11bb1e  1      OPC=nop            
  nop                       #  48    0x11bb1f  1      OPC=nop            
                                                                         
.size fputs, .-fputs

