  .text
  .globl perror
  .type perror, @function

#! file-offset 0x1636e0
#! rip-offset  0x1236e0
#! capacity    64 bytes

# Text                      #  Line  RIP       Bytes  Opcode            
.perror:                    #        0x1236e0  0      OPC=<label>       
  pushq %rbx                #  1     0x1236e0  1      OPC=pushq_r64_1   
  movl %edi, %ebx           #  2     0x1236e1  2      OPC=movl_r32_r32  
  nop                       #  3     0x1236e3  1      OPC=nop           
  nop                       #  4     0x1236e4  1      OPC=nop           
  nop                       #  5     0x1236e5  1      OPC=nop           
  nop                       #  6     0x1236e6  1      OPC=nop           
  nop                       #  7     0x1236e7  1      OPC=nop           
  nop                       #  8     0x1236e8  1      OPC=nop           
  nop                       #  9     0x1236e9  1      OPC=nop           
  nop                       #  10    0x1236ea  1      OPC=nop           
  nop                       #  11    0x1236eb  1      OPC=nop           
  nop                       #  12    0x1236ec  1      OPC=nop           
  nop                       #  13    0x1236ed  1      OPC=nop           
  nop                       #  14    0x1236ee  1      OPC=nop           
  nop                       #  15    0x1236ef  1      OPC=nop           
  nop                       #  16    0x1236f0  1      OPC=nop           
  nop                       #  17    0x1236f1  1      OPC=nop           
  nop                       #  18    0x1236f2  1      OPC=nop           
  nop                       #  19    0x1236f3  1      OPC=nop           
  nop                       #  20    0x1236f4  1      OPC=nop           
  nop                       #  21    0x1236f5  1      OPC=nop           
  nop                       #  22    0x1236f6  1      OPC=nop           
  nop                       #  23    0x1236f7  1      OPC=nop           
  nop                       #  24    0x1236f8  1      OPC=nop           
  nop                       #  25    0x1236f9  1      OPC=nop           
  nop                       #  26    0x1236fa  1      OPC=nop           
  callq .__nacl_read_tp     #  27    0x1236fb  5      OPC=callq_label   
  leaq -0x480(%rax), %rax   #  28    0x123700  7      OPC=leaq_r64_m16  
  movl %ebx, %esi           #  29    0x123707  2      OPC=movl_r32_r32  
  popq %rbx                 #  30    0x123709  1      OPC=popq_r64_1    
  movl %eax, %eax           #  31    0x12370a  2      OPC=movl_r32_r32  
  movl (%r15,%rax,1), %edi  #  32    0x12370c  4      OPC=movl_r32_m32  
  jmpq ._perror_r           #  33    0x123710  5      OPC=jmpq_label_1  
  nop                       #  34    0x123715  1      OPC=nop           
  nop                       #  35    0x123716  1      OPC=nop           
  nop                       #  36    0x123717  1      OPC=nop           
  nop                       #  37    0x123718  1      OPC=nop           
  nop                       #  38    0x123719  1      OPC=nop           
  nop                       #  39    0x12371a  1      OPC=nop           
  nop                       #  40    0x12371b  1      OPC=nop           
  nop                       #  41    0x12371c  1      OPC=nop           
  nop                       #  42    0x12371d  1      OPC=nop           
  nop                       #  43    0x12371e  1      OPC=nop           
  nop                       #  44    0x12371f  1      OPC=nop           
                                                                        
.size perror, .-perror

