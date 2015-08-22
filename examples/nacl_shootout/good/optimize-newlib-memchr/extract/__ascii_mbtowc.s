  .text
  .globl __ascii_mbtowc
  .type __ascii_mbtowc, @function

#! file-offset 0x1627c0
#! rip-offset  0x1227c0
#! capacity    128 bytes

# Text                        #  Line  RIP       Bytes  Opcode                
.__ascii_mbtowc:              #        0x1227c0  0      OPC=<label>           
  movl %esi, %esi             #  1     0x1227c0  2      OPC=movl_r32_r32      
  leal -0x4(%rsp), %eax       #  2     0x1227c2  4      OPC=leal_r32_m16      
  movl %edx, %edx             #  3     0x1227c6  2      OPC=movl_r32_r32      
  testq %rsi, %rsi            #  4     0x1227c8  3      OPC=testq_r64_r64     
  cmoveq %rax, %rsi           #  5     0x1227cb  4      OPC=cmoveq_r64_r64    
  xorl %eax, %eax             #  6     0x1227cf  2      OPC=xorl_r32_r32      
  testq %rdx, %rdx            #  7     0x1227d1  3      OPC=testq_r64_r64     
  jne .L_122800               #  8     0x1227d4  2      OPC=jne_label         
  nop                         #  9     0x1227d6  1      OPC=nop               
  nop                         #  10    0x1227d7  1      OPC=nop               
  nop                         #  11    0x1227d8  1      OPC=nop               
  nop                         #  12    0x1227d9  1      OPC=nop               
  nop                         #  13    0x1227da  1      OPC=nop               
  nop                         #  14    0x1227db  1      OPC=nop               
  nop                         #  15    0x1227dc  1      OPC=nop               
  nop                         #  16    0x1227dd  1      OPC=nop               
  nop                         #  17    0x1227de  1      OPC=nop               
  nop                         #  18    0x1227df  1      OPC=nop               
.L_1227e0:                    #        0x1227e0  0      OPC=<label>           
  popq %r11                   #  19    0x1227e0  2      OPC=popq_r64_1        
  andl $0xffffffe0, %r11d     #  20    0x1227e2  7      OPC=andl_r32_imm32    
  nop                         #  21    0x1227e9  1      OPC=nop               
  nop                         #  22    0x1227ea  1      OPC=nop               
  nop                         #  23    0x1227eb  1      OPC=nop               
  nop                         #  24    0x1227ec  1      OPC=nop               
  addq %r15, %r11             #  25    0x1227ed  3      OPC=addq_r64_r64      
  jmpq %r11                   #  26    0x1227f0  3      OPC=jmpq_r64          
  nop                         #  27    0x1227f3  1      OPC=nop               
  nop                         #  28    0x1227f4  1      OPC=nop               
  nop                         #  29    0x1227f5  1      OPC=nop               
  nop                         #  30    0x1227f6  1      OPC=nop               
  nop                         #  31    0x1227f7  1      OPC=nop               
  nop                         #  32    0x1227f8  1      OPC=nop               
  nop                         #  33    0x1227f9  1      OPC=nop               
  nop                         #  34    0x1227fa  1      OPC=nop               
  nop                         #  35    0x1227fb  1      OPC=nop               
  nop                         #  36    0x1227fc  1      OPC=nop               
  nop                         #  37    0x1227fd  1      OPC=nop               
  nop                         #  38    0x1227fe  1      OPC=nop               
  nop                         #  39    0x1227ff  1      OPC=nop               
  nop                         #  40    0x122800  1      OPC=nop               
  nop                         #  41    0x122801  1      OPC=nop               
  nop                         #  42    0x122802  1      OPC=nop               
  nop                         #  43    0x122803  1      OPC=nop               
  nop                         #  44    0x122804  1      OPC=nop               
  nop                         #  45    0x122805  1      OPC=nop               
  nop                         #  46    0x122806  1      OPC=nop               
.L_122800:                    #        0x122807  0      OPC=<label>           
  testl %ecx, %ecx            #  47    0x122807  2      OPC=testl_r32_r32     
  movl $0xfffffffe, %eax      #  48    0x122809  6      OPC=movl_r32_imm32_1  
  je .L_1227e0                #  49    0x12280f  2      OPC=je_label          
  movl %edx, %edx             #  50    0x122811  2      OPC=movl_r32_r32      
  movzbl (%r15,%rdx,1), %eax  #  51    0x122813  5      OPC=movzbl_r32_m8     
  movl %esi, %esi             #  52    0x122818  2      OPC=movl_r32_r32      
  movl %eax, (%r15,%rsi,1)    #  53    0x12281a  4      OPC=movl_m32_r32      
  xorl %eax, %eax             #  54    0x12281e  2      OPC=xorl_r32_r32      
  movl %edx, %edx             #  55    0x122820  2      OPC=movl_r32_r32      
  cmpb $0x0, (%r15,%rdx,1)    #  56    0x122822  5      OPC=cmpb_m8_imm8      
  nop                         #  57    0x122827  1      OPC=nop               
  setne %al                   #  58    0x122828  3      OPC=setne_r8          
  popq %r11                   #  59    0x12282b  2      OPC=popq_r64_1        
  andl $0xffffffe0, %r11d     #  60    0x12282d  7      OPC=andl_r32_imm32    
  nop                         #  61    0x122834  1      OPC=nop               
  nop                         #  62    0x122835  1      OPC=nop               
  nop                         #  63    0x122836  1      OPC=nop               
  nop                         #  64    0x122837  1      OPC=nop               
  addq %r15, %r11             #  65    0x122838  3      OPC=addq_r64_r64      
  jmpq %r11                   #  66    0x12283b  3      OPC=jmpq_r64          
  xchgw %ax, %ax              #  67    0x12283e  2      OPC=xchgw_ax_r16      
  nop                         #  68    0x122840  1      OPC=nop               
  nop                         #  69    0x122841  1      OPC=nop               
  nop                         #  70    0x122842  1      OPC=nop               
  nop                         #  71    0x122843  1      OPC=nop               
  nop                         #  72    0x122844  1      OPC=nop               
  nop                         #  73    0x122845  1      OPC=nop               
  nop                         #  74    0x122846  1      OPC=nop               
  nop                         #  75    0x122847  1      OPC=nop               
  nop                         #  76    0x122848  1      OPC=nop               
  nop                         #  77    0x122849  1      OPC=nop               
  nop                         #  78    0x12284a  1      OPC=nop               
  nop                         #  79    0x12284b  1      OPC=nop               
  nop                         #  80    0x12284c  1      OPC=nop               
  nop                         #  81    0x12284d  1      OPC=nop               
  nop                         #  82    0x12284e  1      OPC=nop               
                                                                              
.size __ascii_mbtowc, .-__ascii_mbtowc

