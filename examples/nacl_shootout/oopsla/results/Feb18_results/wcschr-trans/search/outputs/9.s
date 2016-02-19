  .text
  .globl wcschr
  .type wcschr, @function

#! file-offset 0x40
#! rip-offset  0
#! capacity    28 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.wcschr:                   #        0     0      OPC=<label>         
  nop                      #  1     0     1      OPC=nop             
  nop                      #  2     0x1   1      OPC=nop             
  nop                      #  3     0x2   1      OPC=nop             
  nop                      #  4     0x3   1      OPC=nop             
  nop                      #  5     0x4   1      OPC=nop             
  nop                      #  6     0x5   1      OPC=nop             
  nop                      #  7     0x6   1      OPC=nop             
.L_0:                      #        0x7   0      OPC=<label>         
  leal (%rdi), %r8d        #  8     0x7   3      OPC=leal_r32_m16    
  movl (%r15,%r8,1), %eax  #  9     0xa   4      OPC=movl_r32_m32    
  cmpl %esi, %eax          #  10    0xe   2      OPC=cmpl_r32_r32    
  je .L_18                 #  11    0x10  2      OPC=je_label        
  nop                      #  12    0x12  1      OPC=nop             
  nop                      #  13    0x13  1      OPC=nop             
  nop                      #  14    0x14  1      OPC=nop             
  nop                      #  15    0x15  1      OPC=nop             
  nop                      #  16    0x16  1      OPC=nop             
  addq $0x4, %rdi          #  17    0x17  7      OPC=addq_r64_imm32  
  testl %eax, %eax         #  18    0x1e  2      OPC=testl_r32_r32   
  jne .L_0                 #  19    0x20  2      OPC=jne_label       
  nop                      #  20    0x22  1      OPC=nop             
  nop                      #  21    0x23  1      OPC=nop             
  nop                      #  22    0x24  1      OPC=nop             
  nop                      #  23    0x25  1      OPC=nop             
  nop                      #  24    0x26  1      OPC=nop             
  nop                      #  25    0x27  1      OPC=nop             
  nop                      #  26    0x28  1      OPC=nop             
  nop                      #  27    0x29  1      OPC=nop             
  nop                      #  28    0x2a  1      OPC=nop             
  nop                      #  29    0x2b  1      OPC=nop             
  nop                      #  30    0x2c  1      OPC=nop             
  retq                     #  31    0x2d  1      OPC=retq            
.L_18:                     #        0x2e  0      OPC=<label>         
  nop                      #  32    0x2e  1      OPC=nop             
  nop                      #  33    0x2f  1      OPC=nop             
  nop                      #  34    0x30  1      OPC=nop             
  nop                      #  35    0x31  1      OPC=nop             
  nop                      #  36    0x32  1      OPC=nop             
  nop                      #  37    0x33  1      OPC=nop             
  nop                      #  38    0x34  1      OPC=nop             
  nop                      #  39    0x35  1      OPC=nop             
  nop                      #  40    0x36  1      OPC=nop             
  nop                      #  41    0x37  1      OPC=nop             
  movl %edi, %eax          #  42    0x38  2      OPC=movl_r32_r32_1  
  nop                      #  43    0x3a  1      OPC=nop             
  nop                      #  44    0x3b  1      OPC=nop             
  retq                     #  45    0x3c  1      OPC=retq            
                                                                     
.size wcschr, .-wcschr
