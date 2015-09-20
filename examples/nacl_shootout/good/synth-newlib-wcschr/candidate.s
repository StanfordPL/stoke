  .text
  .globl wcschr
  .type wcschr, @function

#! file-offset 0x40
#! rip-offset  0
#! capacity    28 bytes

# Text                     #  Line  RIP   Bytes  Opcode             
.wcschr:                   #        0     0      OPC=<label>        
.L_1412c0:                 #        0     0      OPC=<label>        
  leal (%rdi), %r8d        #  1     0     3      OPC=leal_r32_m64   
  movl (%r15,%r8,1), %eax  #  2     0x3   4      OPC=movl_r32_m32   
  cmpl %esi, %eax          #  3     0x7   2      OPC=cmpl_r32_r32   
  je .L_18                 #  4     0x9   2      OPC=je_label       
  addq $0x4, %rdi          #  5     0xb   4      OPC=addq_r64_imm8  
  testl %eax, %eax         #  6     0xf   2      OPC=testl_r32_r32  
  jne .L_1412c0            #  7     0x11  2      OPC=jne_label      
  nop                      #  8     0x13  1      OPC=nop            
  nop                      #  9     0x14  1      OPC=nop            
  nop                      #  10    0x15  1      OPC=nop            
  nop                      #  11    0x16  1      OPC=nop            
  nop                      #  12    0x17  1      OPC=nop            
  nop                      #  13    0x18  1      OPC=nop            
  nop                      #  14    0x19  1      OPC=nop            
  nop                      #  15    0x1a  1      OPC=nop            
  nop                      #  16    0x1b  1      OPC=nop            
  nop                      #  17    0x1c  1      OPC=nop            
  nop                      #  18    0x1d  1      OPC=nop            
  nop                      #  19    0x1e  1      OPC=nop            
  nop                      #  20    0x1f  1      OPC=nop            
  retq
  nop                      #  25    0x2c  1      OPC=nop            
  nop                      #  26    0x2d  1      OPC=nop            
  nop                      #  27    0x2e  1      OPC=nop            
  nop                      #  28    0x2f  1      OPC=nop            
  nop                      #  29    0x30  1      OPC=nop            
  nop                      #  30    0x31  1      OPC=nop            
  nop                      #  31    0x32  1      OPC=nop            
  nop                      #  32    0x33  1      OPC=nop            
  nop                      #  33    0x34  1      OPC=nop            
  nop                      #  34    0x35  1      OPC=nop            
  nop                      #  35    0x36  1      OPC=nop            
  nop                      #  36    0x37  1      OPC=nop            
  nop                      #  37    0x38  1      OPC=nop            
  nop                      #  38    0x39  1      OPC=nop            
  nop                      #  39    0x3a  1      OPC=nop            
  nop                      #  40    0x3b  1      OPC=nop            
  nop                      #  41    0x3c  1      OPC=nop            
  nop                      #  42    0x3d  1      OPC=nop            
  nop                      #  43    0x3e  1      OPC=nop            
  nop                      #  44    0x3f  1      OPC=nop            
.L_18:                     #        0x40  0      OPC=<label>        
  nop                      #  45    0x40  1      OPC=nop            
  nop                      #  46    0x41  1      OPC=nop            
  nop                      #  47    0x42  1      OPC=nop            
  nop                      #  48    0x43  1      OPC=nop            
  nop                      #  49    0x44  1      OPC=nop            
  nop                      #  50    0x45  1      OPC=nop            
  nop                      #  51    0x46  1      OPC=nop            
  nop                      #  52    0x47  1      OPC=nop            
  movq %r8, %rax           #  53    0x48  3      OPC=movq_r64_r64   
  nop                      #  54    0x4b  1      OPC=nop            
  nop                      #  55    0x4c  1      OPC=nop            
  nop                      #  56    0x4d  1      OPC=nop            
  nop                      #  57    0x4e  1      OPC=nop            
  nop                      #  58    0x4f  1      OPC=nop            
  retq
                                                                    
.size wcschr, .-wcschr
