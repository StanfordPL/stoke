  .text
  .globl __cxa_free_dependent_exception
  .type __cxa_free_dependent_exception, @function

#! file-offset 0x1233c0
#! rip-offset  0xe33c0
#! capacity    128 bytes

# Text                            #  Line  RIP      Bytes  Opcode                
.__cxa_free_dependent_exception:  #        0xe33c0  0      OPC=<label>           
  movl %edi, %edi                 #  1     0xe33c0  2      OPC=movl_r32_r32      
  movl $0x10073680, %edx          #  2     0xe33c2  5      OPC=movl_r32_imm32    
  cmpl %edi, %edx                 #  3     0xe33c7  2      OPC=cmpl_r32_r32      
  ja .L_e33e0                     #  4     0xe33c9  2      OPC=ja_label          
  leal 0xa00(%rdx), %eax          #  5     0xe33cb  6      OPC=leal_r32_m16      
  cmpl %edi, %eax                 #  6     0xe33d1  2      OPC=cmpl_r32_r32      
  ja .L_e3400                     #  7     0xe33d3  2      OPC=ja_label          
  nop                             #  8     0xe33d5  1      OPC=nop               
  nop                             #  9     0xe33d6  1      OPC=nop               
  nop                             #  10    0xe33d7  1      OPC=nop               
  nop                             #  11    0xe33d8  1      OPC=nop               
  nop                             #  12    0xe33d9  1      OPC=nop               
  nop                             #  13    0xe33da  1      OPC=nop               
  nop                             #  14    0xe33db  1      OPC=nop               
  nop                             #  15    0xe33dc  1      OPC=nop               
  nop                             #  16    0xe33dd  1      OPC=nop               
  nop                             #  17    0xe33de  1      OPC=nop               
  nop                             #  18    0xe33df  1      OPC=nop               
.L_e33e0:                         #        0xe33e0  0      OPC=<label>           
  jmpq .free                      #  19    0xe33e0  5      OPC=jmpq_label_1      
  nop                             #  20    0xe33e5  1      OPC=nop               
  nop                             #  21    0xe33e6  1      OPC=nop               
  nop                             #  22    0xe33e7  1      OPC=nop               
  nop                             #  23    0xe33e8  1      OPC=nop               
  nop                             #  24    0xe33e9  1      OPC=nop               
  nop                             #  25    0xe33ea  1      OPC=nop               
  nop                             #  26    0xe33eb  1      OPC=nop               
  nop                             #  27    0xe33ec  1      OPC=nop               
  nop                             #  28    0xe33ed  1      OPC=nop               
  nop                             #  29    0xe33ee  1      OPC=nop               
  nop                             #  30    0xe33ef  1      OPC=nop               
  nop                             #  31    0xe33f0  1      OPC=nop               
  nop                             #  32    0xe33f1  1      OPC=nop               
  nop                             #  33    0xe33f2  1      OPC=nop               
  nop                             #  34    0xe33f3  1      OPC=nop               
  nop                             #  35    0xe33f4  1      OPC=nop               
  nop                             #  36    0xe33f5  1      OPC=nop               
  nop                             #  37    0xe33f6  1      OPC=nop               
  nop                             #  38    0xe33f7  1      OPC=nop               
  nop                             #  39    0xe33f8  1      OPC=nop               
  nop                             #  40    0xe33f9  1      OPC=nop               
  nop                             #  41    0xe33fa  1      OPC=nop               
  nop                             #  42    0xe33fb  1      OPC=nop               
  nop                             #  43    0xe33fc  1      OPC=nop               
  nop                             #  44    0xe33fd  1      OPC=nop               
  nop                             #  45    0xe33fe  1      OPC=nop               
  nop                             #  46    0xe33ff  1      OPC=nop               
.L_e3400:                         #        0xe3400  0      OPC=<label>           
  subl %edx, %edi                 #  47    0xe3400  2      OPC=subl_r32_r32      
  movl $0xcccccccd, %ecx          #  48    0xe3402  6      OPC=movl_r32_imm32_1  
  movl $0xfffffffe, %esi          #  49    0xe3408  6      OPC=movl_r32_imm32_1  
  movl %edi, %eax                 #  50    0xe340e  2      OPC=movl_r32_r32      
  mull %ecx                       #  51    0xe3410  2      OPC=mull_r32          
  popq %r11                       #  52    0xe3412  2      OPC=popq_r64_1        
  shrl $0x6, %edx                 #  53    0xe3414  3      OPC=shrl_r32_imm8     
  movl %edx, %ecx                 #  54    0xe3417  2      OPC=movl_r32_r32      
  roll %cl, %esi                  #  55    0xe3419  2      OPC=roll_r32_cl       
  andl %esi, 0xff90c61(%rip)      #  56    0xe341b  6      OPC=andl_m32_r32      
  nop                             #  57    0xe3421  1      OPC=nop               
  andl $0xffffffe0, %r11d         #  58    0xe3422  7      OPC=andl_r32_imm32    
  nop                             #  59    0xe3429  1      OPC=nop               
  nop                             #  60    0xe342a  1      OPC=nop               
  nop                             #  61    0xe342b  1      OPC=nop               
  nop                             #  62    0xe342c  1      OPC=nop               
  addq %r15, %r11                 #  63    0xe342d  3      OPC=addq_r64_r64      
  jmpq %r11                       #  64    0xe3430  3      OPC=jmpq_r64          
  nop                             #  65    0xe3433  1      OPC=nop               
  nop                             #  66    0xe3434  1      OPC=nop               
  nop                             #  67    0xe3435  1      OPC=nop               
  nop                             #  68    0xe3436  1      OPC=nop               
  nop                             #  69    0xe3437  1      OPC=nop               
  nop                             #  70    0xe3438  1      OPC=nop               
  nop                             #  71    0xe3439  1      OPC=nop               
  nop                             #  72    0xe343a  1      OPC=nop               
  nop                             #  73    0xe343b  1      OPC=nop               
  nop                             #  74    0xe343c  1      OPC=nop               
  nop                             #  75    0xe343d  1      OPC=nop               
  nop                             #  76    0xe343e  1      OPC=nop               
  nop                             #  77    0xe343f  1      OPC=nop               
  nop                             #  78    0xe3440  1      OPC=nop               
  nop                             #  79    0xe3441  1      OPC=nop               
  nop                             #  80    0xe3442  1      OPC=nop               
  nop                             #  81    0xe3443  1      OPC=nop               
  nop                             #  82    0xe3444  1      OPC=nop               
  nop                             #  83    0xe3445  1      OPC=nop               
  nop                             #  84    0xe3446  1      OPC=nop               
  nop                             #  85    0xe3447  1      OPC=nop               
  nop                             #  86    0xe3448  1      OPC=nop               
                                                                                 
.size __cxa_free_dependent_exception, .-__cxa_free_dependent_exception

