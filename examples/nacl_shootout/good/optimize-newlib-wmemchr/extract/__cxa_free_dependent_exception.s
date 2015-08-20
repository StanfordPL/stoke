  .text
  .globl __cxa_free_dependent_exception
  .type __cxa_free_dependent_exception, @function

#! file-offset 0x122ca0
#! rip-offset  0xe2ca0
#! capacity    128 bytes

# Text                            #  Line  RIP      Bytes  Opcode                
.__cxa_free_dependent_exception:  #        0xe2ca0  0      OPC=<label>           
  movl %edi, %edi                 #  1     0xe2ca0  2      OPC=movl_r32_r32      
  movl $0x10073680, %edx          #  2     0xe2ca2  5      OPC=movl_r32_imm32    
  cmpl %edi, %edx                 #  3     0xe2ca7  2      OPC=cmpl_r32_r32      
  ja .L_e2cc0                     #  4     0xe2ca9  2      OPC=ja_label          
  leal 0xa00(%rdx), %eax          #  5     0xe2cab  6      OPC=leal_r32_m16      
  cmpl %edi, %eax                 #  6     0xe2cb1  2      OPC=cmpl_r32_r32      
  ja .L_e2ce0                     #  7     0xe2cb3  2      OPC=ja_label          
  nop                             #  8     0xe2cb5  1      OPC=nop               
  nop                             #  9     0xe2cb6  1      OPC=nop               
  nop                             #  10    0xe2cb7  1      OPC=nop               
  nop                             #  11    0xe2cb8  1      OPC=nop               
  nop                             #  12    0xe2cb9  1      OPC=nop               
  nop                             #  13    0xe2cba  1      OPC=nop               
  nop                             #  14    0xe2cbb  1      OPC=nop               
  nop                             #  15    0xe2cbc  1      OPC=nop               
  nop                             #  16    0xe2cbd  1      OPC=nop               
  nop                             #  17    0xe2cbe  1      OPC=nop               
  nop                             #  18    0xe2cbf  1      OPC=nop               
.L_e2cc0:                         #        0xe2cc0  0      OPC=<label>           
  jmpq .free                      #  19    0xe2cc0  5      OPC=jmpq_label_1      
  nop                             #  20    0xe2cc5  1      OPC=nop               
  nop                             #  21    0xe2cc6  1      OPC=nop               
  nop                             #  22    0xe2cc7  1      OPC=nop               
  nop                             #  23    0xe2cc8  1      OPC=nop               
  nop                             #  24    0xe2cc9  1      OPC=nop               
  nop                             #  25    0xe2cca  1      OPC=nop               
  nop                             #  26    0xe2ccb  1      OPC=nop               
  nop                             #  27    0xe2ccc  1      OPC=nop               
  nop                             #  28    0xe2ccd  1      OPC=nop               
  nop                             #  29    0xe2cce  1      OPC=nop               
  nop                             #  30    0xe2ccf  1      OPC=nop               
  nop                             #  31    0xe2cd0  1      OPC=nop               
  nop                             #  32    0xe2cd1  1      OPC=nop               
  nop                             #  33    0xe2cd2  1      OPC=nop               
  nop                             #  34    0xe2cd3  1      OPC=nop               
  nop                             #  35    0xe2cd4  1      OPC=nop               
  nop                             #  36    0xe2cd5  1      OPC=nop               
  nop                             #  37    0xe2cd6  1      OPC=nop               
  nop                             #  38    0xe2cd7  1      OPC=nop               
  nop                             #  39    0xe2cd8  1      OPC=nop               
  nop                             #  40    0xe2cd9  1      OPC=nop               
  nop                             #  41    0xe2cda  1      OPC=nop               
  nop                             #  42    0xe2cdb  1      OPC=nop               
  nop                             #  43    0xe2cdc  1      OPC=nop               
  nop                             #  44    0xe2cdd  1      OPC=nop               
  nop                             #  45    0xe2cde  1      OPC=nop               
  nop                             #  46    0xe2cdf  1      OPC=nop               
.L_e2ce0:                         #        0xe2ce0  0      OPC=<label>           
  subl %edx, %edi                 #  47    0xe2ce0  2      OPC=subl_r32_r32      
  movl $0xcccccccd, %ecx          #  48    0xe2ce2  6      OPC=movl_r32_imm32_1  
  movl $0xfffffffe, %esi          #  49    0xe2ce8  6      OPC=movl_r32_imm32_1  
  movl %edi, %eax                 #  50    0xe2cee  2      OPC=movl_r32_r32      
  mull %ecx                       #  51    0xe2cf0  2      OPC=mull_r32          
  popq %r11                       #  52    0xe2cf2  2      OPC=popq_r64_1        
  shrl $0x6, %edx                 #  53    0xe2cf4  3      OPC=shrl_r32_imm8     
  movl %edx, %ecx                 #  54    0xe2cf7  2      OPC=movl_r32_r32      
  roll %cl, %esi                  #  55    0xe2cf9  2      OPC=roll_r32_cl       
  andl %esi, 0xff91381(%rip)      #  56    0xe2cfb  6      OPC=andl_m32_r32      
  nop                             #  57    0xe2d01  1      OPC=nop               
  andl $0xffffffe0, %r11d         #  58    0xe2d02  7      OPC=andl_r32_imm32    
  nop                             #  59    0xe2d09  1      OPC=nop               
  nop                             #  60    0xe2d0a  1      OPC=nop               
  nop                             #  61    0xe2d0b  1      OPC=nop               
  nop                             #  62    0xe2d0c  1      OPC=nop               
  addq %r15, %r11                 #  63    0xe2d0d  3      OPC=addq_r64_r64      
  jmpq %r11                       #  64    0xe2d10  3      OPC=jmpq_r64          
  nop                             #  65    0xe2d13  1      OPC=nop               
  nop                             #  66    0xe2d14  1      OPC=nop               
  nop                             #  67    0xe2d15  1      OPC=nop               
  nop                             #  68    0xe2d16  1      OPC=nop               
  nop                             #  69    0xe2d17  1      OPC=nop               
  nop                             #  70    0xe2d18  1      OPC=nop               
  nop                             #  71    0xe2d19  1      OPC=nop               
  nop                             #  72    0xe2d1a  1      OPC=nop               
  nop                             #  73    0xe2d1b  1      OPC=nop               
  nop                             #  74    0xe2d1c  1      OPC=nop               
  nop                             #  75    0xe2d1d  1      OPC=nop               
  nop                             #  76    0xe2d1e  1      OPC=nop               
  nop                             #  77    0xe2d1f  1      OPC=nop               
  nop                             #  78    0xe2d20  1      OPC=nop               
  nop                             #  79    0xe2d21  1      OPC=nop               
  nop                             #  80    0xe2d22  1      OPC=nop               
  nop                             #  81    0xe2d23  1      OPC=nop               
  nop                             #  82    0xe2d24  1      OPC=nop               
  nop                             #  83    0xe2d25  1      OPC=nop               
  nop                             #  84    0xe2d26  1      OPC=nop               
  nop                             #  85    0xe2d27  1      OPC=nop               
  nop                             #  86    0xe2d28  1      OPC=nop               
                                                                                 
.size __cxa_free_dependent_exception, .-__cxa_free_dependent_exception

