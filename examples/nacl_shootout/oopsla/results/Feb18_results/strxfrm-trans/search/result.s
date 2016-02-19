  .text
  .globl strxfrm
  .type strxfrm, @function

#! file-offset 0x40
#! rip-offset  0
#! capacity    79 bytes

# Text                        #  Line  RIP   Bytes  Opcode              
.strxfrm:                     #        0     0      OPC=<label>         
  xorq %rax, %rax             #  1     0     3      OPC=xorq_r64_r64    
  nop                         #  2     0x3   1      OPC=nop             
  nop                         #  3     0x4   1      OPC=nop             
  nop                         #  4     0x5   1      OPC=nop             
  nop                         #  5     0x6   1      OPC=nop             
  testb %dl, %dl              #  6     0x7   2      OPC=testb_r8_r8     
  nop                         #  7     0x9   1      OPC=nop             
  je .L_38                    #  8     0xa   6      OPC=je_label_1      
  leal (%rsi), %esi           #  9     0x10  2      OPC=leal_r32_m64    
  movzbl (%r15,%rsi,1), %eax  #  10    0x12  5      OPC=movzbl_r32_m8   
  leal (%rdi), %r8d           #  11    0x17  3      OPC=leal_r32_m64    
  movb %al, (%r15,%r8,1)      #  12    0x1a  4      OPC=movb_m8_r8      
  addb %ah, %al               #  13    0x1e  2      OPC=addb_r8_rh      
  je .L_4c                    #  14    0x20  6      OPC=je_label_1      
  leal 0x1(%rsi), %ecx        #  15    0x26  3      OPC=leal_r32_m32    
  addl %edx, %esi             #  16    0x29  2      OPC=addl_r32_r32    
  nop                         #  17    0x2b  1      OPC=nop             
  subb %al, %al               #  18    0x2c  2      OPC=subb_r8_r8      
  jmpq .L_2f                  #  19    0x2e  5      OPC=jmpq_label_1    
  nop                         #  20    0x33  1      OPC=nop             
.L_20:                        #        0x34  0      OPC=<label>         
  addl $0x1, %ecx             #  21    0x34  3      OPC=addl_r32_imm8   
  leal -0x1(%rcx), %r8d       #  22    0x37  4      OPC=leal_r32_m32    
  movsbl (%r15,%r8,1), %edx   #  23    0x3b  5      OPC=movsbl_r32_m8   
  testq %rdx, %rdx            #  24    0x40  3      OPC=testq_r64_r64   
  leal (%rdi,%rax,1), %r8d    #  25    0x43  4      OPC=leal_r32_m16    
  movb %dl, (%r15,%r8,1)      #  26    0x47  4      OPC=movb_m8_r8      
  je .L_4a                    #  27    0x4b  6      OPC=je_label_1      
.L_2f:                        #        0x51  0      OPC=<label>         
  addw $0x1, %ax              #  28    0x51  4      OPC=addw_r16_imm8   
  cmpq %rsi, %rcx             #  29    0x55  3      OPC=cmpq_r64_r64    
  jne .L_20                   #  30    0x58  6      OPC=jne_label_1     
.L_38:                        #        0x5e  0      OPC=<label>         
  nop                         #  31    0x5e  1      OPC=nop             
  nop                         #  32    0x5f  1      OPC=nop             
  leal (%rsi), %r8d           #  33    0x60  3      OPC=leal_r32_m64    
  cmpb $0x0, (%r15,%r8,1)     #  34    0x63  5      OPC=cmpb_m8_imm8    
  je .L_4a                    #  35    0x68  6      OPC=je_label_1      
  nop                         #  36    0x6e  1      OPC=nop             
  nop                         #  37    0x6f  1      OPC=nop             
  nop                         #  38    0x70  1      OPC=nop             
  nop                         #  39    0x71  1      OPC=nop             
  subq %rax, %rsi             #  40    0x72  3      OPC=subq_r64_r64_1  
  nop                         #  41    0x75  1      OPC=nop             
  nop                         #  42    0x76  1      OPC=nop             
  nop                         #  43    0x77  1      OPC=nop             
  nop                         #  44    0x78  1      OPC=nop             
  nop                         #  45    0x79  1      OPC=nop             
.L_40:                        #        0x7a  0      OPC=<label>         
  addq $0x1, %rax             #  46    0x7a  6      OPC=addq_rax_imm32  
  leal (%rsi,%rax,1), %r8d    #  47    0x80  4      OPC=leal_r32_m16    
  cmpb $0x0, (%r15,%r8,1)     #  48    0x84  5      OPC=cmpb_m8_imm8    
  jne .L_40                   #  49    0x89  6      OPC=jne_label_1     
  nop                         #  50    0x8f  1      OPC=nop             
  nop                         #  51    0x90  1      OPC=nop             
  nop                         #  52    0x91  1      OPC=nop             
  nop                         #  53    0x92  1      OPC=nop             
.L_4a:                        #        0x93  0      OPC=<label>         
.L_4c:                        #        0x93  0      OPC=<label>         
  nop                         #  54    0x93  1      OPC=nop             
  retq                        #  55    0x94  1      OPC=retq            
                                                                        
.size strxfrm, .-strxfrm
