  .text
  .globl wctype
  .type wctype, @function

#! file-offset 0x184160
#! rip-offset  0x144160
#! capacity    64 bytes

# Text                      #  Line  RIP       Bytes  Opcode            
.wctype:                    #        0x144160  0      OPC=<label>       
  pushq %rbx                #  1     0x144160  1      OPC=pushq_r64_1   
  movl %edi, %ebx           #  2     0x144161  2      OPC=movl_r32_r32  
  nop                       #  3     0x144163  1      OPC=nop           
  nop                       #  4     0x144164  1      OPC=nop           
  nop                       #  5     0x144165  1      OPC=nop           
  nop                       #  6     0x144166  1      OPC=nop           
  nop                       #  7     0x144167  1      OPC=nop           
  nop                       #  8     0x144168  1      OPC=nop           
  nop                       #  9     0x144169  1      OPC=nop           
  nop                       #  10    0x14416a  1      OPC=nop           
  nop                       #  11    0x14416b  1      OPC=nop           
  nop                       #  12    0x14416c  1      OPC=nop           
  nop                       #  13    0x14416d  1      OPC=nop           
  nop                       #  14    0x14416e  1      OPC=nop           
  nop                       #  15    0x14416f  1      OPC=nop           
  nop                       #  16    0x144170  1      OPC=nop           
  nop                       #  17    0x144171  1      OPC=nop           
  nop                       #  18    0x144172  1      OPC=nop           
  nop                       #  19    0x144173  1      OPC=nop           
  nop                       #  20    0x144174  1      OPC=nop           
  nop                       #  21    0x144175  1      OPC=nop           
  nop                       #  22    0x144176  1      OPC=nop           
  nop                       #  23    0x144177  1      OPC=nop           
  nop                       #  24    0x144178  1      OPC=nop           
  nop                       #  25    0x144179  1      OPC=nop           
  nop                       #  26    0x14417a  1      OPC=nop           
  callq .__nacl_read_tp     #  27    0x14417b  5      OPC=callq_label   
  leaq -0x480(%rax), %rax   #  28    0x144180  7      OPC=leaq_r64_m16  
  movl %ebx, %esi           #  29    0x144187  2      OPC=movl_r32_r32  
  popq %rbx                 #  30    0x144189  1      OPC=popq_r64_1    
  movl %eax, %eax           #  31    0x14418a  2      OPC=movl_r32_r32  
  movl (%r15,%rax,1), %edi  #  32    0x14418c  4      OPC=movl_r32_m32  
  jmpq ._wctype_r           #  33    0x144190  5      OPC=jmpq_label_1  
  nop                       #  34    0x144195  1      OPC=nop           
  nop                       #  35    0x144196  1      OPC=nop           
  nop                       #  36    0x144197  1      OPC=nop           
  nop                       #  37    0x144198  1      OPC=nop           
  nop                       #  38    0x144199  1      OPC=nop           
  nop                       #  39    0x14419a  1      OPC=nop           
  nop                       #  40    0x14419b  1      OPC=nop           
  nop                       #  41    0x14419c  1      OPC=nop           
  nop                       #  42    0x14419d  1      OPC=nop           
  nop                       #  43    0x14419e  1      OPC=nop           
  nop                       #  44    0x14419f  1      OPC=nop           
                                                                        
.size wctype, .-wctype

