  .text
  .globl _ZNSt13basic_ostreamIwSt11char_traitsIwEElsEs
  .type _ZNSt13basic_ostreamIwSt11char_traitsIwEElsEs, @function

#! file-offset 0xe6ee0
#! rip-offset  0xa6ee0
#! capacity    96 bytes

# Text                                                                 #  Line  RIP      Bytes  Opcode              
._ZNSt13basic_ostreamIwSt11char_traitsIwEElsEs:                        #        0xa6ee0  0      OPC=<label>         
  movl %edi, %edi                                                      #  1     0xa6ee0  2      OPC=movl_r32_r32    
  movl %edi, %edi                                                      #  2     0xa6ee2  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                             #  3     0xa6ee4  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                                      #  4     0xa6ee8  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                                      #  5     0xa6eeb  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax                                             #  6     0xa6eed  4      OPC=movl_r32_m32    
  addl %edi, %eax                                                      #  7     0xa6ef1  2      OPC=addl_r32_r32    
  movl %eax, %eax                                                      #  8     0xa6ef3  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rax,1), %eax                                          #  9     0xa6ef5  5      OPC=movl_r32_m32    
  andl $0x4a, %eax                                                     #  10    0xa6efa  3      OPC=andl_r32_imm8   
  cmpl $0x8, %eax                                                      #  11    0xa6efd  3      OPC=cmpl_r32_imm8   
  je .L_a6f20                                                          #  12    0xa6f00  2      OPC=je_label        
  cmpl $0x40, %eax                                                     #  13    0xa6f02  3      OPC=cmpl_r32_imm8   
  je .L_a6f20                                                          #  14    0xa6f05  2      OPC=je_label        
  movswl %si, %esi                                                     #  15    0xa6f07  3      OPC=movswl_r32_r16  
  jmpq ._ZNSt13basic_ostreamIwSt11char_traitsIwEE9_M_insertIlEERS2_T_  #  16    0xa6f0a  5      OPC=jmpq_label_1    
  xchgw %ax, %ax                                                       #  17    0xa6f0f  2      OPC=xchgw_ax_r16    
  nop                                                                  #  18    0xa6f11  1      OPC=nop             
  nop                                                                  #  19    0xa6f12  1      OPC=nop             
  nop                                                                  #  20    0xa6f13  1      OPC=nop             
  nop                                                                  #  21    0xa6f14  1      OPC=nop             
  nop                                                                  #  22    0xa6f15  1      OPC=nop             
  nop                                                                  #  23    0xa6f16  1      OPC=nop             
  nop                                                                  #  24    0xa6f17  1      OPC=nop             
  nop                                                                  #  25    0xa6f18  1      OPC=nop             
  nop                                                                  #  26    0xa6f19  1      OPC=nop             
  nop                                                                  #  27    0xa6f1a  1      OPC=nop             
  nop                                                                  #  28    0xa6f1b  1      OPC=nop             
  nop                                                                  #  29    0xa6f1c  1      OPC=nop             
  nop                                                                  #  30    0xa6f1d  1      OPC=nop             
  nop                                                                  #  31    0xa6f1e  1      OPC=nop             
  nop                                                                  #  32    0xa6f1f  1      OPC=nop             
.L_a6f20:                                                              #        0xa6f20  0      OPC=<label>         
  movzwl %si, %esi                                                     #  33    0xa6f20  3      OPC=movzwl_r32_r16  
  jmpq ._ZNSt13basic_ostreamIwSt11char_traitsIwEE9_M_insertIlEERS2_T_  #  34    0xa6f23  5      OPC=jmpq_label_1    
  nop                                                                  #  35    0xa6f28  1      OPC=nop             
  nop                                                                  #  36    0xa6f29  1      OPC=nop             
  nop                                                                  #  37    0xa6f2a  1      OPC=nop             
  nop                                                                  #  38    0xa6f2b  1      OPC=nop             
  nop                                                                  #  39    0xa6f2c  1      OPC=nop             
  nop                                                                  #  40    0xa6f2d  1      OPC=nop             
  nop                                                                  #  41    0xa6f2e  1      OPC=nop             
  nop                                                                  #  42    0xa6f2f  1      OPC=nop             
  nop                                                                  #  43    0xa6f30  1      OPC=nop             
  nop                                                                  #  44    0xa6f31  1      OPC=nop             
  nop                                                                  #  45    0xa6f32  1      OPC=nop             
  nop                                                                  #  46    0xa6f33  1      OPC=nop             
  nop                                                                  #  47    0xa6f34  1      OPC=nop             
  nop                                                                  #  48    0xa6f35  1      OPC=nop             
  nop                                                                  #  49    0xa6f36  1      OPC=nop             
  nop                                                                  #  50    0xa6f37  1      OPC=nop             
  nop                                                                  #  51    0xa6f38  1      OPC=nop             
  nop                                                                  #  52    0xa6f39  1      OPC=nop             
  nop                                                                  #  53    0xa6f3a  1      OPC=nop             
  nop                                                                  #  54    0xa6f3b  1      OPC=nop             
  nop                                                                  #  55    0xa6f3c  1      OPC=nop             
  nop                                                                  #  56    0xa6f3d  1      OPC=nop             
  nop                                                                  #  57    0xa6f3e  1      OPC=nop             
  nop                                                                  #  58    0xa6f3f  1      OPC=nop             
                                                                                                                    
.size _ZNSt13basic_ostreamIwSt11char_traitsIwEElsEs, .-_ZNSt13basic_ostreamIwSt11char_traitsIwEElsEs

