  .text
  .globl wctype
  .type wctype, @function

#! file-offset 0x183820
#! rip-offset  0x143820
#! capacity    64 bytes

# Text                      #  Line  RIP       Bytes  Opcode    
.wctype:                    #        0x143820  0      OPC=0     
  pushq %rbx                #  1     0x143820  1      OPC=1861  
  movl %edi, %ebx           #  2     0x143821  2      OPC=1157  
  nop                       #  3     0x143823  1      OPC=1343  
  nop                       #  4     0x143824  1      OPC=1343  
  nop                       #  5     0x143825  1      OPC=1343  
  nop                       #  6     0x143826  1      OPC=1343  
  nop                       #  7     0x143827  1      OPC=1343  
  nop                       #  8     0x143828  1      OPC=1343  
  nop                       #  9     0x143829  1      OPC=1343  
  nop                       #  10    0x14382a  1      OPC=1343  
  nop                       #  11    0x14382b  1      OPC=1343  
  nop                       #  12    0x14382c  1      OPC=1343  
  nop                       #  13    0x14382d  1      OPC=1343  
  nop                       #  14    0x14382e  1      OPC=1343  
  nop                       #  15    0x14382f  1      OPC=1343  
  nop                       #  16    0x143830  1      OPC=1343  
  nop                       #  17    0x143831  1      OPC=1343  
  nop                       #  18    0x143832  1      OPC=1343  
  nop                       #  19    0x143833  1      OPC=1343  
  nop                       #  20    0x143834  1      OPC=1343  
  nop                       #  21    0x143835  1      OPC=1343  
  nop                       #  22    0x143836  1      OPC=1343  
  nop                       #  23    0x143837  1      OPC=1343  
  nop                       #  24    0x143838  1      OPC=1343  
  nop                       #  25    0x143839  1      OPC=1343  
  nop                       #  26    0x14383a  1      OPC=1343  
  callq .__nacl_read_tp     #  27    0x14383b  5      OPC=260   
  leaq -0x480(%rax), %rax   #  28    0x143840  7      OPC=1069  
  movl %ebx, %esi           #  29    0x143847  2      OPC=1157  
  popq %rbx                 #  30    0x143849  1      OPC=1694  
  movl %eax, %eax           #  31    0x14384a  2      OPC=1157  
  movl (%r15,%rax,1), %edi  #  32    0x14384c  4      OPC=1156  
  jmpq ._wctype_r           #  33    0x143850  5      OPC=930   
  nop                       #  34    0x143855  1      OPC=1343  
  nop                       #  35    0x143856  1      OPC=1343  
  nop                       #  36    0x143857  1      OPC=1343  
  nop                       #  37    0x143858  1      OPC=1343  
  nop                       #  38    0x143859  1      OPC=1343  
  nop                       #  39    0x14385a  1      OPC=1343  
  nop                       #  40    0x14385b  1      OPC=1343  
  nop                       #  41    0x14385c  1      OPC=1343  
  nop                       #  42    0x14385d  1      OPC=1343  
  nop                       #  43    0x14385e  1      OPC=1343  
  nop                       #  44    0x14385f  1      OPC=1343  
                                                                
.size wctype, .-wctype

