  .text
  .globl wcscpy
  .type wcscpy, @function

#! file-offset 0x40
#! rip-offset  0
#! capacity    48 bytes

# Text                      #  Line  RIP   Bytes  Opcode              
.wcscpy:                    #        0     0      OPC=<label>         
  leal (%rsi), %edx         #  1     0     2      OPC=leal_r32_m32    
  movl (%r15,%rdx,1), %edx  #  2     0x2   4      OPC=movl_r32_m32    
  nop                       #  3     0x6   1      OPC=nop             
  nop                       #  4     0x7   1      OPC=nop             
  nop                       #  5     0x8   1      OPC=nop             
  nop                       #  6     0x9   1      OPC=nop             
  nop                       #  7     0xa   1      OPC=nop             
  nop                       #  8     0xb   1      OPC=nop             
  nop                       #  9     0xc   1      OPC=nop             
  nop                       #  10    0xd   1      OPC=nop             
  testl %edx, %edx          #  11    0xe   2      OPC=testl_r32_r32   
  nop                       #  12    0x10  1      OPC=nop             
  nop                       #  13    0x11  1      OPC=nop             
  nop                       #  14    0x12  1      OPC=nop             
  movl %edi, %eax           #  15    0x13  2      OPC=movl_r32_r32    
  nop                       #  16    0x15  1      OPC=nop             
  nop                       #  17    0x16  1      OPC=nop             
  nop                       #  18    0x17  1      OPC=nop             
  nop                       #  19    0x18  1      OPC=nop             
  nop                       #  20    0x19  1      OPC=nop             
  nop                       #  21    0x1a  1      OPC=nop             
  nop                       #  22    0x1b  1      OPC=nop             
  nop                       #  23    0x1c  1      OPC=nop             
  nop                       #  24    0x1d  1      OPC=nop             
  movl %edi, %ecx           #  25    0x1e  2      OPC=movl_r32_r32    
  je .L_29                  #  26    0x20  2      OPC=je_label        
.L_18:                      #        0x22  0      OPC=<label>         
  addq $0x4, %rsi           #  27    0x22  4      OPC=addq_r64_imm8   
  addq $0x4, %rcx           #  28    0x26  4      OPC=addq_r64_imm8   
  leal -0x4(%rcx), %r8d     #  29    0x2a  4      OPC=leal_r32_m32    
  movl %edx, (%r15,%r8,1)   #  30    0x2e  4      OPC=movl_m32_r32    
  leal (%rsi), %r8d         #  31    0x32  3      OPC=leal_r32_m64    
  movl (%r15,%r8,1), %edx   #  32    0x35  4      OPC=movl_r32_m32    
  testl %edx, %edx          #  33    0x39  2      OPC=testl_r32_r32   
  jne .L_18                 #  34    0x3b  2      OPC=jne_label       
  nop                       #  35    0x3d  1      OPC=nop             
  nop                       #  36    0x3e  1      OPC=nop             
  nop                       #  37    0x3f  1      OPC=nop             
  nop                       #  38    0x40  1      OPC=nop             
  nop                       #  39    0x41  1      OPC=nop             
  nop                       #  40    0x42  1      OPC=nop             
  nop                       #  41    0x43  1      OPC=nop             
  nop                       #  42    0x44  1      OPC=nop             
.L_29:                      #        0x45  0      OPC=<label>         
  leal (%rcx), %r8d         #  43    0x45  3      OPC=leal_r32_m16    
  andl $0x0, (%r15,%r8,1)   #  44    0x48  8      OPC=andl_m32_imm32  
  retq                      #  45    0x50  1      OPC=retq            
                                                                      
.size wcscpy, .-wcscpy
