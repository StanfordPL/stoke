  .text
  .globl perror
  .type perror, @function

#! file-offset 0x163e00
#! rip-offset  0x123e00
#! capacity    64 bytes

# Text                      #  Line  RIP       Bytes  Opcode            
.perror:                    #        0x123e00  0      OPC=<label>       
  pushq %rbx                #  1     0x123e00  1      OPC=pushq_r64_1   
  movl %edi, %ebx           #  2     0x123e01  2      OPC=movl_r32_r32  
  nop                       #  3     0x123e03  1      OPC=nop           
  nop                       #  4     0x123e04  1      OPC=nop           
  nop                       #  5     0x123e05  1      OPC=nop           
  nop                       #  6     0x123e06  1      OPC=nop           
  nop                       #  7     0x123e07  1      OPC=nop           
  nop                       #  8     0x123e08  1      OPC=nop           
  nop                       #  9     0x123e09  1      OPC=nop           
  nop                       #  10    0x123e0a  1      OPC=nop           
  nop                       #  11    0x123e0b  1      OPC=nop           
  nop                       #  12    0x123e0c  1      OPC=nop           
  nop                       #  13    0x123e0d  1      OPC=nop           
  nop                       #  14    0x123e0e  1      OPC=nop           
  nop                       #  15    0x123e0f  1      OPC=nop           
  nop                       #  16    0x123e10  1      OPC=nop           
  nop                       #  17    0x123e11  1      OPC=nop           
  nop                       #  18    0x123e12  1      OPC=nop           
  nop                       #  19    0x123e13  1      OPC=nop           
  nop                       #  20    0x123e14  1      OPC=nop           
  nop                       #  21    0x123e15  1      OPC=nop           
  nop                       #  22    0x123e16  1      OPC=nop           
  nop                       #  23    0x123e17  1      OPC=nop           
  nop                       #  24    0x123e18  1      OPC=nop           
  nop                       #  25    0x123e19  1      OPC=nop           
  nop                       #  26    0x123e1a  1      OPC=nop           
  callq .__nacl_read_tp     #  27    0x123e1b  5      OPC=callq_label   
  leaq -0x480(%rax), %rax   #  28    0x123e20  7      OPC=leaq_r64_m16  
  movl %ebx, %esi           #  29    0x123e27  2      OPC=movl_r32_r32  
  popq %rbx                 #  30    0x123e29  1      OPC=popq_r64_1    
  movl %eax, %eax           #  31    0x123e2a  2      OPC=movl_r32_r32  
  movl (%r15,%rax,1), %edi  #  32    0x123e2c  4      OPC=movl_r32_m32  
  jmpq ._perror_r           #  33    0x123e30  5      OPC=jmpq_label_1  
  nop                       #  34    0x123e35  1      OPC=nop           
  nop                       #  35    0x123e36  1      OPC=nop           
  nop                       #  36    0x123e37  1      OPC=nop           
  nop                       #  37    0x123e38  1      OPC=nop           
  nop                       #  38    0x123e39  1      OPC=nop           
  nop                       #  39    0x123e3a  1      OPC=nop           
  nop                       #  40    0x123e3b  1      OPC=nop           
  nop                       #  41    0x123e3c  1      OPC=nop           
  nop                       #  42    0x123e3d  1      OPC=nop           
  nop                       #  43    0x123e3e  1      OPC=nop           
  nop                       #  44    0x123e3f  1      OPC=nop           
                                                                        
.size perror, .-perror

