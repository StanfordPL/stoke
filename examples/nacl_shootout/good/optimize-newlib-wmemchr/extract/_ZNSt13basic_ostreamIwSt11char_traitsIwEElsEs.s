  .text
  .globl _ZNSt13basic_ostreamIwSt11char_traitsIwEElsEs
  .type _ZNSt13basic_ostreamIwSt11char_traitsIwEElsEs, @function

#! file-offset 0xe67c0
#! rip-offset  0xa67c0
#! capacity    96 bytes

# Text                                                                 #  Line  RIP      Bytes  Opcode              
._ZNSt13basic_ostreamIwSt11char_traitsIwEElsEs:                        #        0xa67c0  0      OPC=<label>         
  movl %edi, %edi                                                      #  1     0xa67c0  2      OPC=movl_r32_r32    
  movl %edi, %edi                                                      #  2     0xa67c2  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                             #  3     0xa67c4  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                                      #  4     0xa67c8  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                                      #  5     0xa67cb  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax                                             #  6     0xa67cd  4      OPC=movl_r32_m32    
  addl %edi, %eax                                                      #  7     0xa67d1  2      OPC=addl_r32_r32    
  movl %eax, %eax                                                      #  8     0xa67d3  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rax,1), %eax                                          #  9     0xa67d5  5      OPC=movl_r32_m32    
  andl $0x4a, %eax                                                     #  10    0xa67da  3      OPC=andl_r32_imm8   
  cmpl $0x8, %eax                                                      #  11    0xa67dd  3      OPC=cmpl_r32_imm8   
  je .L_a6800                                                          #  12    0xa67e0  2      OPC=je_label        
  cmpl $0x40, %eax                                                     #  13    0xa67e2  3      OPC=cmpl_r32_imm8   
  je .L_a6800                                                          #  14    0xa67e5  2      OPC=je_label        
  movswl %si, %esi                                                     #  15    0xa67e7  3      OPC=movswl_r32_r16  
  jmpq ._ZNSt13basic_ostreamIwSt11char_traitsIwEE9_M_insertIlEERS2_T_  #  16    0xa67ea  5      OPC=jmpq_label_1    
  xchgw %ax, %ax                                                       #  17    0xa67ef  2      OPC=xchgw_ax_r16    
  nop                                                                  #  18    0xa67f1  1      OPC=nop             
  nop                                                                  #  19    0xa67f2  1      OPC=nop             
  nop                                                                  #  20    0xa67f3  1      OPC=nop             
  nop                                                                  #  21    0xa67f4  1      OPC=nop             
  nop                                                                  #  22    0xa67f5  1      OPC=nop             
  nop                                                                  #  23    0xa67f6  1      OPC=nop             
  nop                                                                  #  24    0xa67f7  1      OPC=nop             
  nop                                                                  #  25    0xa67f8  1      OPC=nop             
  nop                                                                  #  26    0xa67f9  1      OPC=nop             
  nop                                                                  #  27    0xa67fa  1      OPC=nop             
  nop                                                                  #  28    0xa67fb  1      OPC=nop             
  nop                                                                  #  29    0xa67fc  1      OPC=nop             
  nop                                                                  #  30    0xa67fd  1      OPC=nop             
  nop                                                                  #  31    0xa67fe  1      OPC=nop             
  nop                                                                  #  32    0xa67ff  1      OPC=nop             
.L_a6800:                                                              #        0xa6800  0      OPC=<label>         
  movzwl %si, %esi                                                     #  33    0xa6800  3      OPC=movzwl_r32_r16  
  jmpq ._ZNSt13basic_ostreamIwSt11char_traitsIwEE9_M_insertIlEERS2_T_  #  34    0xa6803  5      OPC=jmpq_label_1    
  nop                                                                  #  35    0xa6808  1      OPC=nop             
  nop                                                                  #  36    0xa6809  1      OPC=nop             
  nop                                                                  #  37    0xa680a  1      OPC=nop             
  nop                                                                  #  38    0xa680b  1      OPC=nop             
  nop                                                                  #  39    0xa680c  1      OPC=nop             
  nop                                                                  #  40    0xa680d  1      OPC=nop             
  nop                                                                  #  41    0xa680e  1      OPC=nop             
  nop                                                                  #  42    0xa680f  1      OPC=nop             
  nop                                                                  #  43    0xa6810  1      OPC=nop             
  nop                                                                  #  44    0xa6811  1      OPC=nop             
  nop                                                                  #  45    0xa6812  1      OPC=nop             
  nop                                                                  #  46    0xa6813  1      OPC=nop             
  nop                                                                  #  47    0xa6814  1      OPC=nop             
  nop                                                                  #  48    0xa6815  1      OPC=nop             
  nop                                                                  #  49    0xa6816  1      OPC=nop             
  nop                                                                  #  50    0xa6817  1      OPC=nop             
  nop                                                                  #  51    0xa6818  1      OPC=nop             
  nop                                                                  #  52    0xa6819  1      OPC=nop             
  nop                                                                  #  53    0xa681a  1      OPC=nop             
  nop                                                                  #  54    0xa681b  1      OPC=nop             
  nop                                                                  #  55    0xa681c  1      OPC=nop             
  nop                                                                  #  56    0xa681d  1      OPC=nop             
  nop                                                                  #  57    0xa681e  1      OPC=nop             
  nop                                                                  #  58    0xa681f  1      OPC=nop             
                                                                                                                    
.size _ZNSt13basic_ostreamIwSt11char_traitsIwEElsEs, .-_ZNSt13basic_ostreamIwSt11char_traitsIwEElsEs

