  .text
  .globl _ZNSt13basic_ostreamIwSt11char_traitsIwEElsEs
  .type _ZNSt13basic_ostreamIwSt11char_traitsIwEElsEs, @function

#! file-offset 0xe64c0
#! rip-offset  0xa64c0
#! capacity    96 bytes

# Text                                                                 #  Line  RIP      Bytes  Opcode              
._ZNSt13basic_ostreamIwSt11char_traitsIwEElsEs:                        #        0xa64c0  0      OPC=<label>         
  movl %edi, %edi                                                      #  1     0xa64c0  2      OPC=movl_r32_r32    
  movl %edi, %edi                                                      #  2     0xa64c2  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                             #  3     0xa64c4  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                                      #  4     0xa64c8  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                                      #  5     0xa64cb  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax                                             #  6     0xa64cd  4      OPC=movl_r32_m32    
  addl %edi, %eax                                                      #  7     0xa64d1  2      OPC=addl_r32_r32    
  movl %eax, %eax                                                      #  8     0xa64d3  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rax,1), %eax                                          #  9     0xa64d5  5      OPC=movl_r32_m32    
  andl $0x4a, %eax                                                     #  10    0xa64da  3      OPC=andl_r32_imm8   
  cmpl $0x8, %eax                                                      #  11    0xa64dd  3      OPC=cmpl_r32_imm8   
  je .L_a6500                                                          #  12    0xa64e0  2      OPC=je_label        
  cmpl $0x40, %eax                                                     #  13    0xa64e2  3      OPC=cmpl_r32_imm8   
  je .L_a6500                                                          #  14    0xa64e5  2      OPC=je_label        
  movswl %si, %esi                                                     #  15    0xa64e7  3      OPC=movswl_r32_r16  
  jmpq ._ZNSt13basic_ostreamIwSt11char_traitsIwEE9_M_insertIlEERS2_T_  #  16    0xa64ea  5      OPC=jmpq_label_1    
  xchgw %ax, %ax                                                       #  17    0xa64ef  2      OPC=xchgw_ax_r16    
  nop                                                                  #  18    0xa64f1  1      OPC=nop             
  nop                                                                  #  19    0xa64f2  1      OPC=nop             
  nop                                                                  #  20    0xa64f3  1      OPC=nop             
  nop                                                                  #  21    0xa64f4  1      OPC=nop             
  nop                                                                  #  22    0xa64f5  1      OPC=nop             
  nop                                                                  #  23    0xa64f6  1      OPC=nop             
  nop                                                                  #  24    0xa64f7  1      OPC=nop             
  nop                                                                  #  25    0xa64f8  1      OPC=nop             
  nop                                                                  #  26    0xa64f9  1      OPC=nop             
  nop                                                                  #  27    0xa64fa  1      OPC=nop             
  nop                                                                  #  28    0xa64fb  1      OPC=nop             
  nop                                                                  #  29    0xa64fc  1      OPC=nop             
  nop                                                                  #  30    0xa64fd  1      OPC=nop             
  nop                                                                  #  31    0xa64fe  1      OPC=nop             
  nop                                                                  #  32    0xa64ff  1      OPC=nop             
.L_a6500:                                                              #        0xa6500  0      OPC=<label>         
  movzwl %si, %esi                                                     #  33    0xa6500  3      OPC=movzwl_r32_r16  
  jmpq ._ZNSt13basic_ostreamIwSt11char_traitsIwEE9_M_insertIlEERS2_T_  #  34    0xa6503  5      OPC=jmpq_label_1    
  nop                                                                  #  35    0xa6508  1      OPC=nop             
  nop                                                                  #  36    0xa6509  1      OPC=nop             
  nop                                                                  #  37    0xa650a  1      OPC=nop             
  nop                                                                  #  38    0xa650b  1      OPC=nop             
  nop                                                                  #  39    0xa650c  1      OPC=nop             
  nop                                                                  #  40    0xa650d  1      OPC=nop             
  nop                                                                  #  41    0xa650e  1      OPC=nop             
  nop                                                                  #  42    0xa650f  1      OPC=nop             
  nop                                                                  #  43    0xa6510  1      OPC=nop             
  nop                                                                  #  44    0xa6511  1      OPC=nop             
  nop                                                                  #  45    0xa6512  1      OPC=nop             
  nop                                                                  #  46    0xa6513  1      OPC=nop             
  nop                                                                  #  47    0xa6514  1      OPC=nop             
  nop                                                                  #  48    0xa6515  1      OPC=nop             
  nop                                                                  #  49    0xa6516  1      OPC=nop             
  nop                                                                  #  50    0xa6517  1      OPC=nop             
  nop                                                                  #  51    0xa6518  1      OPC=nop             
  nop                                                                  #  52    0xa6519  1      OPC=nop             
  nop                                                                  #  53    0xa651a  1      OPC=nop             
  nop                                                                  #  54    0xa651b  1      OPC=nop             
  nop                                                                  #  55    0xa651c  1      OPC=nop             
  nop                                                                  #  56    0xa651d  1      OPC=nop             
  nop                                                                  #  57    0xa651e  1      OPC=nop             
  nop                                                                  #  58    0xa651f  1      OPC=nop             
                                                                                                                    
.size _ZNSt13basic_ostreamIwSt11char_traitsIwEElsEs, .-_ZNSt13basic_ostreamIwSt11char_traitsIwEElsEs

