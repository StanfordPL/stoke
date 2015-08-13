  .text
  .globl perror
  .type perror, @function

#! file-offset 0x1633e0
#! rip-offset  0x1233e0
#! capacity    64 bytes

# Text                      #  Line  RIP       Bytes  Opcode            
.perror:                    #        0x1233e0  0      OPC=<label>       
  pushq %rbx                #  1     0x1233e0  1      OPC=pushq_r64_1   
  movl %edi, %ebx           #  2     0x1233e1  2      OPC=movl_r32_r32  
  nop                       #  3     0x1233e3  1      OPC=nop           
  nop                       #  4     0x1233e4  1      OPC=nop           
  nop                       #  5     0x1233e5  1      OPC=nop           
  nop                       #  6     0x1233e6  1      OPC=nop           
  nop                       #  7     0x1233e7  1      OPC=nop           
  nop                       #  8     0x1233e8  1      OPC=nop           
  nop                       #  9     0x1233e9  1      OPC=nop           
  nop                       #  10    0x1233ea  1      OPC=nop           
  nop                       #  11    0x1233eb  1      OPC=nop           
  nop                       #  12    0x1233ec  1      OPC=nop           
  nop                       #  13    0x1233ed  1      OPC=nop           
  nop                       #  14    0x1233ee  1      OPC=nop           
  nop                       #  15    0x1233ef  1      OPC=nop           
  nop                       #  16    0x1233f0  1      OPC=nop           
  nop                       #  17    0x1233f1  1      OPC=nop           
  nop                       #  18    0x1233f2  1      OPC=nop           
  nop                       #  19    0x1233f3  1      OPC=nop           
  nop                       #  20    0x1233f4  1      OPC=nop           
  nop                       #  21    0x1233f5  1      OPC=nop           
  nop                       #  22    0x1233f6  1      OPC=nop           
  nop                       #  23    0x1233f7  1      OPC=nop           
  nop                       #  24    0x1233f8  1      OPC=nop           
  nop                       #  25    0x1233f9  1      OPC=nop           
  nop                       #  26    0x1233fa  1      OPC=nop           
  callq .__nacl_read_tp     #  27    0x1233fb  5      OPC=callq_label   
  leaq -0x480(%rax), %rax   #  28    0x123400  7      OPC=leaq_r64_m16  
  movl %ebx, %esi           #  29    0x123407  2      OPC=movl_r32_r32  
  popq %rbx                 #  30    0x123409  1      OPC=popq_r64_1    
  movl %eax, %eax           #  31    0x12340a  2      OPC=movl_r32_r32  
  movl (%r15,%rax,1), %edi  #  32    0x12340c  4      OPC=movl_r32_m32  
  jmpq ._perror_r           #  33    0x123410  5      OPC=jmpq_label_1  
  nop                       #  34    0x123415  1      OPC=nop           
  nop                       #  35    0x123416  1      OPC=nop           
  nop                       #  36    0x123417  1      OPC=nop           
  nop                       #  37    0x123418  1      OPC=nop           
  nop                       #  38    0x123419  1      OPC=nop           
  nop                       #  39    0x12341a  1      OPC=nop           
  nop                       #  40    0x12341b  1      OPC=nop           
  nop                       #  41    0x12341c  1      OPC=nop           
  nop                       #  42    0x12341d  1      OPC=nop           
  nop                       #  43    0x12341e  1      OPC=nop           
  nop                       #  44    0x12341f  1      OPC=nop           
                                                                        
.size perror, .-perror

