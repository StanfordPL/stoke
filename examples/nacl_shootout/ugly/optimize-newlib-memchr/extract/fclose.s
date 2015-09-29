  .text
  .globl fclose
  .type fclose, @function

#! file-offset 0x15a2a0
#! rip-offset  0x11a2a0
#! capacity    64 bytes

# Text                      #  Line  RIP       Bytes  Opcode            
.fclose:                    #        0x11a2a0  0      OPC=<label>       
  pushq %rbx                #  1     0x11a2a0  1      OPC=pushq_r64_1   
  movl %edi, %ebx           #  2     0x11a2a1  2      OPC=movl_r32_r32  
  nop                       #  3     0x11a2a3  1      OPC=nop           
  nop                       #  4     0x11a2a4  1      OPC=nop           
  nop                       #  5     0x11a2a5  1      OPC=nop           
  nop                       #  6     0x11a2a6  1      OPC=nop           
  nop                       #  7     0x11a2a7  1      OPC=nop           
  nop                       #  8     0x11a2a8  1      OPC=nop           
  nop                       #  9     0x11a2a9  1      OPC=nop           
  nop                       #  10    0x11a2aa  1      OPC=nop           
  nop                       #  11    0x11a2ab  1      OPC=nop           
  nop                       #  12    0x11a2ac  1      OPC=nop           
  nop                       #  13    0x11a2ad  1      OPC=nop           
  nop                       #  14    0x11a2ae  1      OPC=nop           
  nop                       #  15    0x11a2af  1      OPC=nop           
  nop                       #  16    0x11a2b0  1      OPC=nop           
  nop                       #  17    0x11a2b1  1      OPC=nop           
  nop                       #  18    0x11a2b2  1      OPC=nop           
  nop                       #  19    0x11a2b3  1      OPC=nop           
  nop                       #  20    0x11a2b4  1      OPC=nop           
  nop                       #  21    0x11a2b5  1      OPC=nop           
  nop                       #  22    0x11a2b6  1      OPC=nop           
  nop                       #  23    0x11a2b7  1      OPC=nop           
  nop                       #  24    0x11a2b8  1      OPC=nop           
  nop                       #  25    0x11a2b9  1      OPC=nop           
  nop                       #  26    0x11a2ba  1      OPC=nop           
  callq .__nacl_read_tp     #  27    0x11a2bb  5      OPC=callq_label   
  leaq -0x480(%rax), %rax   #  28    0x11a2c0  7      OPC=leaq_r64_m16  
  movl %ebx, %esi           #  29    0x11a2c7  2      OPC=movl_r32_r32  
  popq %rbx                 #  30    0x11a2c9  1      OPC=popq_r64_1    
  movl %eax, %eax           #  31    0x11a2ca  2      OPC=movl_r32_r32  
  movl (%r15,%rax,1), %edi  #  32    0x11a2cc  4      OPC=movl_r32_m32  
  jmpq ._fclose_r           #  33    0x11a2d0  5      OPC=jmpq_label_1  
  nop                       #  34    0x11a2d5  1      OPC=nop           
  nop                       #  35    0x11a2d6  1      OPC=nop           
  nop                       #  36    0x11a2d7  1      OPC=nop           
  nop                       #  37    0x11a2d8  1      OPC=nop           
  nop                       #  38    0x11a2d9  1      OPC=nop           
  nop                       #  39    0x11a2da  1      OPC=nop           
  nop                       #  40    0x11a2db  1      OPC=nop           
  nop                       #  41    0x11a2dc  1      OPC=nop           
  nop                       #  42    0x11a2dd  1      OPC=nop           
  nop                       #  43    0x11a2de  1      OPC=nop           
  nop                       #  44    0x11a2df  1      OPC=nop           
                                                                        
.size fclose, .-fclose

