  .text
  .globl ftello
  .type ftello, @function

#! file-offset 0x15cd00
#! rip-offset  0x11cd00
#! capacity    64 bytes

# Text                      #  Line  RIP       Bytes  Opcode            
.ftello:                    #        0x11cd00  0      OPC=<label>       
  pushq %rbx                #  1     0x11cd00  1      OPC=pushq_r64_1   
  movl %edi, %ebx           #  2     0x11cd01  2      OPC=movl_r32_r32  
  nop                       #  3     0x11cd03  1      OPC=nop           
  nop                       #  4     0x11cd04  1      OPC=nop           
  nop                       #  5     0x11cd05  1      OPC=nop           
  nop                       #  6     0x11cd06  1      OPC=nop           
  nop                       #  7     0x11cd07  1      OPC=nop           
  nop                       #  8     0x11cd08  1      OPC=nop           
  nop                       #  9     0x11cd09  1      OPC=nop           
  nop                       #  10    0x11cd0a  1      OPC=nop           
  nop                       #  11    0x11cd0b  1      OPC=nop           
  nop                       #  12    0x11cd0c  1      OPC=nop           
  nop                       #  13    0x11cd0d  1      OPC=nop           
  nop                       #  14    0x11cd0e  1      OPC=nop           
  nop                       #  15    0x11cd0f  1      OPC=nop           
  nop                       #  16    0x11cd10  1      OPC=nop           
  nop                       #  17    0x11cd11  1      OPC=nop           
  nop                       #  18    0x11cd12  1      OPC=nop           
  nop                       #  19    0x11cd13  1      OPC=nop           
  nop                       #  20    0x11cd14  1      OPC=nop           
  nop                       #  21    0x11cd15  1      OPC=nop           
  nop                       #  22    0x11cd16  1      OPC=nop           
  nop                       #  23    0x11cd17  1      OPC=nop           
  nop                       #  24    0x11cd18  1      OPC=nop           
  nop                       #  25    0x11cd19  1      OPC=nop           
  nop                       #  26    0x11cd1a  1      OPC=nop           
  callq .__nacl_read_tp     #  27    0x11cd1b  5      OPC=callq_label   
  leaq -0x480(%rax), %rax   #  28    0x11cd20  7      OPC=leaq_r64_m16  
  movl %ebx, %esi           #  29    0x11cd27  2      OPC=movl_r32_r32  
  popq %rbx                 #  30    0x11cd29  1      OPC=popq_r64_1    
  movl %eax, %eax           #  31    0x11cd2a  2      OPC=movl_r32_r32  
  movl (%r15,%rax,1), %edi  #  32    0x11cd2c  4      OPC=movl_r32_m32  
  jmpq ._ftello_r           #  33    0x11cd30  5      OPC=jmpq_label_1  
  nop                       #  34    0x11cd35  1      OPC=nop           
  nop                       #  35    0x11cd36  1      OPC=nop           
  nop                       #  36    0x11cd37  1      OPC=nop           
  nop                       #  37    0x11cd38  1      OPC=nop           
  nop                       #  38    0x11cd39  1      OPC=nop           
  nop                       #  39    0x11cd3a  1      OPC=nop           
  nop                       #  40    0x11cd3b  1      OPC=nop           
  nop                       #  41    0x11cd3c  1      OPC=nop           
  nop                       #  42    0x11cd3d  1      OPC=nop           
  nop                       #  43    0x11cd3e  1      OPC=nop           
  nop                       #  44    0x11cd3f  1      OPC=nop           
                                                                        
.size ftello, .-ftello

