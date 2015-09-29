  .text
  .globl _ZNKSs5emptyEv
  .type _ZNKSs5emptyEv, @function

#! file-offset 0xeaf20
#! rip-offset  0xaaf20
#! capacity    64 bytes

# Text                      #  Line  RIP      Bytes  Opcode              
._ZNKSs5emptyEv:            #        0xaaf20  0      OPC=<label>         
  movl %edi, %edi           #  1     0xaaf20  2      OPC=movl_r32_r32    
  movl %edi, %edi           #  2     0xaaf22  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax  #  3     0xaaf24  4      OPC=movl_r32_m32    
  popq %r11                 #  4     0xaaf28  2      OPC=popq_r64_1      
  subl $0xc, %eax           #  5     0xaaf2a  3      OPC=subl_r32_imm8   
  movl %eax, %eax           #  6     0xaaf2d  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax  #  7     0xaaf2f  4      OPC=movl_r32_m32    
  testl %eax, %eax          #  8     0xaaf33  2      OPC=testl_r32_r32   
  sete %al                  #  9     0xaaf35  3      OPC=sete_r8         
  nop                       #  10    0xaaf38  1      OPC=nop             
  nop                       #  11    0xaaf39  1      OPC=nop             
  nop                       #  12    0xaaf3a  1      OPC=nop             
  nop                       #  13    0xaaf3b  1      OPC=nop             
  nop                       #  14    0xaaf3c  1      OPC=nop             
  nop                       #  15    0xaaf3d  1      OPC=nop             
  nop                       #  16    0xaaf3e  1      OPC=nop             
  nop                       #  17    0xaaf3f  1      OPC=nop             
  andl $0xffffffe0, %r11d   #  18    0xaaf40  7      OPC=andl_r32_imm32  
  nop                       #  19    0xaaf47  1      OPC=nop             
  nop                       #  20    0xaaf48  1      OPC=nop             
  nop                       #  21    0xaaf49  1      OPC=nop             
  nop                       #  22    0xaaf4a  1      OPC=nop             
  addq %r15, %r11           #  23    0xaaf4b  3      OPC=addq_r64_r64    
  jmpq %r11                 #  24    0xaaf4e  3      OPC=jmpq_r64        
  nop                       #  25    0xaaf51  1      OPC=nop             
  nop                       #  26    0xaaf52  1      OPC=nop             
  nop                       #  27    0xaaf53  1      OPC=nop             
  nop                       #  28    0xaaf54  1      OPC=nop             
  nop                       #  29    0xaaf55  1      OPC=nop             
  nop                       #  30    0xaaf56  1      OPC=nop             
  nop                       #  31    0xaaf57  1      OPC=nop             
  nop                       #  32    0xaaf58  1      OPC=nop             
  nop                       #  33    0xaaf59  1      OPC=nop             
  nop                       #  34    0xaaf5a  1      OPC=nop             
  nop                       #  35    0xaaf5b  1      OPC=nop             
  nop                       #  36    0xaaf5c  1      OPC=nop             
  nop                       #  37    0xaaf5d  1      OPC=nop             
  nop                       #  38    0xaaf5e  1      OPC=nop             
  nop                       #  39    0xaaf5f  1      OPC=nop             
  nop                       #  40    0xaaf60  1      OPC=nop             
  nop                       #  41    0xaaf61  1      OPC=nop             
  nop                       #  42    0xaaf62  1      OPC=nop             
  nop                       #  43    0xaaf63  1      OPC=nop             
  nop                       #  44    0xaaf64  1      OPC=nop             
  nop                       #  45    0xaaf65  1      OPC=nop             
  nop                       #  46    0xaaf66  1      OPC=nop             
                                                                         
.size _ZNKSs5emptyEv, .-_ZNKSs5emptyEv

