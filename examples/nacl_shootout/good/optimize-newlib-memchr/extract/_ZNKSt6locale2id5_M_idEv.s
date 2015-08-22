  .text
  .globl _ZNKSt6locale2id5_M_idEv
  .type _ZNKSt6locale2id5_M_idEv, @function

#! file-offset 0x9dc60
#! rip-offset  0x5dc60
#! capacity    96 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
._ZNKSt6locale2id5_M_idEv:     #        0x5dc60  0      OPC=<label>         
  movl %edi, %edi              #  1     0x5dc60  2      OPC=movl_r32_r32    
  movl %edi, %edi              #  2     0x5dc62  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax     #  3     0x5dc64  4      OPC=movl_r32_m32    
  testl %eax, %eax             #  4     0x5dc68  2      OPC=testl_r32_r32   
  jne .L_5dca0                 #  5     0x5dc6a  2      OPC=jne_label       
  movl 0x100149be(%rip), %eax  #  6     0x5dc6c  6      OPC=movl_r32_m32    
  addl $0x1, %eax              #  7     0x5dc72  3      OPC=addl_r32_imm8   
  movl %eax, 0x100149b5(%rip)  #  8     0x5dc75  6      OPC=movl_m32_r32    
  nop                          #  9     0x5dc7b  1      OPC=nop             
  nop                          #  10    0x5dc7c  1      OPC=nop             
  nop                          #  11    0x5dc7d  1      OPC=nop             
  nop                          #  12    0x5dc7e  1      OPC=nop             
  nop                          #  13    0x5dc7f  1      OPC=nop             
  movl %edi, %edi              #  14    0x5dc80  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rdi,1)     #  15    0x5dc82  4      OPC=movl_m32_r32    
  nop                          #  16    0x5dc86  1      OPC=nop             
  nop                          #  17    0x5dc87  1      OPC=nop             
  nop                          #  18    0x5dc88  1      OPC=nop             
  nop                          #  19    0x5dc89  1      OPC=nop             
  nop                          #  20    0x5dc8a  1      OPC=nop             
  nop                          #  21    0x5dc8b  1      OPC=nop             
  nop                          #  22    0x5dc8c  1      OPC=nop             
  nop                          #  23    0x5dc8d  1      OPC=nop             
  nop                          #  24    0x5dc8e  1      OPC=nop             
  nop                          #  25    0x5dc8f  1      OPC=nop             
  nop                          #  26    0x5dc90  1      OPC=nop             
  nop                          #  27    0x5dc91  1      OPC=nop             
  nop                          #  28    0x5dc92  1      OPC=nop             
  nop                          #  29    0x5dc93  1      OPC=nop             
  nop                          #  30    0x5dc94  1      OPC=nop             
  nop                          #  31    0x5dc95  1      OPC=nop             
  nop                          #  32    0x5dc96  1      OPC=nop             
  nop                          #  33    0x5dc97  1      OPC=nop             
  nop                          #  34    0x5dc98  1      OPC=nop             
  nop                          #  35    0x5dc99  1      OPC=nop             
  nop                          #  36    0x5dc9a  1      OPC=nop             
  nop                          #  37    0x5dc9b  1      OPC=nop             
  nop                          #  38    0x5dc9c  1      OPC=nop             
  nop                          #  39    0x5dc9d  1      OPC=nop             
  nop                          #  40    0x5dc9e  1      OPC=nop             
  nop                          #  41    0x5dc9f  1      OPC=nop             
.L_5dca0:                      #        0x5dca0  0      OPC=<label>         
  popq %r11                    #  42    0x5dca0  2      OPC=popq_r64_1      
  subl $0x1, %eax              #  43    0x5dca2  3      OPC=subl_r32_imm8   
  andl $0xffffffe0, %r11d      #  44    0x5dca5  7      OPC=andl_r32_imm32  
  nop                          #  45    0x5dcac  1      OPC=nop             
  nop                          #  46    0x5dcad  1      OPC=nop             
  nop                          #  47    0x5dcae  1      OPC=nop             
  nop                          #  48    0x5dcaf  1      OPC=nop             
  addq %r15, %r11              #  49    0x5dcb0  3      OPC=addq_r64_r64    
  jmpq %r11                    #  50    0x5dcb3  3      OPC=jmpq_r64        
  nop                          #  51    0x5dcb6  1      OPC=nop             
  nop                          #  52    0x5dcb7  1      OPC=nop             
  nop                          #  53    0x5dcb8  1      OPC=nop             
  nop                          #  54    0x5dcb9  1      OPC=nop             
  nop                          #  55    0x5dcba  1      OPC=nop             
  nop                          #  56    0x5dcbb  1      OPC=nop             
  nop                          #  57    0x5dcbc  1      OPC=nop             
  nop                          #  58    0x5dcbd  1      OPC=nop             
  nop                          #  59    0x5dcbe  1      OPC=nop             
  nop                          #  60    0x5dcbf  1      OPC=nop             
  nop                          #  61    0x5dcc0  1      OPC=nop             
  nop                          #  62    0x5dcc1  1      OPC=nop             
  nop                          #  63    0x5dcc2  1      OPC=nop             
  nop                          #  64    0x5dcc3  1      OPC=nop             
  nop                          #  65    0x5dcc4  1      OPC=nop             
  nop                          #  66    0x5dcc5  1      OPC=nop             
  nop                          #  67    0x5dcc6  1      OPC=nop             
                                                                            
.size _ZNKSt6locale2id5_M_idEv, .-_ZNKSt6locale2id5_M_idEv

