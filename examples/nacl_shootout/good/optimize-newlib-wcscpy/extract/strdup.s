  .text
  .globl strdup
  .type strdup, @function

#! file-offset 0x166960
#! rip-offset  0x126960
#! capacity    64 bytes

# Text                      #  Line  RIP       Bytes  Opcode            
.strdup:                    #        0x126960  0      OPC=<label>       
  pushq %rbx                #  1     0x126960  1      OPC=pushq_r64_1   
  movl %edi, %ebx           #  2     0x126961  2      OPC=movl_r32_r32  
  nop                       #  3     0x126963  1      OPC=nop           
  nop                       #  4     0x126964  1      OPC=nop           
  nop                       #  5     0x126965  1      OPC=nop           
  nop                       #  6     0x126966  1      OPC=nop           
  nop                       #  7     0x126967  1      OPC=nop           
  nop                       #  8     0x126968  1      OPC=nop           
  nop                       #  9     0x126969  1      OPC=nop           
  nop                       #  10    0x12696a  1      OPC=nop           
  nop                       #  11    0x12696b  1      OPC=nop           
  nop                       #  12    0x12696c  1      OPC=nop           
  nop                       #  13    0x12696d  1      OPC=nop           
  nop                       #  14    0x12696e  1      OPC=nop           
  nop                       #  15    0x12696f  1      OPC=nop           
  nop                       #  16    0x126970  1      OPC=nop           
  nop                       #  17    0x126971  1      OPC=nop           
  nop                       #  18    0x126972  1      OPC=nop           
  nop                       #  19    0x126973  1      OPC=nop           
  nop                       #  20    0x126974  1      OPC=nop           
  nop                       #  21    0x126975  1      OPC=nop           
  nop                       #  22    0x126976  1      OPC=nop           
  nop                       #  23    0x126977  1      OPC=nop           
  nop                       #  24    0x126978  1      OPC=nop           
  nop                       #  25    0x126979  1      OPC=nop           
  nop                       #  26    0x12697a  1      OPC=nop           
  callq .__nacl_read_tp     #  27    0x12697b  5      OPC=callq_label   
  leaq -0x480(%rax), %rax   #  28    0x126980  7      OPC=leaq_r64_m16  
  movl %ebx, %esi           #  29    0x126987  2      OPC=movl_r32_r32  
  popq %rbx                 #  30    0x126989  1      OPC=popq_r64_1    
  movl %eax, %eax           #  31    0x12698a  2      OPC=movl_r32_r32  
  movl (%r15,%rax,1), %edi  #  32    0x12698c  4      OPC=movl_r32_m32  
  jmpq ._strdup_r           #  33    0x126990  5      OPC=jmpq_label_1  
  nop                       #  34    0x126995  1      OPC=nop           
  nop                       #  35    0x126996  1      OPC=nop           
  nop                       #  36    0x126997  1      OPC=nop           
  nop                       #  37    0x126998  1      OPC=nop           
  nop                       #  38    0x126999  1      OPC=nop           
  nop                       #  39    0x12699a  1      OPC=nop           
  nop                       #  40    0x12699b  1      OPC=nop           
  nop                       #  41    0x12699c  1      OPC=nop           
  nop                       #  42    0x12699d  1      OPC=nop           
  nop                       #  43    0x12699e  1      OPC=nop           
  nop                       #  44    0x12699f  1      OPC=nop           
                                                                        
.size strdup, .-strdup

