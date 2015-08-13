  .text
  .globl __srget
  .type __srget, @function

#! file-offset 0x1653e0
#! rip-offset  0x1253e0
#! capacity    64 bytes

# Text                      #  Line  RIP       Bytes  Opcode            
.__srget:                   #        0x1253e0  0      OPC=<label>       
  pushq %rbx                #  1     0x1253e0  1      OPC=pushq_r64_1   
  movl %edi, %ebx           #  2     0x1253e1  2      OPC=movl_r32_r32  
  nop                       #  3     0x1253e3  1      OPC=nop           
  nop                       #  4     0x1253e4  1      OPC=nop           
  nop                       #  5     0x1253e5  1      OPC=nop           
  nop                       #  6     0x1253e6  1      OPC=nop           
  nop                       #  7     0x1253e7  1      OPC=nop           
  nop                       #  8     0x1253e8  1      OPC=nop           
  nop                       #  9     0x1253e9  1      OPC=nop           
  nop                       #  10    0x1253ea  1      OPC=nop           
  nop                       #  11    0x1253eb  1      OPC=nop           
  nop                       #  12    0x1253ec  1      OPC=nop           
  nop                       #  13    0x1253ed  1      OPC=nop           
  nop                       #  14    0x1253ee  1      OPC=nop           
  nop                       #  15    0x1253ef  1      OPC=nop           
  nop                       #  16    0x1253f0  1      OPC=nop           
  nop                       #  17    0x1253f1  1      OPC=nop           
  nop                       #  18    0x1253f2  1      OPC=nop           
  nop                       #  19    0x1253f3  1      OPC=nop           
  nop                       #  20    0x1253f4  1      OPC=nop           
  nop                       #  21    0x1253f5  1      OPC=nop           
  nop                       #  22    0x1253f6  1      OPC=nop           
  nop                       #  23    0x1253f7  1      OPC=nop           
  nop                       #  24    0x1253f8  1      OPC=nop           
  nop                       #  25    0x1253f9  1      OPC=nop           
  nop                       #  26    0x1253fa  1      OPC=nop           
  callq .__nacl_read_tp     #  27    0x1253fb  5      OPC=callq_label   
  leaq -0x480(%rax), %rax   #  28    0x125400  7      OPC=leaq_r64_m16  
  movl %ebx, %esi           #  29    0x125407  2      OPC=movl_r32_r32  
  popq %rbx                 #  30    0x125409  1      OPC=popq_r64_1    
  movl %eax, %eax           #  31    0x12540a  2      OPC=movl_r32_r32  
  movl (%r15,%rax,1), %edi  #  32    0x12540c  4      OPC=movl_r32_m32  
  jmpq .__srget_r           #  33    0x125410  5      OPC=jmpq_label_1  
  nop                       #  34    0x125415  1      OPC=nop           
  nop                       #  35    0x125416  1      OPC=nop           
  nop                       #  36    0x125417  1      OPC=nop           
  nop                       #  37    0x125418  1      OPC=nop           
  nop                       #  38    0x125419  1      OPC=nop           
  nop                       #  39    0x12541a  1      OPC=nop           
  nop                       #  40    0x12541b  1      OPC=nop           
  nop                       #  41    0x12541c  1      OPC=nop           
  nop                       #  42    0x12541d  1      OPC=nop           
  nop                       #  43    0x12541e  1      OPC=nop           
  nop                       #  44    0x12541f  1      OPC=nop           
                                                                        
.size __srget, .-__srget

