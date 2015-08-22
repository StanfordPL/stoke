  .text
  .globl strerror
  .type strerror, @function

#! file-offset 0x167ca0
#! rip-offset  0x127ca0
#! capacity    64 bytes

# Text                      #  Line  RIP       Bytes  Opcode            
.strerror:                  #        0x127ca0  0      OPC=<label>       
  pushq %rbx                #  1     0x127ca0  1      OPC=pushq_r64_1   
  movl %edi, %ebx           #  2     0x127ca1  2      OPC=movl_r32_r32  
  nop                       #  3     0x127ca3  1      OPC=nop           
  nop                       #  4     0x127ca4  1      OPC=nop           
  nop                       #  5     0x127ca5  1      OPC=nop           
  nop                       #  6     0x127ca6  1      OPC=nop           
  nop                       #  7     0x127ca7  1      OPC=nop           
  nop                       #  8     0x127ca8  1      OPC=nop           
  nop                       #  9     0x127ca9  1      OPC=nop           
  nop                       #  10    0x127caa  1      OPC=nop           
  nop                       #  11    0x127cab  1      OPC=nop           
  nop                       #  12    0x127cac  1      OPC=nop           
  nop                       #  13    0x127cad  1      OPC=nop           
  nop                       #  14    0x127cae  1      OPC=nop           
  nop                       #  15    0x127caf  1      OPC=nop           
  nop                       #  16    0x127cb0  1      OPC=nop           
  nop                       #  17    0x127cb1  1      OPC=nop           
  nop                       #  18    0x127cb2  1      OPC=nop           
  nop                       #  19    0x127cb3  1      OPC=nop           
  nop                       #  20    0x127cb4  1      OPC=nop           
  nop                       #  21    0x127cb5  1      OPC=nop           
  nop                       #  22    0x127cb6  1      OPC=nop           
  nop                       #  23    0x127cb7  1      OPC=nop           
  nop                       #  24    0x127cb8  1      OPC=nop           
  nop                       #  25    0x127cb9  1      OPC=nop           
  nop                       #  26    0x127cba  1      OPC=nop           
  callq .__nacl_read_tp     #  27    0x127cbb  5      OPC=callq_label   
  leaq -0x480(%rax), %rax   #  28    0x127cc0  7      OPC=leaq_r64_m16  
  movl %ebx, %esi           #  29    0x127cc7  2      OPC=movl_r32_r32  
  xorl %ecx, %ecx           #  30    0x127cc9  2      OPC=xorl_r32_r32  
  popq %rbx                 #  31    0x127ccb  1      OPC=popq_r64_1    
  xorl %edx, %edx           #  32    0x127ccc  2      OPC=xorl_r32_r32  
  movl %eax, %eax           #  33    0x127cce  2      OPC=movl_r32_r32  
  movl (%r15,%rax,1), %edi  #  34    0x127cd0  4      OPC=movl_r32_m32  
  jmpq ._strerror_r         #  35    0x127cd4  5      OPC=jmpq_label_1  
  nop                       #  36    0x127cd9  1      OPC=nop           
  nop                       #  37    0x127cda  1      OPC=nop           
  nop                       #  38    0x127cdb  1      OPC=nop           
  nop                       #  39    0x127cdc  1      OPC=nop           
  nop                       #  40    0x127cdd  1      OPC=nop           
  nop                       #  41    0x127cde  1      OPC=nop           
  nop                       #  42    0x127cdf  1      OPC=nop           
                                                                        
.size strerror, .-strerror

