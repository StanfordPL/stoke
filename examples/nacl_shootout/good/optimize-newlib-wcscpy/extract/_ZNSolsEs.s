  .text
  .globl _ZNSolsEs
  .type _ZNSolsEs, @function

#! file-offset 0xe3a20
#! rip-offset  0xa3a20
#! capacity    96 bytes

# Text                            #  Line  RIP      Bytes  Opcode              
._ZNSolsEs:                       #        0xa3a20  0      OPC=<label>         
  movl %edi, %edi                 #  1     0xa3a20  2      OPC=movl_r32_r32    
  movl %edi, %edi                 #  2     0xa3a22  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax        #  3     0xa3a24  4      OPC=movl_r32_m32    
  subl $0xc, %eax                 #  4     0xa3a28  3      OPC=subl_r32_imm8   
  movl %eax, %eax                 #  5     0xa3a2b  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax        #  6     0xa3a2d  4      OPC=movl_r32_m32    
  addl %edi, %eax                 #  7     0xa3a31  2      OPC=addl_r32_r32    
  movl %eax, %eax                 #  8     0xa3a33  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rax,1), %eax     #  9     0xa3a35  5      OPC=movl_r32_m32    
  andl $0x4a, %eax                #  10    0xa3a3a  3      OPC=andl_r32_imm8   
  cmpl $0x8, %eax                 #  11    0xa3a3d  3      OPC=cmpl_r32_imm8   
  je .L_a3a60                     #  12    0xa3a40  2      OPC=je_label        
  cmpl $0x40, %eax                #  13    0xa3a42  3      OPC=cmpl_r32_imm8   
  je .L_a3a60                     #  14    0xa3a45  2      OPC=je_label        
  movswl %si, %esi                #  15    0xa3a47  3      OPC=movswl_r32_r16  
  jmpq ._ZNSo9_M_insertIlEERSoT_  #  16    0xa3a4a  5      OPC=jmpq_label_1    
  xchgw %ax, %ax                  #  17    0xa3a4f  2      OPC=xchgw_ax_r16    
  nop                             #  18    0xa3a51  1      OPC=nop             
  nop                             #  19    0xa3a52  1      OPC=nop             
  nop                             #  20    0xa3a53  1      OPC=nop             
  nop                             #  21    0xa3a54  1      OPC=nop             
  nop                             #  22    0xa3a55  1      OPC=nop             
  nop                             #  23    0xa3a56  1      OPC=nop             
  nop                             #  24    0xa3a57  1      OPC=nop             
  nop                             #  25    0xa3a58  1      OPC=nop             
  nop                             #  26    0xa3a59  1      OPC=nop             
  nop                             #  27    0xa3a5a  1      OPC=nop             
  nop                             #  28    0xa3a5b  1      OPC=nop             
  nop                             #  29    0xa3a5c  1      OPC=nop             
  nop                             #  30    0xa3a5d  1      OPC=nop             
  nop                             #  31    0xa3a5e  1      OPC=nop             
  nop                             #  32    0xa3a5f  1      OPC=nop             
.L_a3a60:                         #        0xa3a60  0      OPC=<label>         
  movzwl %si, %esi                #  33    0xa3a60  3      OPC=movzwl_r32_r16  
  jmpq ._ZNSo9_M_insertIlEERSoT_  #  34    0xa3a63  5      OPC=jmpq_label_1    
  nop                             #  35    0xa3a68  1      OPC=nop             
  nop                             #  36    0xa3a69  1      OPC=nop             
  nop                             #  37    0xa3a6a  1      OPC=nop             
  nop                             #  38    0xa3a6b  1      OPC=nop             
  nop                             #  39    0xa3a6c  1      OPC=nop             
  nop                             #  40    0xa3a6d  1      OPC=nop             
  nop                             #  41    0xa3a6e  1      OPC=nop             
  nop                             #  42    0xa3a6f  1      OPC=nop             
  nop                             #  43    0xa3a70  1      OPC=nop             
  nop                             #  44    0xa3a71  1      OPC=nop             
  nop                             #  45    0xa3a72  1      OPC=nop             
  nop                             #  46    0xa3a73  1      OPC=nop             
  nop                             #  47    0xa3a74  1      OPC=nop             
  nop                             #  48    0xa3a75  1      OPC=nop             
  nop                             #  49    0xa3a76  1      OPC=nop             
  nop                             #  50    0xa3a77  1      OPC=nop             
  nop                             #  51    0xa3a78  1      OPC=nop             
  nop                             #  52    0xa3a79  1      OPC=nop             
  nop                             #  53    0xa3a7a  1      OPC=nop             
  nop                             #  54    0xa3a7b  1      OPC=nop             
  nop                             #  55    0xa3a7c  1      OPC=nop             
  nop                             #  56    0xa3a7d  1      OPC=nop             
  nop                             #  57    0xa3a7e  1      OPC=nop             
  nop                             #  58    0xa3a7f  1      OPC=nop             
                                                                               
.size _ZNSolsEs, .-_ZNSolsEs

