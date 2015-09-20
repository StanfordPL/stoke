  .text
  .globl wmemset
  .type wmemset, @function

#! file-offset 0x40
#! rip-offset  0
#! capacity    30 bytes

# Text                      #  Line  RIP   Bytes  Opcode              
.wmemset:                   #        0     0      OPC=<label>         
  nop                       #  1     0     1      OPC=nop             
  nop                       #  2     0x1   1      OPC=nop             
  nop                       #  3     0x2   1      OPC=nop             
  nop                       #  4     0x3   1      OPC=nop             
  nop                       #  5     0x4   1      OPC=nop             
  nop                       #  6     0x5   1      OPC=nop             
  nop                       #  7     0x6   1      OPC=nop             
  nop                       #  8     0x7   1      OPC=nop             
  nop                       #  9     0x8   1      OPC=nop             
  nop                       #  10    0x9   1      OPC=nop             
  nop                       #  11    0xa   1      OPC=nop             
  nop                       #  12    0xb   1      OPC=nop             
  xorl %ecx, %ecx           #  13    0xc   2      OPC=xorl_r32_r32    
  movl %edi, %eax           #  14    0xe   2      OPC=movl_r32_r32_1  
  nop                       #  15    0x10  1      OPC=nop             
  nop                       #  16    0x11  1      OPC=nop             
  nop                       #  17    0x12  1      OPC=nop             
  nop                       #  18    0x13  1      OPC=nop             
  nop                       #  19    0x14  1      OPC=nop             
  nop                       #  20    0x15  1      OPC=nop             
  nop                       #  21    0x16  1      OPC=nop             
  nop                       #  22    0x17  1      OPC=nop             
  nop                       #  23    0x18  1      OPC=nop             
  nop                       #  24    0x19  1      OPC=nop             
  nop                       #  25    0x1a  1      OPC=nop             
  testq %rdx, %rdx          #  26    0x1b  3      OPC=testq_r64_r64   
  je .L_1c                  #  27    0x1e  2      OPC=je_label        
.L_10:                      #        0x20  0      OPC=<label>         
  leal (%rax,%rcx,4), %r8d  #  28    0x20  4      OPC=leal_r32_m32    
  movl %esi, (%r15,%r8,1)   #  29    0x24  4      OPC=movl_m32_r32    
  addq $0x1, %rcx           #  30    0x28  4      OPC=addq_r64_imm8   
  cmpq %rdx, %rcx           #  31    0x2c  3      OPC=cmpq_r64_r64    
  jne .L_10                 #  32    0x2f  2      OPC=jne_label       
  nop                       #  33    0x31  1      OPC=nop             
  nop                       #  34    0x32  1      OPC=nop             
  nop                       #  35    0x33  1      OPC=nop             
  nop                       #  36    0x34  1      OPC=nop             
  nop                       #  37    0x35  1      OPC=nop             
  nop                       #  38    0x36  1      OPC=nop             
  nop                       #  39    0x37  1      OPC=nop             
  nop                       #  40    0x38  1      OPC=nop             
  nop                       #  41    0x39  1      OPC=nop             
  nop                       #  42    0x3a  1      OPC=nop             
  nop                       #  43    0x3b  1      OPC=nop             
  nop                       #  44    0x3c  1      OPC=nop             
  nop                       #  45    0x3d  1      OPC=nop             
  nop                       #  46    0x3e  1      OPC=nop             
  nop                       #  47    0x3f  1      OPC=nop             
.L_1c:                      #        0x40  0      OPC=<label>         
  popq %r11                 #  48    0x40  2      OPC=popq_r64_1      
  andl $0xe0, %r11d         #  49    0x42  4      OPC=andl_r32_imm8   
  addq %r15, %r11           #  50    0x46  3      OPC=addq_r64_r64    
  jmpq %r11                 #  51    0x49  3      OPC=jmpq_r64        
                                                                      
.size wmemset, .-wmemset
