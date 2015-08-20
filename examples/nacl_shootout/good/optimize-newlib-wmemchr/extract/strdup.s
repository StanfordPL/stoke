  .text
  .globl strdup
  .type strdup, @function

#! file-offset 0x166c60
#! rip-offset  0x126c60
#! capacity    64 bytes

# Text                      #  Line  RIP       Bytes  Opcode            
.strdup:                    #        0x126c60  0      OPC=<label>       
  pushq %rbx                #  1     0x126c60  1      OPC=pushq_r64_1   
  movl %edi, %ebx           #  2     0x126c61  2      OPC=movl_r32_r32  
  nop                       #  3     0x126c63  1      OPC=nop           
  nop                       #  4     0x126c64  1      OPC=nop           
  nop                       #  5     0x126c65  1      OPC=nop           
  nop                       #  6     0x126c66  1      OPC=nop           
  nop                       #  7     0x126c67  1      OPC=nop           
  nop                       #  8     0x126c68  1      OPC=nop           
  nop                       #  9     0x126c69  1      OPC=nop           
  nop                       #  10    0x126c6a  1      OPC=nop           
  nop                       #  11    0x126c6b  1      OPC=nop           
  nop                       #  12    0x126c6c  1      OPC=nop           
  nop                       #  13    0x126c6d  1      OPC=nop           
  nop                       #  14    0x126c6e  1      OPC=nop           
  nop                       #  15    0x126c6f  1      OPC=nop           
  nop                       #  16    0x126c70  1      OPC=nop           
  nop                       #  17    0x126c71  1      OPC=nop           
  nop                       #  18    0x126c72  1      OPC=nop           
  nop                       #  19    0x126c73  1      OPC=nop           
  nop                       #  20    0x126c74  1      OPC=nop           
  nop                       #  21    0x126c75  1      OPC=nop           
  nop                       #  22    0x126c76  1      OPC=nop           
  nop                       #  23    0x126c77  1      OPC=nop           
  nop                       #  24    0x126c78  1      OPC=nop           
  nop                       #  25    0x126c79  1      OPC=nop           
  nop                       #  26    0x126c7a  1      OPC=nop           
  callq .__nacl_read_tp     #  27    0x126c7b  5      OPC=callq_label   
  leaq -0x480(%rax), %rax   #  28    0x126c80  7      OPC=leaq_r64_m16  
  movl %ebx, %esi           #  29    0x126c87  2      OPC=movl_r32_r32  
  popq %rbx                 #  30    0x126c89  1      OPC=popq_r64_1    
  movl %eax, %eax           #  31    0x126c8a  2      OPC=movl_r32_r32  
  movl (%r15,%rax,1), %edi  #  32    0x126c8c  4      OPC=movl_r32_m32  
  jmpq ._strdup_r           #  33    0x126c90  5      OPC=jmpq_label_1  
  nop                       #  34    0x126c95  1      OPC=nop           
  nop                       #  35    0x126c96  1      OPC=nop           
  nop                       #  36    0x126c97  1      OPC=nop           
  nop                       #  37    0x126c98  1      OPC=nop           
  nop                       #  38    0x126c99  1      OPC=nop           
  nop                       #  39    0x126c9a  1      OPC=nop           
  nop                       #  40    0x126c9b  1      OPC=nop           
  nop                       #  41    0x126c9c  1      OPC=nop           
  nop                       #  42    0x126c9d  1      OPC=nop           
  nop                       #  43    0x126c9e  1      OPC=nop           
  nop                       #  44    0x126c9f  1      OPC=nop           
                                                                        
.size strdup, .-strdup

