  .text
  .globl simple_vec_constprop_2
  .type simple_vec_constprop_2, @function

#! file-offset 0x60
#! rip-offset  0x20
#! capacity    80 bytes

# Text                            #  Line  RIP   Bytes  Opcode               
.simple_vec_constprop_2:          #        0x20  0      OPC=<label>          
  cmpq $0xffffffdf, %rdi          #  1     0x20  4      OPC=cmpq_r64_imm8    
  movq %rdi, %rax                 #  2     0x24  3      OPC=movq_r64_r64     
  jbe .L_58                       #  3     0x27  2      OPC=jbe_label        
  cmpq $0xffffffe0, %rdi          #  4     0x29  4      OPC=cmpq_r64_imm8    
  je .L_5f                        #  5     0x2d  2      OPC=je_label         
  leaq -0x8(%rdi), %rcx           #  6     0x2f  4      OPC=leaq_r64_m16     
  cmpq $0xffffffdf, %rcx          #  7     0x33  4      OPC=cmpq_r64_imm8    
  jbe .L_5f                       #  8     0x37  2      OPC=jbe_label        
  movq $0xffffffffffffffe0, %rdx  #  9     0x39  7      OPC=movq_r64_imm32   
.L_40:                            #        0x40  0      OPC=<label>          
  addq $0x8, %rdx                 #  10    0x40  4      OPC=addq_r64_imm8    
  cmpq %rcx, %rdx                 #  11    0x44  3      OPC=cmpq_r64_r64     
  jbe .L_40                       #  12    0x47  2      OPC=jbe_label        
  cmpq %rdx, %rax                 #  13    0x49  3      OPC=cmpq_r64_r64     
  cmovbeq %rdx, %rax              #  14    0x4c  4      OPC=cmovbeq_r64_r64  
  retq                            #  15    0x50  1      OPC=retq             
  nop                             #  16    0x51  1      OPC=nop              
  nop                             #  17    0x52  1      OPC=nop              
  nop                             #  18    0x53  1      OPC=nop              
  nop                             #  19    0x54  1      OPC=nop              
  nop                             #  20    0x55  1      OPC=nop              
  nop                             #  21    0x56  1      OPC=nop              
  nop                             #  22    0x57  1      OPC=nop              
.L_58:                            #        0x58  0      OPC=<label>          
  movq $0xffffffffffffffdf, %rax  #  23    0x58  7      OPC=movq_r64_imm32   
.L_5f:                            #        0x5f  0      OPC=<label>          
  nop                             #  24    0x5f  1      OPC=nop              
  retq                            #  25    0x60  1      OPC=retq             
  nop                             #  26    0x61  1      OPC=nop              
  nop                             #  27    0x62  1      OPC=nop              
  nop                             #  28    0x63  1      OPC=nop              
  nop                             #  29    0x64  1      OPC=nop              
  nop                             #  30    0x65  1      OPC=nop              
  nop                             #  31    0x66  1      OPC=nop              
  nop                             #  32    0x67  1      OPC=nop              
  nop                             #  33    0x68  1      OPC=nop              
  nop                             #  34    0x69  1      OPC=nop              
  nop                             #  35    0x6a  1      OPC=nop              
  nop                             #  36    0x6b  1      OPC=nop              
  nop                             #  37    0x6c  1      OPC=nop              
  nop                             #  38    0x6d  1      OPC=nop              
  nop                             #  39    0x6e  1      OPC=nop              
  nop                             #  40    0x6f  1      OPC=nop              
                                                                             
.size simple_vec_constprop_2, .-simple_vec_constprop_2

