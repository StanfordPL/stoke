  .text
  .globl strerror
  .type strerror, @function

#! file-offset 0x167280
#! rip-offset  0x127280
#! capacity    64 bytes

# Text                      #  Line  RIP       Bytes  Opcode            
.strerror:                  #        0x127280  0      OPC=<label>       
  pushq %rbx                #  1     0x127280  1      OPC=pushq_r64_1   
  movl %edi, %ebx           #  2     0x127281  2      OPC=movl_r32_r32  
  nop                       #  3     0x127283  1      OPC=nop           
  nop                       #  4     0x127284  1      OPC=nop           
  nop                       #  5     0x127285  1      OPC=nop           
  nop                       #  6     0x127286  1      OPC=nop           
  nop                       #  7     0x127287  1      OPC=nop           
  nop                       #  8     0x127288  1      OPC=nop           
  nop                       #  9     0x127289  1      OPC=nop           
  nop                       #  10    0x12728a  1      OPC=nop           
  nop                       #  11    0x12728b  1      OPC=nop           
  nop                       #  12    0x12728c  1      OPC=nop           
  nop                       #  13    0x12728d  1      OPC=nop           
  nop                       #  14    0x12728e  1      OPC=nop           
  nop                       #  15    0x12728f  1      OPC=nop           
  nop                       #  16    0x127290  1      OPC=nop           
  nop                       #  17    0x127291  1      OPC=nop           
  nop                       #  18    0x127292  1      OPC=nop           
  nop                       #  19    0x127293  1      OPC=nop           
  nop                       #  20    0x127294  1      OPC=nop           
  nop                       #  21    0x127295  1      OPC=nop           
  nop                       #  22    0x127296  1      OPC=nop           
  nop                       #  23    0x127297  1      OPC=nop           
  nop                       #  24    0x127298  1      OPC=nop           
  nop                       #  25    0x127299  1      OPC=nop           
  nop                       #  26    0x12729a  1      OPC=nop           
  callq .__nacl_read_tp     #  27    0x12729b  5      OPC=callq_label   
  leaq -0x480(%rax), %rax   #  28    0x1272a0  7      OPC=leaq_r64_m16  
  movl %ebx, %esi           #  29    0x1272a7  2      OPC=movl_r32_r32  
  xorl %ecx, %ecx           #  30    0x1272a9  2      OPC=xorl_r32_r32  
  popq %rbx                 #  31    0x1272ab  1      OPC=popq_r64_1    
  xorl %edx, %edx           #  32    0x1272ac  2      OPC=xorl_r32_r32  
  movl %eax, %eax           #  33    0x1272ae  2      OPC=movl_r32_r32  
  movl (%r15,%rax,1), %edi  #  34    0x1272b0  4      OPC=movl_r32_m32  
  jmpq ._strerror_r         #  35    0x1272b4  5      OPC=jmpq_label_1  
  nop                       #  36    0x1272b9  1      OPC=nop           
  nop                       #  37    0x1272ba  1      OPC=nop           
  nop                       #  38    0x1272bb  1      OPC=nop           
  nop                       #  39    0x1272bc  1      OPC=nop           
  nop                       #  40    0x1272bd  1      OPC=nop           
  nop                       #  41    0x1272be  1      OPC=nop           
  nop                       #  42    0x1272bf  1      OPC=nop           
                                                                        
.size strerror, .-strerror

