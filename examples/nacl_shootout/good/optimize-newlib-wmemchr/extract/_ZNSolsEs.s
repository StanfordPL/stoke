  .text
  .globl _ZNSolsEs
  .type _ZNSolsEs, @function

#! file-offset 0xe3d20
#! rip-offset  0xa3d20
#! capacity    96 bytes

# Text                            #  Line  RIP      Bytes  Opcode              
._ZNSolsEs:                       #        0xa3d20  0      OPC=<label>         
  movl %edi, %edi                 #  1     0xa3d20  2      OPC=movl_r32_r32    
  movl %edi, %edi                 #  2     0xa3d22  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax        #  3     0xa3d24  4      OPC=movl_r32_m32    
  subl $0xc, %eax                 #  4     0xa3d28  3      OPC=subl_r32_imm8   
  movl %eax, %eax                 #  5     0xa3d2b  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax        #  6     0xa3d2d  4      OPC=movl_r32_m32    
  addl %edi, %eax                 #  7     0xa3d31  2      OPC=addl_r32_r32    
  movl %eax, %eax                 #  8     0xa3d33  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rax,1), %eax     #  9     0xa3d35  5      OPC=movl_r32_m32    
  andl $0x4a, %eax                #  10    0xa3d3a  3      OPC=andl_r32_imm8   
  cmpl $0x8, %eax                 #  11    0xa3d3d  3      OPC=cmpl_r32_imm8   
  je .L_a3d60                     #  12    0xa3d40  2      OPC=je_label        
  cmpl $0x40, %eax                #  13    0xa3d42  3      OPC=cmpl_r32_imm8   
  je .L_a3d60                     #  14    0xa3d45  2      OPC=je_label        
  movswl %si, %esi                #  15    0xa3d47  3      OPC=movswl_r32_r16  
  jmpq ._ZNSo9_M_insertIlEERSoT_  #  16    0xa3d4a  5      OPC=jmpq_label_1    
  xchgw %ax, %ax                  #  17    0xa3d4f  2      OPC=xchgw_ax_r16    
  nop                             #  18    0xa3d51  1      OPC=nop             
  nop                             #  19    0xa3d52  1      OPC=nop             
  nop                             #  20    0xa3d53  1      OPC=nop             
  nop                             #  21    0xa3d54  1      OPC=nop             
  nop                             #  22    0xa3d55  1      OPC=nop             
  nop                             #  23    0xa3d56  1      OPC=nop             
  nop                             #  24    0xa3d57  1      OPC=nop             
  nop                             #  25    0xa3d58  1      OPC=nop             
  nop                             #  26    0xa3d59  1      OPC=nop             
  nop                             #  27    0xa3d5a  1      OPC=nop             
  nop                             #  28    0xa3d5b  1      OPC=nop             
  nop                             #  29    0xa3d5c  1      OPC=nop             
  nop                             #  30    0xa3d5d  1      OPC=nop             
  nop                             #  31    0xa3d5e  1      OPC=nop             
  nop                             #  32    0xa3d5f  1      OPC=nop             
.L_a3d60:                         #        0xa3d60  0      OPC=<label>         
  movzwl %si, %esi                #  33    0xa3d60  3      OPC=movzwl_r32_r16  
  jmpq ._ZNSo9_M_insertIlEERSoT_  #  34    0xa3d63  5      OPC=jmpq_label_1    
  nop                             #  35    0xa3d68  1      OPC=nop             
  nop                             #  36    0xa3d69  1      OPC=nop             
  nop                             #  37    0xa3d6a  1      OPC=nop             
  nop                             #  38    0xa3d6b  1      OPC=nop             
  nop                             #  39    0xa3d6c  1      OPC=nop             
  nop                             #  40    0xa3d6d  1      OPC=nop             
  nop                             #  41    0xa3d6e  1      OPC=nop             
  nop                             #  42    0xa3d6f  1      OPC=nop             
  nop                             #  43    0xa3d70  1      OPC=nop             
  nop                             #  44    0xa3d71  1      OPC=nop             
  nop                             #  45    0xa3d72  1      OPC=nop             
  nop                             #  46    0xa3d73  1      OPC=nop             
  nop                             #  47    0xa3d74  1      OPC=nop             
  nop                             #  48    0xa3d75  1      OPC=nop             
  nop                             #  49    0xa3d76  1      OPC=nop             
  nop                             #  50    0xa3d77  1      OPC=nop             
  nop                             #  51    0xa3d78  1      OPC=nop             
  nop                             #  52    0xa3d79  1      OPC=nop             
  nop                             #  53    0xa3d7a  1      OPC=nop             
  nop                             #  54    0xa3d7b  1      OPC=nop             
  nop                             #  55    0xa3d7c  1      OPC=nop             
  nop                             #  56    0xa3d7d  1      OPC=nop             
  nop                             #  57    0xa3d7e  1      OPC=nop             
  nop                             #  58    0xa3d7f  1      OPC=nop             
                                                                               
.size _ZNSolsEs, .-_ZNSolsEs

