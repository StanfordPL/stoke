  .text
  .globl _ZNSolsEs
  .type _ZNSolsEs, @function

#! file-offset 0xe4440
#! rip-offset  0xa4440
#! capacity    96 bytes

# Text                            #  Line  RIP      Bytes  Opcode              
._ZNSolsEs:                       #        0xa4440  0      OPC=<label>         
  movl %edi, %edi                 #  1     0xa4440  2      OPC=movl_r32_r32    
  movl %edi, %edi                 #  2     0xa4442  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax        #  3     0xa4444  4      OPC=movl_r32_m32    
  subl $0xc, %eax                 #  4     0xa4448  3      OPC=subl_r32_imm8   
  movl %eax, %eax                 #  5     0xa444b  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax        #  6     0xa444d  4      OPC=movl_r32_m32    
  addl %edi, %eax                 #  7     0xa4451  2      OPC=addl_r32_r32    
  movl %eax, %eax                 #  8     0xa4453  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rax,1), %eax     #  9     0xa4455  5      OPC=movl_r32_m32    
  andl $0x4a, %eax                #  10    0xa445a  3      OPC=andl_r32_imm8   
  cmpl $0x8, %eax                 #  11    0xa445d  3      OPC=cmpl_r32_imm8   
  je .L_a4480                     #  12    0xa4460  2      OPC=je_label        
  cmpl $0x40, %eax                #  13    0xa4462  3      OPC=cmpl_r32_imm8   
  je .L_a4480                     #  14    0xa4465  2      OPC=je_label        
  movswl %si, %esi                #  15    0xa4467  3      OPC=movswl_r32_r16  
  jmpq ._ZNSo9_M_insertIlEERSoT_  #  16    0xa446a  5      OPC=jmpq_label_1    
  xchgw %ax, %ax                  #  17    0xa446f  2      OPC=xchgw_ax_r16    
  nop                             #  18    0xa4471  1      OPC=nop             
  nop                             #  19    0xa4472  1      OPC=nop             
  nop                             #  20    0xa4473  1      OPC=nop             
  nop                             #  21    0xa4474  1      OPC=nop             
  nop                             #  22    0xa4475  1      OPC=nop             
  nop                             #  23    0xa4476  1      OPC=nop             
  nop                             #  24    0xa4477  1      OPC=nop             
  nop                             #  25    0xa4478  1      OPC=nop             
  nop                             #  26    0xa4479  1      OPC=nop             
  nop                             #  27    0xa447a  1      OPC=nop             
  nop                             #  28    0xa447b  1      OPC=nop             
  nop                             #  29    0xa447c  1      OPC=nop             
  nop                             #  30    0xa447d  1      OPC=nop             
  nop                             #  31    0xa447e  1      OPC=nop             
  nop                             #  32    0xa447f  1      OPC=nop             
.L_a4480:                         #        0xa4480  0      OPC=<label>         
  movzwl %si, %esi                #  33    0xa4480  3      OPC=movzwl_r32_r16  
  jmpq ._ZNSo9_M_insertIlEERSoT_  #  34    0xa4483  5      OPC=jmpq_label_1    
  nop                             #  35    0xa4488  1      OPC=nop             
  nop                             #  36    0xa4489  1      OPC=nop             
  nop                             #  37    0xa448a  1      OPC=nop             
  nop                             #  38    0xa448b  1      OPC=nop             
  nop                             #  39    0xa448c  1      OPC=nop             
  nop                             #  40    0xa448d  1      OPC=nop             
  nop                             #  41    0xa448e  1      OPC=nop             
  nop                             #  42    0xa448f  1      OPC=nop             
  nop                             #  43    0xa4490  1      OPC=nop             
  nop                             #  44    0xa4491  1      OPC=nop             
  nop                             #  45    0xa4492  1      OPC=nop             
  nop                             #  46    0xa4493  1      OPC=nop             
  nop                             #  47    0xa4494  1      OPC=nop             
  nop                             #  48    0xa4495  1      OPC=nop             
  nop                             #  49    0xa4496  1      OPC=nop             
  nop                             #  50    0xa4497  1      OPC=nop             
  nop                             #  51    0xa4498  1      OPC=nop             
  nop                             #  52    0xa4499  1      OPC=nop             
  nop                             #  53    0xa449a  1      OPC=nop             
  nop                             #  54    0xa449b  1      OPC=nop             
  nop                             #  55    0xa449c  1      OPC=nop             
  nop                             #  56    0xa449d  1      OPC=nop             
  nop                             #  57    0xa449e  1      OPC=nop             
  nop                             #  58    0xa449f  1      OPC=nop             
                                                                               
.size _ZNSolsEs, .-_ZNSolsEs

