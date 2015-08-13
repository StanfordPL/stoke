  .text
  .globl __ascii_mbtowc
  .type __ascii_mbtowc, @function

#! file-offset 0x161da0
#! rip-offset  0x121da0
#! capacity    128 bytes

# Text                        #  Line  RIP       Bytes  Opcode                
.__ascii_mbtowc:              #        0x121da0  0      OPC=<label>           
  movl %esi, %esi             #  1     0x121da0  2      OPC=movl_r32_r32      
  leal -0x4(%rsp), %eax       #  2     0x121da2  4      OPC=leal_r32_m16      
  movl %edx, %edx             #  3     0x121da6  2      OPC=movl_r32_r32      
  testq %rsi, %rsi            #  4     0x121da8  3      OPC=testq_r64_r64     
  cmoveq %rax, %rsi           #  5     0x121dab  4      OPC=cmoveq_r64_r64    
  xorl %eax, %eax             #  6     0x121daf  2      OPC=xorl_r32_r32      
  testq %rdx, %rdx            #  7     0x121db1  3      OPC=testq_r64_r64     
  jne .L_121de0               #  8     0x121db4  2      OPC=jne_label         
  nop                         #  9     0x121db6  1      OPC=nop               
  nop                         #  10    0x121db7  1      OPC=nop               
  nop                         #  11    0x121db8  1      OPC=nop               
  nop                         #  12    0x121db9  1      OPC=nop               
  nop                         #  13    0x121dba  1      OPC=nop               
  nop                         #  14    0x121dbb  1      OPC=nop               
  nop                         #  15    0x121dbc  1      OPC=nop               
  nop                         #  16    0x121dbd  1      OPC=nop               
  nop                         #  17    0x121dbe  1      OPC=nop               
  nop                         #  18    0x121dbf  1      OPC=nop               
.L_121dc0:                    #        0x121dc0  0      OPC=<label>           
  popq %r11                   #  19    0x121dc0  2      OPC=popq_r64_1        
  andl $0xffffffe0, %r11d     #  20    0x121dc2  7      OPC=andl_r32_imm32    
  nop                         #  21    0x121dc9  1      OPC=nop               
  nop                         #  22    0x121dca  1      OPC=nop               
  nop                         #  23    0x121dcb  1      OPC=nop               
  nop                         #  24    0x121dcc  1      OPC=nop               
  addq %r15, %r11             #  25    0x121dcd  3      OPC=addq_r64_r64      
  jmpq %r11                   #  26    0x121dd0  3      OPC=jmpq_r64          
  nop                         #  27    0x121dd3  1      OPC=nop               
  nop                         #  28    0x121dd4  1      OPC=nop               
  nop                         #  29    0x121dd5  1      OPC=nop               
  nop                         #  30    0x121dd6  1      OPC=nop               
  nop                         #  31    0x121dd7  1      OPC=nop               
  nop                         #  32    0x121dd8  1      OPC=nop               
  nop                         #  33    0x121dd9  1      OPC=nop               
  nop                         #  34    0x121dda  1      OPC=nop               
  nop                         #  35    0x121ddb  1      OPC=nop               
  nop                         #  36    0x121ddc  1      OPC=nop               
  nop                         #  37    0x121ddd  1      OPC=nop               
  nop                         #  38    0x121dde  1      OPC=nop               
  nop                         #  39    0x121ddf  1      OPC=nop               
  nop                         #  40    0x121de0  1      OPC=nop               
  nop                         #  41    0x121de1  1      OPC=nop               
  nop                         #  42    0x121de2  1      OPC=nop               
  nop                         #  43    0x121de3  1      OPC=nop               
  nop                         #  44    0x121de4  1      OPC=nop               
  nop                         #  45    0x121de5  1      OPC=nop               
  nop                         #  46    0x121de6  1      OPC=nop               
.L_121de0:                    #        0x121de7  0      OPC=<label>           
  testl %ecx, %ecx            #  47    0x121de7  2      OPC=testl_r32_r32     
  movl $0xfffffffe, %eax      #  48    0x121de9  6      OPC=movl_r32_imm32_1  
  je .L_121dc0                #  49    0x121def  2      OPC=je_label          
  movl %edx, %edx             #  50    0x121df1  2      OPC=movl_r32_r32      
  movzbl (%r15,%rdx,1), %eax  #  51    0x121df3  5      OPC=movzbl_r32_m8     
  movl %esi, %esi             #  52    0x121df8  2      OPC=movl_r32_r32      
  movl %eax, (%r15,%rsi,1)    #  53    0x121dfa  4      OPC=movl_m32_r32      
  xorl %eax, %eax             #  54    0x121dfe  2      OPC=xorl_r32_r32      
  movl %edx, %edx             #  55    0x121e00  2      OPC=movl_r32_r32      
  cmpb $0x0, (%r15,%rdx,1)    #  56    0x121e02  5      OPC=cmpb_m8_imm8      
  nop                         #  57    0x121e07  1      OPC=nop               
  setne %al                   #  58    0x121e08  3      OPC=setne_r8          
  popq %r11                   #  59    0x121e0b  2      OPC=popq_r64_1        
  andl $0xffffffe0, %r11d     #  60    0x121e0d  7      OPC=andl_r32_imm32    
  nop                         #  61    0x121e14  1      OPC=nop               
  nop                         #  62    0x121e15  1      OPC=nop               
  nop                         #  63    0x121e16  1      OPC=nop               
  nop                         #  64    0x121e17  1      OPC=nop               
  addq %r15, %r11             #  65    0x121e18  3      OPC=addq_r64_r64      
  jmpq %r11                   #  66    0x121e1b  3      OPC=jmpq_r64          
  xchgw %ax, %ax              #  67    0x121e1e  2      OPC=xchgw_ax_r16      
  nop                         #  68    0x121e20  1      OPC=nop               
  nop                         #  69    0x121e21  1      OPC=nop               
  nop                         #  70    0x121e22  1      OPC=nop               
  nop                         #  71    0x121e23  1      OPC=nop               
  nop                         #  72    0x121e24  1      OPC=nop               
  nop                         #  73    0x121e25  1      OPC=nop               
  nop                         #  74    0x121e26  1      OPC=nop               
  nop                         #  75    0x121e27  1      OPC=nop               
  nop                         #  76    0x121e28  1      OPC=nop               
  nop                         #  77    0x121e29  1      OPC=nop               
  nop                         #  78    0x121e2a  1      OPC=nop               
  nop                         #  79    0x121e2b  1      OPC=nop               
  nop                         #  80    0x121e2c  1      OPC=nop               
  nop                         #  81    0x121e2d  1      OPC=nop               
  nop                         #  82    0x121e2e  1      OPC=nop               
                                                                              
.size __ascii_mbtowc, .-__ascii_mbtowc

