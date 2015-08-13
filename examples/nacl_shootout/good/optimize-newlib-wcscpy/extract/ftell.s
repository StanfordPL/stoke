  .text
  .globl ftell
  .type ftell, @function

#! file-offset 0x15c980
#! rip-offset  0x11c980
#! capacity    64 bytes

# Text                      #  Line  RIP       Bytes  Opcode            
.ftell:                     #        0x11c980  0      OPC=<label>       
  pushq %rbx                #  1     0x11c980  1      OPC=pushq_r64_1   
  movl %edi, %ebx           #  2     0x11c981  2      OPC=movl_r32_r32  
  nop                       #  3     0x11c983  1      OPC=nop           
  nop                       #  4     0x11c984  1      OPC=nop           
  nop                       #  5     0x11c985  1      OPC=nop           
  nop                       #  6     0x11c986  1      OPC=nop           
  nop                       #  7     0x11c987  1      OPC=nop           
  nop                       #  8     0x11c988  1      OPC=nop           
  nop                       #  9     0x11c989  1      OPC=nop           
  nop                       #  10    0x11c98a  1      OPC=nop           
  nop                       #  11    0x11c98b  1      OPC=nop           
  nop                       #  12    0x11c98c  1      OPC=nop           
  nop                       #  13    0x11c98d  1      OPC=nop           
  nop                       #  14    0x11c98e  1      OPC=nop           
  nop                       #  15    0x11c98f  1      OPC=nop           
  nop                       #  16    0x11c990  1      OPC=nop           
  nop                       #  17    0x11c991  1      OPC=nop           
  nop                       #  18    0x11c992  1      OPC=nop           
  nop                       #  19    0x11c993  1      OPC=nop           
  nop                       #  20    0x11c994  1      OPC=nop           
  nop                       #  21    0x11c995  1      OPC=nop           
  nop                       #  22    0x11c996  1      OPC=nop           
  nop                       #  23    0x11c997  1      OPC=nop           
  nop                       #  24    0x11c998  1      OPC=nop           
  nop                       #  25    0x11c999  1      OPC=nop           
  nop                       #  26    0x11c99a  1      OPC=nop           
  callq .__nacl_read_tp     #  27    0x11c99b  5      OPC=callq_label   
  leaq -0x480(%rax), %rax   #  28    0x11c9a0  7      OPC=leaq_r64_m16  
  movl %ebx, %esi           #  29    0x11c9a7  2      OPC=movl_r32_r32  
  popq %rbx                 #  30    0x11c9a9  1      OPC=popq_r64_1    
  movl %eax, %eax           #  31    0x11c9aa  2      OPC=movl_r32_r32  
  movl (%r15,%rax,1), %edi  #  32    0x11c9ac  4      OPC=movl_r32_m32  
  jmpq ._ftell_r            #  33    0x11c9b0  5      OPC=jmpq_label_1  
  nop                       #  34    0x11c9b5  1      OPC=nop           
  nop                       #  35    0x11c9b6  1      OPC=nop           
  nop                       #  36    0x11c9b7  1      OPC=nop           
  nop                       #  37    0x11c9b8  1      OPC=nop           
  nop                       #  38    0x11c9b9  1      OPC=nop           
  nop                       #  39    0x11c9ba  1      OPC=nop           
  nop                       #  40    0x11c9bb  1      OPC=nop           
  nop                       #  41    0x11c9bc  1      OPC=nop           
  nop                       #  42    0x11c9bd  1      OPC=nop           
  nop                       #  43    0x11c9be  1      OPC=nop           
  nop                       #  44    0x11c9bf  1      OPC=nop           
                                                                        
.size ftell, .-ftell

