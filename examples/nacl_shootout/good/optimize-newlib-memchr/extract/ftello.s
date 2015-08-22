  .text
  .globl ftello
  .type ftello, @function

#! file-offset 0x15d720
#! rip-offset  0x11d720
#! capacity    64 bytes

# Text                      #  Line  RIP       Bytes  Opcode            
.ftello:                    #        0x11d720  0      OPC=<label>       
  pushq %rbx                #  1     0x11d720  1      OPC=pushq_r64_1   
  movl %edi, %ebx           #  2     0x11d721  2      OPC=movl_r32_r32  
  nop                       #  3     0x11d723  1      OPC=nop           
  nop                       #  4     0x11d724  1      OPC=nop           
  nop                       #  5     0x11d725  1      OPC=nop           
  nop                       #  6     0x11d726  1      OPC=nop           
  nop                       #  7     0x11d727  1      OPC=nop           
  nop                       #  8     0x11d728  1      OPC=nop           
  nop                       #  9     0x11d729  1      OPC=nop           
  nop                       #  10    0x11d72a  1      OPC=nop           
  nop                       #  11    0x11d72b  1      OPC=nop           
  nop                       #  12    0x11d72c  1      OPC=nop           
  nop                       #  13    0x11d72d  1      OPC=nop           
  nop                       #  14    0x11d72e  1      OPC=nop           
  nop                       #  15    0x11d72f  1      OPC=nop           
  nop                       #  16    0x11d730  1      OPC=nop           
  nop                       #  17    0x11d731  1      OPC=nop           
  nop                       #  18    0x11d732  1      OPC=nop           
  nop                       #  19    0x11d733  1      OPC=nop           
  nop                       #  20    0x11d734  1      OPC=nop           
  nop                       #  21    0x11d735  1      OPC=nop           
  nop                       #  22    0x11d736  1      OPC=nop           
  nop                       #  23    0x11d737  1      OPC=nop           
  nop                       #  24    0x11d738  1      OPC=nop           
  nop                       #  25    0x11d739  1      OPC=nop           
  nop                       #  26    0x11d73a  1      OPC=nop           
  callq .__nacl_read_tp     #  27    0x11d73b  5      OPC=callq_label   
  leaq -0x480(%rax), %rax   #  28    0x11d740  7      OPC=leaq_r64_m16  
  movl %ebx, %esi           #  29    0x11d747  2      OPC=movl_r32_r32  
  popq %rbx                 #  30    0x11d749  1      OPC=popq_r64_1    
  movl %eax, %eax           #  31    0x11d74a  2      OPC=movl_r32_r32  
  movl (%r15,%rax,1), %edi  #  32    0x11d74c  4      OPC=movl_r32_m32  
  jmpq ._ftello_r           #  33    0x11d750  5      OPC=jmpq_label_1  
  nop                       #  34    0x11d755  1      OPC=nop           
  nop                       #  35    0x11d756  1      OPC=nop           
  nop                       #  36    0x11d757  1      OPC=nop           
  nop                       #  37    0x11d758  1      OPC=nop           
  nop                       #  38    0x11d759  1      OPC=nop           
  nop                       #  39    0x11d75a  1      OPC=nop           
  nop                       #  40    0x11d75b  1      OPC=nop           
  nop                       #  41    0x11d75c  1      OPC=nop           
  nop                       #  42    0x11d75d  1      OPC=nop           
  nop                       #  43    0x11d75e  1      OPC=nop           
  nop                       #  44    0x11d75f  1      OPC=nop           
                                                                        
.size ftello, .-ftello

