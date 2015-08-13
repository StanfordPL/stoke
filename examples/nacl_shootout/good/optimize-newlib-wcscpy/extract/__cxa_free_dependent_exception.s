  .text
  .globl __cxa_free_dependent_exception
  .type __cxa_free_dependent_exception, @function

#! file-offset 0x1229a0
#! rip-offset  0xe29a0
#! capacity    128 bytes

# Text                            #  Line  RIP      Bytes  Opcode                
.__cxa_free_dependent_exception:  #        0xe29a0  0      OPC=<label>           
  movl %edi, %edi                 #  1     0xe29a0  2      OPC=movl_r32_r32      
  movl $0x10073680, %edx          #  2     0xe29a2  5      OPC=movl_r32_imm32    
  cmpl %edi, %edx                 #  3     0xe29a7  2      OPC=cmpl_r32_r32      
  ja .L_e29c0                     #  4     0xe29a9  2      OPC=ja_label          
  leal 0xa00(%rdx), %eax          #  5     0xe29ab  6      OPC=leal_r32_m16      
  cmpl %edi, %eax                 #  6     0xe29b1  2      OPC=cmpl_r32_r32      
  ja .L_e29e0                     #  7     0xe29b3  2      OPC=ja_label          
  nop                             #  8     0xe29b5  1      OPC=nop               
  nop                             #  9     0xe29b6  1      OPC=nop               
  nop                             #  10    0xe29b7  1      OPC=nop               
  nop                             #  11    0xe29b8  1      OPC=nop               
  nop                             #  12    0xe29b9  1      OPC=nop               
  nop                             #  13    0xe29ba  1      OPC=nop               
  nop                             #  14    0xe29bb  1      OPC=nop               
  nop                             #  15    0xe29bc  1      OPC=nop               
  nop                             #  16    0xe29bd  1      OPC=nop               
  nop                             #  17    0xe29be  1      OPC=nop               
  nop                             #  18    0xe29bf  1      OPC=nop               
.L_e29c0:                         #        0xe29c0  0      OPC=<label>           
  jmpq .free                      #  19    0xe29c0  5      OPC=jmpq_label_1      
  nop                             #  20    0xe29c5  1      OPC=nop               
  nop                             #  21    0xe29c6  1      OPC=nop               
  nop                             #  22    0xe29c7  1      OPC=nop               
  nop                             #  23    0xe29c8  1      OPC=nop               
  nop                             #  24    0xe29c9  1      OPC=nop               
  nop                             #  25    0xe29ca  1      OPC=nop               
  nop                             #  26    0xe29cb  1      OPC=nop               
  nop                             #  27    0xe29cc  1      OPC=nop               
  nop                             #  28    0xe29cd  1      OPC=nop               
  nop                             #  29    0xe29ce  1      OPC=nop               
  nop                             #  30    0xe29cf  1      OPC=nop               
  nop                             #  31    0xe29d0  1      OPC=nop               
  nop                             #  32    0xe29d1  1      OPC=nop               
  nop                             #  33    0xe29d2  1      OPC=nop               
  nop                             #  34    0xe29d3  1      OPC=nop               
  nop                             #  35    0xe29d4  1      OPC=nop               
  nop                             #  36    0xe29d5  1      OPC=nop               
  nop                             #  37    0xe29d6  1      OPC=nop               
  nop                             #  38    0xe29d7  1      OPC=nop               
  nop                             #  39    0xe29d8  1      OPC=nop               
  nop                             #  40    0xe29d9  1      OPC=nop               
  nop                             #  41    0xe29da  1      OPC=nop               
  nop                             #  42    0xe29db  1      OPC=nop               
  nop                             #  43    0xe29dc  1      OPC=nop               
  nop                             #  44    0xe29dd  1      OPC=nop               
  nop                             #  45    0xe29de  1      OPC=nop               
  nop                             #  46    0xe29df  1      OPC=nop               
.L_e29e0:                         #        0xe29e0  0      OPC=<label>           
  subl %edx, %edi                 #  47    0xe29e0  2      OPC=subl_r32_r32      
  movl $0xcccccccd, %ecx          #  48    0xe29e2  6      OPC=movl_r32_imm32_1  
  movl $0xfffffffe, %esi          #  49    0xe29e8  6      OPC=movl_r32_imm32_1  
  movl %edi, %eax                 #  50    0xe29ee  2      OPC=movl_r32_r32      
  mull %ecx                       #  51    0xe29f0  2      OPC=mull_r32          
  popq %r11                       #  52    0xe29f2  2      OPC=popq_r64_1        
  shrl $0x6, %edx                 #  53    0xe29f4  3      OPC=shrl_r32_imm8     
  movl %edx, %ecx                 #  54    0xe29f7  2      OPC=movl_r32_r32      
  roll %cl, %esi                  #  55    0xe29f9  2      OPC=roll_r32_cl       
  andl %esi, 0xff91681(%rip)      #  56    0xe29fb  6      OPC=andl_m32_r32      
  nop                             #  57    0xe2a01  1      OPC=nop               
  andl $0xffffffe0, %r11d         #  58    0xe2a02  7      OPC=andl_r32_imm32    
  nop                             #  59    0xe2a09  1      OPC=nop               
  nop                             #  60    0xe2a0a  1      OPC=nop               
  nop                             #  61    0xe2a0b  1      OPC=nop               
  nop                             #  62    0xe2a0c  1      OPC=nop               
  addq %r15, %r11                 #  63    0xe2a0d  3      OPC=addq_r64_r64      
  jmpq %r11                       #  64    0xe2a10  3      OPC=jmpq_r64          
  nop                             #  65    0xe2a13  1      OPC=nop               
  nop                             #  66    0xe2a14  1      OPC=nop               
  nop                             #  67    0xe2a15  1      OPC=nop               
  nop                             #  68    0xe2a16  1      OPC=nop               
  nop                             #  69    0xe2a17  1      OPC=nop               
  nop                             #  70    0xe2a18  1      OPC=nop               
  nop                             #  71    0xe2a19  1      OPC=nop               
  nop                             #  72    0xe2a1a  1      OPC=nop               
  nop                             #  73    0xe2a1b  1      OPC=nop               
  nop                             #  74    0xe2a1c  1      OPC=nop               
  nop                             #  75    0xe2a1d  1      OPC=nop               
  nop                             #  76    0xe2a1e  1      OPC=nop               
  nop                             #  77    0xe2a1f  1      OPC=nop               
  nop                             #  78    0xe2a20  1      OPC=nop               
  nop                             #  79    0xe2a21  1      OPC=nop               
  nop                             #  80    0xe2a22  1      OPC=nop               
  nop                             #  81    0xe2a23  1      OPC=nop               
  nop                             #  82    0xe2a24  1      OPC=nop               
  nop                             #  83    0xe2a25  1      OPC=nop               
  nop                             #  84    0xe2a26  1      OPC=nop               
  nop                             #  85    0xe2a27  1      OPC=nop               
  nop                             #  86    0xe2a28  1      OPC=nop               
                                                                                 
.size __cxa_free_dependent_exception, .-__cxa_free_dependent_exception

