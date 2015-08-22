  .text
  .globl strdup
  .type strdup, @function

#! file-offset 0x167380
#! rip-offset  0x127380
#! capacity    64 bytes

# Text                      #  Line  RIP       Bytes  Opcode            
.strdup:                    #        0x127380  0      OPC=<label>       
  pushq %rbx                #  1     0x127380  1      OPC=pushq_r64_1   
  movl %edi, %ebx           #  2     0x127381  2      OPC=movl_r32_r32  
  nop                       #  3     0x127383  1      OPC=nop           
  nop                       #  4     0x127384  1      OPC=nop           
  nop                       #  5     0x127385  1      OPC=nop           
  nop                       #  6     0x127386  1      OPC=nop           
  nop                       #  7     0x127387  1      OPC=nop           
  nop                       #  8     0x127388  1      OPC=nop           
  nop                       #  9     0x127389  1      OPC=nop           
  nop                       #  10    0x12738a  1      OPC=nop           
  nop                       #  11    0x12738b  1      OPC=nop           
  nop                       #  12    0x12738c  1      OPC=nop           
  nop                       #  13    0x12738d  1      OPC=nop           
  nop                       #  14    0x12738e  1      OPC=nop           
  nop                       #  15    0x12738f  1      OPC=nop           
  nop                       #  16    0x127390  1      OPC=nop           
  nop                       #  17    0x127391  1      OPC=nop           
  nop                       #  18    0x127392  1      OPC=nop           
  nop                       #  19    0x127393  1      OPC=nop           
  nop                       #  20    0x127394  1      OPC=nop           
  nop                       #  21    0x127395  1      OPC=nop           
  nop                       #  22    0x127396  1      OPC=nop           
  nop                       #  23    0x127397  1      OPC=nop           
  nop                       #  24    0x127398  1      OPC=nop           
  nop                       #  25    0x127399  1      OPC=nop           
  nop                       #  26    0x12739a  1      OPC=nop           
  callq .__nacl_read_tp     #  27    0x12739b  5      OPC=callq_label   
  leaq -0x480(%rax), %rax   #  28    0x1273a0  7      OPC=leaq_r64_m16  
  movl %ebx, %esi           #  29    0x1273a7  2      OPC=movl_r32_r32  
  popq %rbx                 #  30    0x1273a9  1      OPC=popq_r64_1    
  movl %eax, %eax           #  31    0x1273aa  2      OPC=movl_r32_r32  
  movl (%r15,%rax,1), %edi  #  32    0x1273ac  4      OPC=movl_r32_m32  
  jmpq ._strdup_r           #  33    0x1273b0  5      OPC=jmpq_label_1  
  nop                       #  34    0x1273b5  1      OPC=nop           
  nop                       #  35    0x1273b6  1      OPC=nop           
  nop                       #  36    0x1273b7  1      OPC=nop           
  nop                       #  37    0x1273b8  1      OPC=nop           
  nop                       #  38    0x1273b9  1      OPC=nop           
  nop                       #  39    0x1273ba  1      OPC=nop           
  nop                       #  40    0x1273bb  1      OPC=nop           
  nop                       #  41    0x1273bc  1      OPC=nop           
  nop                       #  42    0x1273bd  1      OPC=nop           
  nop                       #  43    0x1273be  1      OPC=nop           
  nop                       #  44    0x1273bf  1      OPC=nop           
                                                                        
.size strdup, .-strdup

