  .text
  .globl __cxa_free_exception
  .type __cxa_free_exception, @function

#! file-offset 0x123440
#! rip-offset  0xe3440
#! capacity    96 bytes

# Text                        #  Line  RIP      Bytes  Opcode                
.__cxa_free_exception:        #        0xe3440  0      OPC=<label>           
  movl %edi, %edi             #  1     0xe3440  2      OPC=movl_r32_r32      
  movl $0x100740a0, %ecx      #  2     0xe3442  5      OPC=movl_r32_imm32    
  cmpl %edi, %ecx             #  3     0xe3447  2      OPC=cmpl_r32_r32      
  ja .L_e3460                 #  4     0xe3449  2      OPC=ja_label          
  leal 0x4000(%rcx), %eax     #  5     0xe344b  6      OPC=leal_r32_m16      
  cmpl %edi, %eax             #  6     0xe3451  2      OPC=cmpl_r32_r32      
  ja .L_e3480                 #  7     0xe3453  2      OPC=ja_label          
  nop                         #  8     0xe3455  1      OPC=nop               
  nop                         #  9     0xe3456  1      OPC=nop               
  nop                         #  10    0xe3457  1      OPC=nop               
  nop                         #  11    0xe3458  1      OPC=nop               
  nop                         #  12    0xe3459  1      OPC=nop               
  nop                         #  13    0xe345a  1      OPC=nop               
  nop                         #  14    0xe345b  1      OPC=nop               
  nop                         #  15    0xe345c  1      OPC=nop               
  nop                         #  16    0xe345d  1      OPC=nop               
  nop                         #  17    0xe345e  1      OPC=nop               
  nop                         #  18    0xe345f  1      OPC=nop               
.L_e3460:                     #        0xe3460  0      OPC=<label>           
  subl $0x60, %edi            #  19    0xe3460  3      OPC=subl_r32_imm8     
  jmpq .free                  #  20    0xe3463  5      OPC=jmpq_label_1      
  nop                         #  21    0xe3468  1      OPC=nop               
  nop                         #  22    0xe3469  1      OPC=nop               
  nop                         #  23    0xe346a  1      OPC=nop               
  nop                         #  24    0xe346b  1      OPC=nop               
  nop                         #  25    0xe346c  1      OPC=nop               
  nop                         #  26    0xe346d  1      OPC=nop               
  nop                         #  27    0xe346e  1      OPC=nop               
  nop                         #  28    0xe346f  1      OPC=nop               
  nop                         #  29    0xe3470  1      OPC=nop               
  nop                         #  30    0xe3471  1      OPC=nop               
  nop                         #  31    0xe3472  1      OPC=nop               
  nop                         #  32    0xe3473  1      OPC=nop               
  nop                         #  33    0xe3474  1      OPC=nop               
  nop                         #  34    0xe3475  1      OPC=nop               
  nop                         #  35    0xe3476  1      OPC=nop               
  nop                         #  36    0xe3477  1      OPC=nop               
  nop                         #  37    0xe3478  1      OPC=nop               
  nop                         #  38    0xe3479  1      OPC=nop               
  nop                         #  39    0xe347a  1      OPC=nop               
  nop                         #  40    0xe347b  1      OPC=nop               
  nop                         #  41    0xe347c  1      OPC=nop               
  nop                         #  42    0xe347d  1      OPC=nop               
  nop                         #  43    0xe347e  1      OPC=nop               
  nop                         #  44    0xe347f  1      OPC=nop               
.L_e3480:                     #        0xe3480  0      OPC=<label>           
  popq %r11                   #  45    0xe3480  2      OPC=popq_r64_1        
  subl %ecx, %edi             #  46    0xe3482  2      OPC=subl_r32_r32      
  movl $0xfffffffe, %eax      #  47    0xe3484  6      OPC=movl_r32_imm32_1  
  movl %edi, %ecx             #  48    0xe348a  2      OPC=movl_r32_r32      
  shrl $0x9, %ecx             #  49    0xe348c  3      OPC=shrl_r32_imm8     
  roll %cl, %eax              #  50    0xe348f  2      OPC=roll_r32_cl       
  andl %eax, 0xff94c0a(%rip)  #  51    0xe3491  6      OPC=andl_m32_r32      
  andl $0xffffffe0, %r11d     #  52    0xe3497  7      OPC=andl_r32_imm32    
  nop                         #  53    0xe349e  1      OPC=nop               
  nop                         #  54    0xe349f  1      OPC=nop               
  nop                         #  55    0xe34a0  1      OPC=nop               
  nop                         #  56    0xe34a1  1      OPC=nop               
  addq %r15, %r11             #  57    0xe34a2  3      OPC=addq_r64_r64      
  jmpq %r11                   #  58    0xe34a5  3      OPC=jmpq_r64          
                                                                             
.size __cxa_free_exception, .-__cxa_free_exception

