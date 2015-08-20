  .text
  .globl ftello
  .type ftello, @function

#! file-offset 0x15d000
#! rip-offset  0x11d000
#! capacity    64 bytes

# Text                      #  Line  RIP       Bytes  Opcode            
.ftello:                    #        0x11d000  0      OPC=<label>       
  pushq %rbx                #  1     0x11d000  1      OPC=pushq_r64_1   
  movl %edi, %ebx           #  2     0x11d001  2      OPC=movl_r32_r32  
  nop                       #  3     0x11d003  1      OPC=nop           
  nop                       #  4     0x11d004  1      OPC=nop           
  nop                       #  5     0x11d005  1      OPC=nop           
  nop                       #  6     0x11d006  1      OPC=nop           
  nop                       #  7     0x11d007  1      OPC=nop           
  nop                       #  8     0x11d008  1      OPC=nop           
  nop                       #  9     0x11d009  1      OPC=nop           
  nop                       #  10    0x11d00a  1      OPC=nop           
  nop                       #  11    0x11d00b  1      OPC=nop           
  nop                       #  12    0x11d00c  1      OPC=nop           
  nop                       #  13    0x11d00d  1      OPC=nop           
  nop                       #  14    0x11d00e  1      OPC=nop           
  nop                       #  15    0x11d00f  1      OPC=nop           
  nop                       #  16    0x11d010  1      OPC=nop           
  nop                       #  17    0x11d011  1      OPC=nop           
  nop                       #  18    0x11d012  1      OPC=nop           
  nop                       #  19    0x11d013  1      OPC=nop           
  nop                       #  20    0x11d014  1      OPC=nop           
  nop                       #  21    0x11d015  1      OPC=nop           
  nop                       #  22    0x11d016  1      OPC=nop           
  nop                       #  23    0x11d017  1      OPC=nop           
  nop                       #  24    0x11d018  1      OPC=nop           
  nop                       #  25    0x11d019  1      OPC=nop           
  nop                       #  26    0x11d01a  1      OPC=nop           
  callq .__nacl_read_tp     #  27    0x11d01b  5      OPC=callq_label   
  leaq -0x480(%rax), %rax   #  28    0x11d020  7      OPC=leaq_r64_m16  
  movl %ebx, %esi           #  29    0x11d027  2      OPC=movl_r32_r32  
  popq %rbx                 #  30    0x11d029  1      OPC=popq_r64_1    
  movl %eax, %eax           #  31    0x11d02a  2      OPC=movl_r32_r32  
  movl (%r15,%rax,1), %edi  #  32    0x11d02c  4      OPC=movl_r32_m32  
  jmpq ._ftello_r           #  33    0x11d030  5      OPC=jmpq_label_1  
  nop                       #  34    0x11d035  1      OPC=nop           
  nop                       #  35    0x11d036  1      OPC=nop           
  nop                       #  36    0x11d037  1      OPC=nop           
  nop                       #  37    0x11d038  1      OPC=nop           
  nop                       #  38    0x11d039  1      OPC=nop           
  nop                       #  39    0x11d03a  1      OPC=nop           
  nop                       #  40    0x11d03b  1      OPC=nop           
  nop                       #  41    0x11d03c  1      OPC=nop           
  nop                       #  42    0x11d03d  1      OPC=nop           
  nop                       #  43    0x11d03e  1      OPC=nop           
  nop                       #  44    0x11d03f  1      OPC=nop           
                                                                        
.size ftello, .-ftello

