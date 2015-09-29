  .text
  .globl __srget
  .type __srget, @function

#! file-offset 0x165e00
#! rip-offset  0x125e00
#! capacity    64 bytes

# Text                      #  Line  RIP       Bytes  Opcode            
.__srget:                   #        0x125e00  0      OPC=<label>       
  pushq %rbx                #  1     0x125e00  1      OPC=pushq_r64_1   
  movl %edi, %ebx           #  2     0x125e01  2      OPC=movl_r32_r32  
  nop                       #  3     0x125e03  1      OPC=nop           
  nop                       #  4     0x125e04  1      OPC=nop           
  nop                       #  5     0x125e05  1      OPC=nop           
  nop                       #  6     0x125e06  1      OPC=nop           
  nop                       #  7     0x125e07  1      OPC=nop           
  nop                       #  8     0x125e08  1      OPC=nop           
  nop                       #  9     0x125e09  1      OPC=nop           
  nop                       #  10    0x125e0a  1      OPC=nop           
  nop                       #  11    0x125e0b  1      OPC=nop           
  nop                       #  12    0x125e0c  1      OPC=nop           
  nop                       #  13    0x125e0d  1      OPC=nop           
  nop                       #  14    0x125e0e  1      OPC=nop           
  nop                       #  15    0x125e0f  1      OPC=nop           
  nop                       #  16    0x125e10  1      OPC=nop           
  nop                       #  17    0x125e11  1      OPC=nop           
  nop                       #  18    0x125e12  1      OPC=nop           
  nop                       #  19    0x125e13  1      OPC=nop           
  nop                       #  20    0x125e14  1      OPC=nop           
  nop                       #  21    0x125e15  1      OPC=nop           
  nop                       #  22    0x125e16  1      OPC=nop           
  nop                       #  23    0x125e17  1      OPC=nop           
  nop                       #  24    0x125e18  1      OPC=nop           
  nop                       #  25    0x125e19  1      OPC=nop           
  nop                       #  26    0x125e1a  1      OPC=nop           
  callq .__nacl_read_tp     #  27    0x125e1b  5      OPC=callq_label   
  leaq -0x480(%rax), %rax   #  28    0x125e20  7      OPC=leaq_r64_m16  
  movl %ebx, %esi           #  29    0x125e27  2      OPC=movl_r32_r32  
  popq %rbx                 #  30    0x125e29  1      OPC=popq_r64_1    
  movl %eax, %eax           #  31    0x125e2a  2      OPC=movl_r32_r32  
  movl (%r15,%rax,1), %edi  #  32    0x125e2c  4      OPC=movl_r32_m32  
  jmpq .__srget_r           #  33    0x125e30  5      OPC=jmpq_label_1  
  nop                       #  34    0x125e35  1      OPC=nop           
  nop                       #  35    0x125e36  1      OPC=nop           
  nop                       #  36    0x125e37  1      OPC=nop           
  nop                       #  37    0x125e38  1      OPC=nop           
  nop                       #  38    0x125e39  1      OPC=nop           
  nop                       #  39    0x125e3a  1      OPC=nop           
  nop                       #  40    0x125e3b  1      OPC=nop           
  nop                       #  41    0x125e3c  1      OPC=nop           
  nop                       #  42    0x125e3d  1      OPC=nop           
  nop                       #  43    0x125e3e  1      OPC=nop           
  nop                       #  44    0x125e3f  1      OPC=nop           
                                                                        
.size __srget, .-__srget

