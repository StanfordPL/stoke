  .text
  .globl strcasecmp
  .type strcasecmp, @function

#! file-offset 0x131800
#! rip-offset  0x131800
#! capacity    98 bytes

# Text                          #  Line  RIP   Bytes  Opcode              
.strcasecmp:                    #        0     0      OPC=<label>         
  movl 0x2cf0b1(%rip), %r8d
  jmpq .L_18                    #  2     0x7   2      OPC=jmpq_label      
  nop                           #  3     0x9   1      OPC=nop             
  nop                           #  4     0xa   1      OPC=nop             
  nop                           #  5     0xb   1      OPC=nop             
  nop                           #  6     0xc   1      OPC=nop             
  nop                           #  7     0xd   1      OPC=nop             
  nop                           #  8     0xe   1      OPC=nop             
  nop                           #  9     0xf   1      OPC=nop             
.L_10:                          #        0x10  0      OPC=<label>         
  subl %edx, %eax               #  10    0x10  2      OPC=subl_r32_r32    
  jne .L_60                     #  11    0x12  2      OPC=jne_label       
  testl %edx, %edx              #  12    0x14  2      OPC=testl_r32_r32   
  je .L_60                      #  13    0x16  2      OPC=je_label        
.L_18:                          #        0x18  0      OPC=<label>         
  addq $0x1, %rdi               #  14    0x18  4      OPC=addq_r64_imm8   
  leal -0x1(%rdi), %r9d
  movzbl (%r15, %r9), %edx      #  15    0x1c  4      OPC=movzbl_r32_m8   
  movq %rdx, %rax               #  16    0x20  3      OPC=movq_r64_r64    
  leal 0x1(%r8,%rdx,1), %r9d
  movzbl 0x1(%r15, %r9), %edx   #  17    0x23  6      OPC=movzbl_r32_m8   
  leal 0x20(%rax), %ecx         #  18    0x29  3      OPC=leal_r32_m16    
  andl $0x3, %edx               #  19    0x2c  3      OPC=andl_r32_imm8   
  cmpb $0x1, %dl                #  20    0x2f  3      OPC=cmpb_r8_imm8    
  cmovel %ecx, %eax             #  21    0x32  3      OPC=cmovel_r32_r32  
  addq $0x1, %rsi               #  22    0x35  4      OPC=addq_r64_imm8   
  leal -0x1(%rsi), %r9d
  movzbl (%r15, %r9), %ecx       #  23    0x39  4      OPC=movzbl_r32_m8   
  movq %rcx, %rdx               #  24    0x3d  3      OPC=movq_r64_r64    
  leal 0x1(%r8,%rcx,1), %r9d
  movzbl (%r15,%r9,1), %ecx  #  25    0x40  6      OPC=movzbl_r32_m8   
  andl $0x3, %ecx               #  26    0x46  3      OPC=andl_r32_imm8   
  cmpb $0x1, %cl                #  27    0x49  3      OPC=cmpb_r8_imm8    
  jne .L_10                     #  28    0x4c  2      OPC=jne_label       
  addl $0x20, %edx              #  29    0x4e  3      OPC=addl_r32_imm8   
  subl %edx, %eax               #  30    0x51  2      OPC=subl_r32_r32    
  je .L_18                      #  31    0x53  2      OPC=je_label        
  retq                          #  32    0x55  1      OPC=retq            
  nop                           #  33    0x56  1      OPC=nop             
  nop                           #  34    0x57  1      OPC=nop             
  nop                           #  35    0x58  1      OPC=nop             
  nop                           #  36    0x59  1      OPC=nop             
  nop                           #  37    0x5a  1      OPC=nop             
  nop                           #  38    0x5b  1      OPC=nop             
  nop                           #  39    0x5c  1      OPC=nop             
  nop                           #  40    0x5d  1      OPC=nop             
  nop                           #  41    0x5e  1      OPC=nop             
  nop                           #  42    0x5f  1      OPC=nop             
.L_60:                          #        0x60  0      OPC=<label>         
  retq                          #  43    0x60  1      OPC=retq            
  nop                           #  44    0x61  1      OPC=nop             
                                                                          
.size strcasecmp, .-strcasecmp

