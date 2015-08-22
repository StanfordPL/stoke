  .text
  .globl wctype
  .type wctype, @function

#! file-offset 0x184880
#! rip-offset  0x144880
#! capacity    64 bytes

# Text                      #  Line  RIP       Bytes  Opcode            
.wctype:                    #        0x144880  0      OPC=<label>       
  pushq %rbx                #  1     0x144880  1      OPC=pushq_r64_1   
  movl %edi, %ebx           #  2     0x144881  2      OPC=movl_r32_r32  
  nop                       #  3     0x144883  1      OPC=nop           
  nop                       #  4     0x144884  1      OPC=nop           
  nop                       #  5     0x144885  1      OPC=nop           
  nop                       #  6     0x144886  1      OPC=nop           
  nop                       #  7     0x144887  1      OPC=nop           
  nop                       #  8     0x144888  1      OPC=nop           
  nop                       #  9     0x144889  1      OPC=nop           
  nop                       #  10    0x14488a  1      OPC=nop           
  nop                       #  11    0x14488b  1      OPC=nop           
  nop                       #  12    0x14488c  1      OPC=nop           
  nop                       #  13    0x14488d  1      OPC=nop           
  nop                       #  14    0x14488e  1      OPC=nop           
  nop                       #  15    0x14488f  1      OPC=nop           
  nop                       #  16    0x144890  1      OPC=nop           
  nop                       #  17    0x144891  1      OPC=nop           
  nop                       #  18    0x144892  1      OPC=nop           
  nop                       #  19    0x144893  1      OPC=nop           
  nop                       #  20    0x144894  1      OPC=nop           
  nop                       #  21    0x144895  1      OPC=nop           
  nop                       #  22    0x144896  1      OPC=nop           
  nop                       #  23    0x144897  1      OPC=nop           
  nop                       #  24    0x144898  1      OPC=nop           
  nop                       #  25    0x144899  1      OPC=nop           
  nop                       #  26    0x14489a  1      OPC=nop           
  callq .__nacl_read_tp     #  27    0x14489b  5      OPC=callq_label   
  leaq -0x480(%rax), %rax   #  28    0x1448a0  7      OPC=leaq_r64_m16  
  movl %ebx, %esi           #  29    0x1448a7  2      OPC=movl_r32_r32  
  popq %rbx                 #  30    0x1448a9  1      OPC=popq_r64_1    
  movl %eax, %eax           #  31    0x1448aa  2      OPC=movl_r32_r32  
  movl (%r15,%rax,1), %edi  #  32    0x1448ac  4      OPC=movl_r32_m32  
  jmpq ._wctype_r           #  33    0x1448b0  5      OPC=jmpq_label_1  
  nop                       #  34    0x1448b5  1      OPC=nop           
  nop                       #  35    0x1448b6  1      OPC=nop           
  nop                       #  36    0x1448b7  1      OPC=nop           
  nop                       #  37    0x1448b8  1      OPC=nop           
  nop                       #  38    0x1448b9  1      OPC=nop           
  nop                       #  39    0x1448ba  1      OPC=nop           
  nop                       #  40    0x1448bb  1      OPC=nop           
  nop                       #  41    0x1448bc  1      OPC=nop           
  nop                       #  42    0x1448bd  1      OPC=nop           
  nop                       #  43    0x1448be  1      OPC=nop           
  nop                       #  44    0x1448bf  1      OPC=nop           
                                                                        
.size wctype, .-wctype

