  .text
  .globl _ZNKSs5emptyEv
  .type _ZNKSs5emptyEv, @function

#! file-offset 0xea500
#! rip-offset  0xaa500
#! capacity    64 bytes

# Text                      #  Line  RIP      Bytes  Opcode              
._ZNKSs5emptyEv:            #        0xaa500  0      OPC=<label>         
  movl %edi, %edi           #  1     0xaa500  2      OPC=movl_r32_r32    
  movl %edi, %edi           #  2     0xaa502  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax  #  3     0xaa504  4      OPC=movl_r32_m32    
  popq %r11                 #  4     0xaa508  2      OPC=popq_r64_1      
  subl $0xc, %eax           #  5     0xaa50a  3      OPC=subl_r32_imm8   
  movl %eax, %eax           #  6     0xaa50d  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax  #  7     0xaa50f  4      OPC=movl_r32_m32    
  testl %eax, %eax          #  8     0xaa513  2      OPC=testl_r32_r32   
  sete %al                  #  9     0xaa515  3      OPC=sete_r8         
  nop                       #  10    0xaa518  1      OPC=nop             
  nop                       #  11    0xaa519  1      OPC=nop             
  nop                       #  12    0xaa51a  1      OPC=nop             
  nop                       #  13    0xaa51b  1      OPC=nop             
  nop                       #  14    0xaa51c  1      OPC=nop             
  nop                       #  15    0xaa51d  1      OPC=nop             
  nop                       #  16    0xaa51e  1      OPC=nop             
  nop                       #  17    0xaa51f  1      OPC=nop             
  andl $0xffffffe0, %r11d   #  18    0xaa520  7      OPC=andl_r32_imm32  
  nop                       #  19    0xaa527  1      OPC=nop             
  nop                       #  20    0xaa528  1      OPC=nop             
  nop                       #  21    0xaa529  1      OPC=nop             
  nop                       #  22    0xaa52a  1      OPC=nop             
  addq %r15, %r11           #  23    0xaa52b  3      OPC=addq_r64_r64    
  jmpq %r11                 #  24    0xaa52e  3      OPC=jmpq_r64        
  nop                       #  25    0xaa531  1      OPC=nop             
  nop                       #  26    0xaa532  1      OPC=nop             
  nop                       #  27    0xaa533  1      OPC=nop             
  nop                       #  28    0xaa534  1      OPC=nop             
  nop                       #  29    0xaa535  1      OPC=nop             
  nop                       #  30    0xaa536  1      OPC=nop             
  nop                       #  31    0xaa537  1      OPC=nop             
  nop                       #  32    0xaa538  1      OPC=nop             
  nop                       #  33    0xaa539  1      OPC=nop             
  nop                       #  34    0xaa53a  1      OPC=nop             
  nop                       #  35    0xaa53b  1      OPC=nop             
  nop                       #  36    0xaa53c  1      OPC=nop             
  nop                       #  37    0xaa53d  1      OPC=nop             
  nop                       #  38    0xaa53e  1      OPC=nop             
  nop                       #  39    0xaa53f  1      OPC=nop             
  nop                       #  40    0xaa540  1      OPC=nop             
  nop                       #  41    0xaa541  1      OPC=nop             
  nop                       #  42    0xaa542  1      OPC=nop             
  nop                       #  43    0xaa543  1      OPC=nop             
  nop                       #  44    0xaa544  1      OPC=nop             
  nop                       #  45    0xaa545  1      OPC=nop             
  nop                       #  46    0xaa546  1      OPC=nop             
                                                                         
.size _ZNKSs5emptyEv, .-_ZNKSs5emptyEv

