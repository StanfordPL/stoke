  .text
  .globl __newlib_thread_init
  .type __newlib_thread_init, @function

#! file-offset 0x15df00
#! rip-offset  0x11df00
#! capacity    96 bytes

# Text                            #  Line  RIP       Bytes  Opcode    
.__newlib_thread_init:            #        0x11df00  0      OPC=0     
  pushq %rbx                      #  1     0x11df00  1      OPC=1861  
  nop                             #  2     0x11df01  1      OPC=1343  
  nop                             #  3     0x11df02  1      OPC=1343  
  nop                             #  4     0x11df03  1      OPC=1343  
  nop                             #  5     0x11df04  1      OPC=1343  
  nop                             #  6     0x11df05  1      OPC=1343  
  nop                             #  7     0x11df06  1      OPC=1343  
  nop                             #  8     0x11df07  1      OPC=1343  
  nop                             #  9     0x11df08  1      OPC=1343  
  nop                             #  10    0x11df09  1      OPC=1343  
  nop                             #  11    0x11df0a  1      OPC=1343  
  nop                             #  12    0x11df0b  1      OPC=1343  
  nop                             #  13    0x11df0c  1      OPC=1343  
  nop                             #  14    0x11df0d  1      OPC=1343  
  nop                             #  15    0x11df0e  1      OPC=1343  
  nop                             #  16    0x11df0f  1      OPC=1343  
  nop                             #  17    0x11df10  1      OPC=1343  
  nop                             #  18    0x11df11  1      OPC=1343  
  nop                             #  19    0x11df12  1      OPC=1343  
  nop                             #  20    0x11df13  1      OPC=1343  
  nop                             #  21    0x11df14  1      OPC=1343  
  nop                             #  22    0x11df15  1      OPC=1343  
  nop                             #  23    0x11df16  1      OPC=1343  
  nop                             #  24    0x11df17  1      OPC=1343  
  nop                             #  25    0x11df18  1      OPC=1343  
  nop                             #  26    0x11df19  1      OPC=1343  
  nop                             #  27    0x11df1a  1      OPC=1343  
  callq .__nacl_read_tp           #  28    0x11df1b  5      OPC=260   
  movq %rax, %rbx                 #  29    0x11df20  3      OPC=1162  
  nop                             #  30    0x11df23  1      OPC=1343  
  nop                             #  31    0x11df24  1      OPC=1343  
  nop                             #  32    0x11df25  1      OPC=1343  
  nop                             #  33    0x11df26  1      OPC=1343  
  nop                             #  34    0x11df27  1      OPC=1343  
  nop                             #  35    0x11df28  1      OPC=1343  
  nop                             #  36    0x11df29  1      OPC=1343  
  nop                             #  37    0x11df2a  1      OPC=1343  
  nop                             #  38    0x11df2b  1      OPC=1343  
  nop                             #  39    0x11df2c  1      OPC=1343  
  nop                             #  40    0x11df2d  1      OPC=1343  
  nop                             #  41    0x11df2e  1      OPC=1343  
  nop                             #  42    0x11df2f  1      OPC=1343  
  nop                             #  43    0x11df30  1      OPC=1343  
  nop                             #  44    0x11df31  1      OPC=1343  
  nop                             #  45    0x11df32  1      OPC=1343  
  nop                             #  46    0x11df33  1      OPC=1343  
  nop                             #  47    0x11df34  1      OPC=1343  
  nop                             #  48    0x11df35  1      OPC=1343  
  nop                             #  49    0x11df36  1      OPC=1343  
  nop                             #  50    0x11df37  1      OPC=1343  
  nop                             #  51    0x11df38  1      OPC=1343  
  nop                             #  52    0x11df39  1      OPC=1343  
  nop                             #  53    0x11df3a  1      OPC=1343  
  callq .__nacl_read_tp           #  54    0x11df3b  5      OPC=260   
  addq $0xfffffb88, %rax          #  55    0x11df40  6      OPC=80    
  movl %ebx, %ebx                 #  56    0x11df46  2      OPC=1157  
  movl %eax, -0x480(%r15,%rbx,1)  #  57    0x11df48  8      OPC=1136  
  popq %rbx                       #  58    0x11df50  1      OPC=1694  
  popq %r11                       #  59    0x11df51  2      OPC=1694  
  andl $0xffffffe0, %r11d         #  60    0x11df53  7      OPC=131   
  nop                             #  61    0x11df5a  1      OPC=1343  
  nop                             #  62    0x11df5b  1      OPC=1343  
  nop                             #  63    0x11df5c  1      OPC=1343  
  nop                             #  64    0x11df5d  1      OPC=1343  
  addq %r15, %r11                 #  65    0x11df5e  3      OPC=72    
  jmpq %r11                       #  66    0x11df61  3      OPC=928   
  nop                             #  67    0x11df64  1      OPC=1343  
  nop                             #  68    0x11df65  1      OPC=1343  
  nop                             #  69    0x11df66  1      OPC=1343  
                                                                      
.size __newlib_thread_init, .-__newlib_thread_init

