  .text
  .globl wcscat
  .type wcscat, @function

#! file-offset 0x40
#! rip-offset  0
#! capacity    56 bytes

# Text                         #  Line  RIP   Bytes  Opcode              
.wcscat:                       #        0     0      OPC=<label>         
  nop                          #  1     0     1      OPC=nop             
  nop                          #  2     0x1   1      OPC=nop             
  nop                          #  3     0x2   1      OPC=nop             
  nop                          #  4     0x3   1      OPC=nop             
  nop                          #  5     0x4   1      OPC=nop             
  movq %rdi, %rax              #  6     0x5   3      OPC=movq_r64_r64_1  
  nop                          #  7     0x8   1      OPC=nop             
  movq %rdi, %rdx              #  8     0x9   3      OPC=movq_r64_r64    
  nop                          #  9     0xc   1      OPC=nop             
  nop                          #  10    0xd   1      OPC=nop             
  nop                          #  11    0xe   1      OPC=nop             
  leal (%rdi), %r8d            #  12    0xf   3      OPC=leal_r32_m16    
  movl (%r15,%r8,1), %edi      #  13    0x12  4      OPC=movl_r32_m32    
  testl %edi, %esi             #  14    0x16  2      OPC=testl_r32_r32   
  je .L_31                     #  15    0x18  2      OPC=je_label        
  nop                          #  16    0x1a  1      OPC=nop             
  nop                          #  17    0x1b  1      OPC=nop             
  nop                          #  18    0x1c  1      OPC=nop             
  nop                          #  19    0x1d  1      OPC=nop             
  nop                          #  20    0x1e  1      OPC=nop             
  nop                          #  21    0x1f  1      OPC=nop             
.L_10:                         #        0x20  0      OPC=<label>         
  addq $0x4, %rdx              #  22    0x20  4      OPC=addq_r64_imm8   
  leal (%rdx), %r8d            #  23    0x24  3      OPC=leal_r32_m64    
  movl (%r15,%r8,1), %ecx      #  24    0x27  4      OPC=movl_r32_m32    
  testl %ecx, %ecx             #  25    0x2b  2      OPC=testl_r32_r32   
  jne .L_10                    #  26    0x2d  2      OPC=jne_label       
  nop                          #  27    0x2f  1      OPC=nop             
  nop                          #  28    0x30  1      OPC=nop             
  testl %ecx, %esi             #  29    0x31  2      OPC=testl_r32_r32   
  nop                          #  30    0x33  1      OPC=nop             
  nop                          #  31    0x34  1      OPC=nop             
  nop                          #  32    0x35  1      OPC=nop             
  leal (%rsi), %r8d            #  33    0x36  3      OPC=leal_r32_m16    
  movl (%r15,%r8,1), %ecx      #  34    0x39  4      OPC=movl_r32_m32    
  nop                          #  35    0x3d  1      OPC=nop             
  je .L_20                     #  36    0x3e  2      OPC=je_label        
.L_20:                         #        0x40  0      OPC=<label>         
  addq $0x4, %rdx              #  37    0x40  4      OPC=addq_r64_imm8   
  addq $0x4, %rsi              #  38    0x44  4      OPC=addq_r64_imm8   
  leal (%rdx), %r8d            #  39    0x48  3      OPC=leal_r32_m64    
  movl %ecx, -0x4(%r15,%r8,1)  #  40    0x4b  5      OPC=movl_m32_r32    
.L_2b:                         #        0x50  0      OPC=<label>         
  leal (%rsi), %r8d            #  41    0x50  3      OPC=leal_r32_m64    
  movl (%r15,%r8,1), %ecx      #  42    0x53  4      OPC=movl_r32_m32    
  testl %ecx, %edx             #  43    0x57  2      OPC=testl_r32_r32   
  jne .L_20                    #  44    0x59  2      OPC=jne_label       
  nop                          #  45    0x5b  1      OPC=nop             
  nop                          #  46    0x5c  1      OPC=nop             
  nop                          #  47    0x5d  1      OPC=nop             
  nop                          #  48    0x5e  1      OPC=nop             
  nop                          #  49    0x5f  1      OPC=nop             
.L_31:                         #        0x60  0      OPC=<label>         
  leal (%rdx), %r8d            #  50    0x60  3      OPC=leal_r32_m16    
  movl $0x0, (%r15,%r8,1)      #  51    0x63  8      OPC=movl_m32_imm32  
  popq %r11                    #  52    0x6b  2      OPC=popq_r64_1      
  andl $0xe0, %r11d            #  53    0x6d  4      OPC=andl_r32_imm8   
  addq %r15, %r11              #  54    0x71  3      OPC=addq_r64_r64    
  jmpq %r11                    #  55    0x74  3      OPC=jmpq_r64        
                                                                         
.size wcscat, .-wcscat
