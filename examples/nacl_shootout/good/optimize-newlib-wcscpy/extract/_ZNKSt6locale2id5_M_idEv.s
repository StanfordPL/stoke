  .text
  .globl _ZNKSt6locale2id5_M_idEv
  .type _ZNKSt6locale2id5_M_idEv, @function

#! file-offset 0x9d240
#! rip-offset  0x5d240
#! capacity    96 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
._ZNKSt6locale2id5_M_idEv:     #        0x5d240  0      OPC=<label>         
  movl %edi, %edi              #  1     0x5d240  2      OPC=movl_r32_r32    
  movl %edi, %edi              #  2     0x5d242  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax     #  3     0x5d244  4      OPC=movl_r32_m32    
  testl %eax, %eax             #  4     0x5d248  2      OPC=testl_r32_r32   
  jne .L_5d280                 #  5     0x5d24a  2      OPC=jne_label       
  movl 0x100153de(%rip), %eax  #  6     0x5d24c  6      OPC=movl_r32_m32    
  addl $0x1, %eax              #  7     0x5d252  3      OPC=addl_r32_imm8   
  movl %eax, 0x100153d5(%rip)  #  8     0x5d255  6      OPC=movl_m32_r32    
  nop                          #  9     0x5d25b  1      OPC=nop             
  nop                          #  10    0x5d25c  1      OPC=nop             
  nop                          #  11    0x5d25d  1      OPC=nop             
  nop                          #  12    0x5d25e  1      OPC=nop             
  nop                          #  13    0x5d25f  1      OPC=nop             
  movl %edi, %edi              #  14    0x5d260  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rdi,1)     #  15    0x5d262  4      OPC=movl_m32_r32    
  nop                          #  16    0x5d266  1      OPC=nop             
  nop                          #  17    0x5d267  1      OPC=nop             
  nop                          #  18    0x5d268  1      OPC=nop             
  nop                          #  19    0x5d269  1      OPC=nop             
  nop                          #  20    0x5d26a  1      OPC=nop             
  nop                          #  21    0x5d26b  1      OPC=nop             
  nop                          #  22    0x5d26c  1      OPC=nop             
  nop                          #  23    0x5d26d  1      OPC=nop             
  nop                          #  24    0x5d26e  1      OPC=nop             
  nop                          #  25    0x5d26f  1      OPC=nop             
  nop                          #  26    0x5d270  1      OPC=nop             
  nop                          #  27    0x5d271  1      OPC=nop             
  nop                          #  28    0x5d272  1      OPC=nop             
  nop                          #  29    0x5d273  1      OPC=nop             
  nop                          #  30    0x5d274  1      OPC=nop             
  nop                          #  31    0x5d275  1      OPC=nop             
  nop                          #  32    0x5d276  1      OPC=nop             
  nop                          #  33    0x5d277  1      OPC=nop             
  nop                          #  34    0x5d278  1      OPC=nop             
  nop                          #  35    0x5d279  1      OPC=nop             
  nop                          #  36    0x5d27a  1      OPC=nop             
  nop                          #  37    0x5d27b  1      OPC=nop             
  nop                          #  38    0x5d27c  1      OPC=nop             
  nop                          #  39    0x5d27d  1      OPC=nop             
  nop                          #  40    0x5d27e  1      OPC=nop             
  nop                          #  41    0x5d27f  1      OPC=nop             
.L_5d280:                      #        0x5d280  0      OPC=<label>         
  popq %r11                    #  42    0x5d280  2      OPC=popq_r64_1      
  subl $0x1, %eax              #  43    0x5d282  3      OPC=subl_r32_imm8   
  andl $0xffffffe0, %r11d      #  44    0x5d285  7      OPC=andl_r32_imm32  
  nop                          #  45    0x5d28c  1      OPC=nop             
  nop                          #  46    0x5d28d  1      OPC=nop             
  nop                          #  47    0x5d28e  1      OPC=nop             
  nop                          #  48    0x5d28f  1      OPC=nop             
  addq %r15, %r11              #  49    0x5d290  3      OPC=addq_r64_r64    
  jmpq %r11                    #  50    0x5d293  3      OPC=jmpq_r64        
  nop                          #  51    0x5d296  1      OPC=nop             
  nop                          #  52    0x5d297  1      OPC=nop             
  nop                          #  53    0x5d298  1      OPC=nop             
  nop                          #  54    0x5d299  1      OPC=nop             
  nop                          #  55    0x5d29a  1      OPC=nop             
  nop                          #  56    0x5d29b  1      OPC=nop             
  nop                          #  57    0x5d29c  1      OPC=nop             
  nop                          #  58    0x5d29d  1      OPC=nop             
  nop                          #  59    0x5d29e  1      OPC=nop             
  nop                          #  60    0x5d29f  1      OPC=nop             
  nop                          #  61    0x5d2a0  1      OPC=nop             
  nop                          #  62    0x5d2a1  1      OPC=nop             
  nop                          #  63    0x5d2a2  1      OPC=nop             
  nop                          #  64    0x5d2a3  1      OPC=nop             
  nop                          #  65    0x5d2a4  1      OPC=nop             
  nop                          #  66    0x5d2a5  1      OPC=nop             
  nop                          #  67    0x5d2a6  1      OPC=nop             
                                                                            
.size _ZNKSt6locale2id5_M_idEv, .-_ZNKSt6locale2id5_M_idEv

