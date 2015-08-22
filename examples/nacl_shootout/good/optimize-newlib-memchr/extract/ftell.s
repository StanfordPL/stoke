  .text
  .globl ftell
  .type ftell, @function

#! file-offset 0x15d3a0
#! rip-offset  0x11d3a0
#! capacity    64 bytes

# Text                      #  Line  RIP       Bytes  Opcode            
.ftell:                     #        0x11d3a0  0      OPC=<label>       
  pushq %rbx                #  1     0x11d3a0  1      OPC=pushq_r64_1   
  movl %edi, %ebx           #  2     0x11d3a1  2      OPC=movl_r32_r32  
  nop                       #  3     0x11d3a3  1      OPC=nop           
  nop                       #  4     0x11d3a4  1      OPC=nop           
  nop                       #  5     0x11d3a5  1      OPC=nop           
  nop                       #  6     0x11d3a6  1      OPC=nop           
  nop                       #  7     0x11d3a7  1      OPC=nop           
  nop                       #  8     0x11d3a8  1      OPC=nop           
  nop                       #  9     0x11d3a9  1      OPC=nop           
  nop                       #  10    0x11d3aa  1      OPC=nop           
  nop                       #  11    0x11d3ab  1      OPC=nop           
  nop                       #  12    0x11d3ac  1      OPC=nop           
  nop                       #  13    0x11d3ad  1      OPC=nop           
  nop                       #  14    0x11d3ae  1      OPC=nop           
  nop                       #  15    0x11d3af  1      OPC=nop           
  nop                       #  16    0x11d3b0  1      OPC=nop           
  nop                       #  17    0x11d3b1  1      OPC=nop           
  nop                       #  18    0x11d3b2  1      OPC=nop           
  nop                       #  19    0x11d3b3  1      OPC=nop           
  nop                       #  20    0x11d3b4  1      OPC=nop           
  nop                       #  21    0x11d3b5  1      OPC=nop           
  nop                       #  22    0x11d3b6  1      OPC=nop           
  nop                       #  23    0x11d3b7  1      OPC=nop           
  nop                       #  24    0x11d3b8  1      OPC=nop           
  nop                       #  25    0x11d3b9  1      OPC=nop           
  nop                       #  26    0x11d3ba  1      OPC=nop           
  callq .__nacl_read_tp     #  27    0x11d3bb  5      OPC=callq_label   
  leaq -0x480(%rax), %rax   #  28    0x11d3c0  7      OPC=leaq_r64_m16  
  movl %ebx, %esi           #  29    0x11d3c7  2      OPC=movl_r32_r32  
  popq %rbx                 #  30    0x11d3c9  1      OPC=popq_r64_1    
  movl %eax, %eax           #  31    0x11d3ca  2      OPC=movl_r32_r32  
  movl (%r15,%rax,1), %edi  #  32    0x11d3cc  4      OPC=movl_r32_m32  
  jmpq ._ftell_r            #  33    0x11d3d0  5      OPC=jmpq_label_1  
  nop                       #  34    0x11d3d5  1      OPC=nop           
  nop                       #  35    0x11d3d6  1      OPC=nop           
  nop                       #  36    0x11d3d7  1      OPC=nop           
  nop                       #  37    0x11d3d8  1      OPC=nop           
  nop                       #  38    0x11d3d9  1      OPC=nop           
  nop                       #  39    0x11d3da  1      OPC=nop           
  nop                       #  40    0x11d3db  1      OPC=nop           
  nop                       #  41    0x11d3dc  1      OPC=nop           
  nop                       #  42    0x11d3dd  1      OPC=nop           
  nop                       #  43    0x11d3de  1      OPC=nop           
  nop                       #  44    0x11d3df  1      OPC=nop           
                                                                        
.size ftell, .-ftell

