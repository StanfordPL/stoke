  .text
  .globl _ZNKSt6locale2id5_M_idEv
  .type _ZNKSt6locale2id5_M_idEv, @function

#! file-offset 0x9d540
#! rip-offset  0x5d540
#! capacity    96 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
._ZNKSt6locale2id5_M_idEv:     #        0x5d540  0      OPC=<label>         
  movl %edi, %edi              #  1     0x5d540  2      OPC=movl_r32_r32    
  movl %edi, %edi              #  2     0x5d542  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax     #  3     0x5d544  4      OPC=movl_r32_m32    
  testl %eax, %eax             #  4     0x5d548  2      OPC=testl_r32_r32   
  jne .L_5d580                 #  5     0x5d54a  2      OPC=jne_label       
  movl 0x100150de(%rip), %eax  #  6     0x5d54c  6      OPC=movl_r32_m32    
  addl $0x1, %eax              #  7     0x5d552  3      OPC=addl_r32_imm8   
  movl %eax, 0x100150d5(%rip)  #  8     0x5d555  6      OPC=movl_m32_r32    
  nop                          #  9     0x5d55b  1      OPC=nop             
  nop                          #  10    0x5d55c  1      OPC=nop             
  nop                          #  11    0x5d55d  1      OPC=nop             
  nop                          #  12    0x5d55e  1      OPC=nop             
  nop                          #  13    0x5d55f  1      OPC=nop             
  movl %edi, %edi              #  14    0x5d560  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rdi,1)     #  15    0x5d562  4      OPC=movl_m32_r32    
  nop                          #  16    0x5d566  1      OPC=nop             
  nop                          #  17    0x5d567  1      OPC=nop             
  nop                          #  18    0x5d568  1      OPC=nop             
  nop                          #  19    0x5d569  1      OPC=nop             
  nop                          #  20    0x5d56a  1      OPC=nop             
  nop                          #  21    0x5d56b  1      OPC=nop             
  nop                          #  22    0x5d56c  1      OPC=nop             
  nop                          #  23    0x5d56d  1      OPC=nop             
  nop                          #  24    0x5d56e  1      OPC=nop             
  nop                          #  25    0x5d56f  1      OPC=nop             
  nop                          #  26    0x5d570  1      OPC=nop             
  nop                          #  27    0x5d571  1      OPC=nop             
  nop                          #  28    0x5d572  1      OPC=nop             
  nop                          #  29    0x5d573  1      OPC=nop             
  nop                          #  30    0x5d574  1      OPC=nop             
  nop                          #  31    0x5d575  1      OPC=nop             
  nop                          #  32    0x5d576  1      OPC=nop             
  nop                          #  33    0x5d577  1      OPC=nop             
  nop                          #  34    0x5d578  1      OPC=nop             
  nop                          #  35    0x5d579  1      OPC=nop             
  nop                          #  36    0x5d57a  1      OPC=nop             
  nop                          #  37    0x5d57b  1      OPC=nop             
  nop                          #  38    0x5d57c  1      OPC=nop             
  nop                          #  39    0x5d57d  1      OPC=nop             
  nop                          #  40    0x5d57e  1      OPC=nop             
  nop                          #  41    0x5d57f  1      OPC=nop             
.L_5d580:                      #        0x5d580  0      OPC=<label>         
  popq %r11                    #  42    0x5d580  2      OPC=popq_r64_1      
  subl $0x1, %eax              #  43    0x5d582  3      OPC=subl_r32_imm8   
  andl $0xffffffe0, %r11d      #  44    0x5d585  7      OPC=andl_r32_imm32  
  nop                          #  45    0x5d58c  1      OPC=nop             
  nop                          #  46    0x5d58d  1      OPC=nop             
  nop                          #  47    0x5d58e  1      OPC=nop             
  nop                          #  48    0x5d58f  1      OPC=nop             
  addq %r15, %r11              #  49    0x5d590  3      OPC=addq_r64_r64    
  jmpq %r11                    #  50    0x5d593  3      OPC=jmpq_r64        
  nop                          #  51    0x5d596  1      OPC=nop             
  nop                          #  52    0x5d597  1      OPC=nop             
  nop                          #  53    0x5d598  1      OPC=nop             
  nop                          #  54    0x5d599  1      OPC=nop             
  nop                          #  55    0x5d59a  1      OPC=nop             
  nop                          #  56    0x5d59b  1      OPC=nop             
  nop                          #  57    0x5d59c  1      OPC=nop             
  nop                          #  58    0x5d59d  1      OPC=nop             
  nop                          #  59    0x5d59e  1      OPC=nop             
  nop                          #  60    0x5d59f  1      OPC=nop             
  nop                          #  61    0x5d5a0  1      OPC=nop             
  nop                          #  62    0x5d5a1  1      OPC=nop             
  nop                          #  63    0x5d5a2  1      OPC=nop             
  nop                          #  64    0x5d5a3  1      OPC=nop             
  nop                          #  65    0x5d5a4  1      OPC=nop             
  nop                          #  66    0x5d5a5  1      OPC=nop             
  nop                          #  67    0x5d5a6  1      OPC=nop             
                                                                            
.size _ZNKSt6locale2id5_M_idEv, .-_ZNKSt6locale2id5_M_idEv

