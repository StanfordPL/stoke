  .text
  .globl strerror
  .type strerror, @function

#! file-offset 0x167580
#! rip-offset  0x127580
#! capacity    64 bytes

# Text                      #  Line  RIP       Bytes  Opcode            
.strerror:                  #        0x127580  0      OPC=<label>       
  pushq %rbx                #  1     0x127580  1      OPC=pushq_r64_1   
  movl %edi, %ebx           #  2     0x127581  2      OPC=movl_r32_r32  
  nop                       #  3     0x127583  1      OPC=nop           
  nop                       #  4     0x127584  1      OPC=nop           
  nop                       #  5     0x127585  1      OPC=nop           
  nop                       #  6     0x127586  1      OPC=nop           
  nop                       #  7     0x127587  1      OPC=nop           
  nop                       #  8     0x127588  1      OPC=nop           
  nop                       #  9     0x127589  1      OPC=nop           
  nop                       #  10    0x12758a  1      OPC=nop           
  nop                       #  11    0x12758b  1      OPC=nop           
  nop                       #  12    0x12758c  1      OPC=nop           
  nop                       #  13    0x12758d  1      OPC=nop           
  nop                       #  14    0x12758e  1      OPC=nop           
  nop                       #  15    0x12758f  1      OPC=nop           
  nop                       #  16    0x127590  1      OPC=nop           
  nop                       #  17    0x127591  1      OPC=nop           
  nop                       #  18    0x127592  1      OPC=nop           
  nop                       #  19    0x127593  1      OPC=nop           
  nop                       #  20    0x127594  1      OPC=nop           
  nop                       #  21    0x127595  1      OPC=nop           
  nop                       #  22    0x127596  1      OPC=nop           
  nop                       #  23    0x127597  1      OPC=nop           
  nop                       #  24    0x127598  1      OPC=nop           
  nop                       #  25    0x127599  1      OPC=nop           
  nop                       #  26    0x12759a  1      OPC=nop           
  callq .__nacl_read_tp     #  27    0x12759b  5      OPC=callq_label   
  leaq -0x480(%rax), %rax   #  28    0x1275a0  7      OPC=leaq_r64_m16  
  movl %ebx, %esi           #  29    0x1275a7  2      OPC=movl_r32_r32  
  xorl %ecx, %ecx           #  30    0x1275a9  2      OPC=xorl_r32_r32  
  popq %rbx                 #  31    0x1275ab  1      OPC=popq_r64_1    
  xorl %edx, %edx           #  32    0x1275ac  2      OPC=xorl_r32_r32  
  movl %eax, %eax           #  33    0x1275ae  2      OPC=movl_r32_r32  
  movl (%r15,%rax,1), %edi  #  34    0x1275b0  4      OPC=movl_r32_m32  
  jmpq ._strerror_r         #  35    0x1275b4  5      OPC=jmpq_label_1  
  nop                       #  36    0x1275b9  1      OPC=nop           
  nop                       #  37    0x1275ba  1      OPC=nop           
  nop                       #  38    0x1275bb  1      OPC=nop           
  nop                       #  39    0x1275bc  1      OPC=nop           
  nop                       #  40    0x1275bd  1      OPC=nop           
  nop                       #  41    0x1275be  1      OPC=nop           
  nop                       #  42    0x1275bf  1      OPC=nop           
                                                                        
.size strerror, .-strerror

