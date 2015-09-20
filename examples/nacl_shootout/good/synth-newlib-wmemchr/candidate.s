  .text
  .globl wmemchr
  .type wmemchr, @function

#! file-offset 0x40
#! rip-offset  0
#! capacity    44 bytes

# Text                     #  Line  RIP   Bytes  Opcode             
.wmemchr:                  #        0     0      OPC=<label>        
  xorl %eax, %eax          #  1     0     2      OPC=xorl_r32_r32   
  testq %rdx, %rdx         #  2     0x2   3      OPC=testq_r64_r64  
  je .L_21                 #  3     0x5   2      OPC=je_label       
  jne .L_10                #  4     0x7   2      OPC=jne_label      
  nop                      #  5     0x9   1      OPC=nop            
  nop                      #  6     0xa   1      OPC=nop            
  nop                      #  7     0xb   1      OPC=nop            
  nop                      #  8     0xc   1      OPC=nop            
  nop                      #  9     0xd   1      OPC=nop            
  nop                      #  10    0xe   1      OPC=nop            
  nop                      #  11    0xf   1      OPC=nop            
  nop                      #  12    0x10  1      OPC=nop            
  nop                      #  13    0x11  1      OPC=nop            
  nop                      #  14    0x12  1      OPC=nop            
  nop                      #  15    0x13  1      OPC=nop            
  nop                      #  16    0x14  1      OPC=nop            
  nop                      #  17    0x15  1      OPC=nop            
  nop                      #  18    0x16  1      OPC=nop            
  nop                      #  19    0x17  1      OPC=nop            
  nop                      #  20    0x18  1      OPC=nop            
  nop                      #  21    0x19  1      OPC=nop            
  nop                      #  22    0x1a  1      OPC=nop            
  nop                      #  23    0x1b  1      OPC=nop            
  nop                      #  24    0x1c  1      OPC=nop            
  jmpq .L_10               #  25    0x1d  2      OPC=jmpq_label     
  nop                      #  26    0x1f  1      OPC=nop            
.L_10:                     #        0x20  0      OPC=<label>        
  leal (%rdi), %r8d        #  27    0x20  3      OPC=leal_r32_m16   
  cmpl %esi, (%r15,%r8,1)  #  28    0x23  4      OPC=cmpl_m32_r32   
  je .L_28                 #  29    0x27  2      OPC=je_label       
.wmemchr:                  #        0x29  0      OPC=<label>        
  addq $0x4, %rdi          #  30    0x29  4      OPC=addq_r64_imm8  
  decq %rdx                #  31    0x2d  3      OPC=decq_r64       
  jne .L_10                #  32    0x30  2      OPC=jne_label      
  nop                      #  33    0x32  1      OPC=nop            
  nop                      #  34    0x33  1      OPC=nop            
  nop                      #  35    0x34  1      OPC=nop            
  nop                      #  36    0x35  1      OPC=nop            
  nop                      #  37    0x36  1      OPC=nop            
  nop                      #  38    0x37  1      OPC=nop            
  nop                      #  39    0x38  1      OPC=nop            
  nop                      #  40    0x39  1      OPC=nop            
  nop                      #  41    0x3a  1      OPC=nop            
  nop                      #  42    0x3b  1      OPC=nop            
  nop                      #  43    0x3c  1      OPC=nop            
  nop                      #  44    0x3d  1      OPC=nop            
  nop                      #  45    0x3e  1      OPC=nop            
  nop                      #  46    0x3f  1      OPC=nop            
.L_21:                     #        0x40  0      OPC=<label>        
  nop                      #  47    0x40  1      OPC=nop            
  nop                      #  48    0x41  1      OPC=nop            
  nop                      #  49    0x42  1      OPC=nop            
  nop                      #  50    0x43  1      OPC=nop            
  nop                      #  51    0x44  1      OPC=nop            
  nop                      #  52    0x45  1      OPC=nop            
  nop                      #  53    0x46  1      OPC=nop            
  nop                      #  54    0x47  1      OPC=nop            
  nop                      #  55    0x48  1      OPC=nop            
  nop                      #  56    0x49  1      OPC=nop            
  nop                      #  57    0x4a  1      OPC=nop            
  retq
  nop                      #  62    0x57  1      OPC=nop            
  nop                      #  63    0x58  1      OPC=nop            
  nop                      #  64    0x59  1      OPC=nop            
  nop                      #  65    0x5a  1      OPC=nop            
  nop                      #  66    0x5b  1      OPC=nop            
  nop                      #  67    0x5c  1      OPC=nop            
  nop                      #  68    0x5d  1      OPC=nop            
  nop                      #  69    0x5e  1      OPC=nop            
  nop                      #  70    0x5f  1      OPC=nop            
.L_28:                     #        0x60  0      OPC=<label>        
  nop                      #  71    0x60  1      OPC=nop            
  nop                      #  72    0x61  1      OPC=nop            
  nop                      #  73    0x62  1      OPC=nop            
  orq %rdi, %rax           #  74    0x63  3      OPC=orq_r64_r64    
  nop                      #  75    0x66  1      OPC=nop            
  nop                      #  76    0x67  1      OPC=nop            
  nop                      #  77    0x68  1      OPC=nop            
  nop                      #  78    0x69  1      OPC=nop            
  nop                      #  79    0x6a  1      OPC=nop            
  nop                      #  80    0x6b  1      OPC=nop            
  retq
                                                                    
.size wmemchr, .-wmemchr
