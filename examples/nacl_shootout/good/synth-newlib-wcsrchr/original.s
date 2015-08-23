  .text
  .globl wcsrchr
  .type wcsrchr, @function

#! file-offset 0x40
#! rip-offset  0
#! capacity    59 bytes

# Text               #  Line  RIP   Bytes  Opcode             
.wcsrchr:            #        0     0      OPC=<label>        
  movl (%rdi), %ecx  #  1     0     2      OPC=movl_r32_m32   
  movq %rdi, %rax    #  2     0x2   3      OPC=movq_r64_r64   
  testl %ecx, %ecx   #  3     0x5   2      OPC=testl_r32_r32  
  je .L_1f           #  4     0x7   2      OPC=je_label       
  nop                #  5     0x9   1      OPC=nop            
  nop                #  6     0xa   1      OPC=nop            
  nop                #  7     0xb   1      OPC=nop            
  nop                #  8     0xc   1      OPC=nop            
  nop                #  9     0xd   1      OPC=nop            
  nop                #  10    0xe   1      OPC=nop            
  nop                #  11    0xf   1      OPC=nop            
.L_10:               #        0x10  0      OPC=<label>        
  addq $0x4, %rax    #  12    0x10  4      OPC=addq_r64_imm8  
  movl (%rax), %edx  #  13    0x14  2      OPC=movl_r32_m32   
  testl %edx, %edx   #  14    0x16  2      OPC=testl_r32_r32  
  jne .L_10          #  15    0x18  2      OPC=jne_label      
  cmpq %rdi, %rax    #  16    0x1a  3      OPC=cmpq_r64_r64   
  jb .L_35           #  17    0x1d  2      OPC=jb_label       
.L_1f:               #        0x1f  0      OPC=<label>        
  testl %esi, %esi   #  18    0x1f  2      OPC=testl_r32_r32  
  jne .L_2c          #  19    0x21  2      OPC=jne_label      
  jmpq .L_39         #  20    0x23  2      OPC=jmpq_label     
  nop                #  21    0x25  1      OPC=nop            
  nop                #  22    0x26  1      OPC=nop            
  nop                #  23    0x27  1      OPC=nop            
.L_28:               #        0x28  0      OPC=<label>        
  cmpl %esi, (%rax)  #  24    0x28  2      OPC=cmpl_m32_r32   
  je .L_37           #  25    0x2a  2      OPC=je_label       
.L_2c:               #        0x2c  0      OPC=<label>        
  subq $0x4, %rax    #  26    0x2c  4      OPC=subq_r64_imm8  
  cmpq %rax, %rdi    #  27    0x30  3      OPC=cmpq_r64_r64   
  jbe .L_28          #  28    0x33  2      OPC=jbe_label      
.L_35:               #        0x35  0      OPC=<label>        
  xorl %eax, %eax    #  29    0x35  2      OPC=xorl_r32_r32   
.L_37:               #        0x37  0      OPC=<label>        
  retq               #  30    0x37  1      OPC=retq           
  nop                #  31    0x38  1      OPC=nop            
.L_39:               #        0x39  0      OPC=<label>        
  retq               #  32    0x39  1      OPC=retq           
  nop                #  33    0x3a  1      OPC=nop            
                                                              
.size wcsrchr, .-wcsrchr

