  .text
  .globl __fp_unlock_all
  .type __fp_unlock_all, @function

#! file-offset 0x159de0
#! rip-offset  0x119de0
#! capacity    96 bytes

# Text                      #  Line  RIP       Bytes  Opcode    
.__fp_unlock_all:           #        0x119de0  0      OPC=0     
  subl $0x8, %esp           #  1     0x119de0  3      OPC=2384  
  addq %r15, %rsp           #  2     0x119de3  3      OPC=72    
  nop                       #  3     0x119de6  1      OPC=1343  
  nop                       #  4     0x119de7  1      OPC=1343  
  nop                       #  5     0x119de8  1      OPC=1343  
  nop                       #  6     0x119de9  1      OPC=1343  
  nop                       #  7     0x119dea  1      OPC=1343  
  nop                       #  8     0x119deb  1      OPC=1343  
  nop                       #  9     0x119dec  1      OPC=1343  
  nop                       #  10    0x119ded  1      OPC=1343  
  nop                       #  11    0x119dee  1      OPC=1343  
  nop                       #  12    0x119def  1      OPC=1343  
  nop                       #  13    0x119df0  1      OPC=1343  
  nop                       #  14    0x119df1  1      OPC=1343  
  nop                       #  15    0x119df2  1      OPC=1343  
  nop                       #  16    0x119df3  1      OPC=1343  
  nop                       #  17    0x119df4  1      OPC=1343  
  nop                       #  18    0x119df5  1      OPC=1343  
  nop                       #  19    0x119df6  1      OPC=1343  
  nop                       #  20    0x119df7  1      OPC=1343  
  nop                       #  21    0x119df8  1      OPC=1343  
  nop                       #  22    0x119df9  1      OPC=1343  
  nop                       #  23    0x119dfa  1      OPC=1343  
  callq .__nacl_read_tp     #  24    0x119dfb  5      OPC=260   
  leaq -0x480(%rax), %rax   #  25    0x119e00  7      OPC=1069  
  movl $0x119d60, %esi      #  26    0x119e07  5      OPC=1154  
  movl %eax, %eax           #  27    0x119e0c  2      OPC=1157  
  movl (%r15,%rax,1), %edi  #  28    0x119e0e  4      OPC=1156  
  nop                       #  29    0x119e12  1      OPC=1343  
  nop                       #  30    0x119e13  1      OPC=1343  
  nop                       #  31    0x119e14  1      OPC=1343  
  nop                       #  32    0x119e15  1      OPC=1343  
  nop                       #  33    0x119e16  1      OPC=1343  
  nop                       #  34    0x119e17  1      OPC=1343  
  nop                       #  35    0x119e18  1      OPC=1343  
  nop                       #  36    0x119e19  1      OPC=1343  
  nop                       #  37    0x119e1a  1      OPC=1343  
  callq ._fwalk             #  38    0x119e1b  5      OPC=260   
  addl $0x8, %esp           #  39    0x119e20  3      OPC=65    
  addq %r15, %rsp           #  40    0x119e23  3      OPC=72    
  jmpq .__sfp_lock_release  #  41    0x119e26  5      OPC=930   
  nop                       #  42    0x119e2b  1      OPC=1343  
  nop                       #  43    0x119e2c  1      OPC=1343  
  nop                       #  44    0x119e2d  1      OPC=1343  
  nop                       #  45    0x119e2e  1      OPC=1343  
  nop                       #  46    0x119e2f  1      OPC=1343  
  nop                       #  47    0x119e30  1      OPC=1343  
  nop                       #  48    0x119e31  1      OPC=1343  
  nop                       #  49    0x119e32  1      OPC=1343  
  nop                       #  50    0x119e33  1      OPC=1343  
  nop                       #  51    0x119e34  1      OPC=1343  
  nop                       #  52    0x119e35  1      OPC=1343  
  nop                       #  53    0x119e36  1      OPC=1343  
  nop                       #  54    0x119e37  1      OPC=1343  
  nop                       #  55    0x119e38  1      OPC=1343  
  nop                       #  56    0x119e39  1      OPC=1343  
  nop                       #  57    0x119e3a  1      OPC=1343  
  nop                       #  58    0x119e3b  1      OPC=1343  
  nop                       #  59    0x119e3c  1      OPC=1343  
  nop                       #  60    0x119e3d  1      OPC=1343  
  nop                       #  61    0x119e3e  1      OPC=1343  
  nop                       #  62    0x119e3f  1      OPC=1343  
                                                                
.size __fp_unlock_all, .-__fp_unlock_all

