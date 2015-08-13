  .text
  .globl wctype
  .type wctype, @function

#! file-offset 0x183dc0
#! rip-offset  0x143dc0
#! capacity    64 bytes

# Text                      #  Line  RIP       Bytes  Opcode            
.wctype:                    #        0x143dc0  0      OPC=<label>       
  pushq %rbx                #  1     0x143dc0  1      OPC=pushq_r64_1   
  movl %edi, %ebx           #  2     0x143dc1  2      OPC=movl_r32_r32  
  nop                       #  3     0x143dc3  1      OPC=nop           
  nop                       #  4     0x143dc4  1      OPC=nop           
  nop                       #  5     0x143dc5  1      OPC=nop           
  nop                       #  6     0x143dc6  1      OPC=nop           
  nop                       #  7     0x143dc7  1      OPC=nop           
  nop                       #  8     0x143dc8  1      OPC=nop           
  nop                       #  9     0x143dc9  1      OPC=nop           
  nop                       #  10    0x143dca  1      OPC=nop           
  nop                       #  11    0x143dcb  1      OPC=nop           
  nop                       #  12    0x143dcc  1      OPC=nop           
  nop                       #  13    0x143dcd  1      OPC=nop           
  nop                       #  14    0x143dce  1      OPC=nop           
  nop                       #  15    0x143dcf  1      OPC=nop           
  nop                       #  16    0x143dd0  1      OPC=nop           
  nop                       #  17    0x143dd1  1      OPC=nop           
  nop                       #  18    0x143dd2  1      OPC=nop           
  nop                       #  19    0x143dd3  1      OPC=nop           
  nop                       #  20    0x143dd4  1      OPC=nop           
  nop                       #  21    0x143dd5  1      OPC=nop           
  nop                       #  22    0x143dd6  1      OPC=nop           
  nop                       #  23    0x143dd7  1      OPC=nop           
  nop                       #  24    0x143dd8  1      OPC=nop           
  nop                       #  25    0x143dd9  1      OPC=nop           
  nop                       #  26    0x143dda  1      OPC=nop           
  callq .__nacl_read_tp     #  27    0x143ddb  5      OPC=callq_label   
  leaq -0x480(%rax), %rax   #  28    0x143de0  7      OPC=leaq_r64_m16  
  movl %ebx, %esi           #  29    0x143de7  2      OPC=movl_r32_r32  
  popq %rbx                 #  30    0x143de9  1      OPC=popq_r64_1    
  movl %eax, %eax           #  31    0x143dea  2      OPC=movl_r32_r32  
  movl (%r15,%rax,1), %edi  #  32    0x143dec  4      OPC=movl_r32_m32  
  jmpq ._wctype_r           #  33    0x143df0  5      OPC=jmpq_label_1  
  nop                       #  34    0x143df5  1      OPC=nop           
  nop                       #  35    0x143df6  1      OPC=nop           
  nop                       #  36    0x143df7  1      OPC=nop           
  nop                       #  37    0x143df8  1      OPC=nop           
  nop                       #  38    0x143df9  1      OPC=nop           
  nop                       #  39    0x143dfa  1      OPC=nop           
  nop                       #  40    0x143dfb  1      OPC=nop           
  nop                       #  41    0x143dfc  1      OPC=nop           
  nop                       #  42    0x143dfd  1      OPC=nop           
  nop                       #  43    0x143dfe  1      OPC=nop           
  nop                       #  44    0x143dff  1      OPC=nop           
                                                                        
.size wctype, .-wctype

