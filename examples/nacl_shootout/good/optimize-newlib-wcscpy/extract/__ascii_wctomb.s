  .text
  .globl __ascii_wctomb
  .type __ascii_wctomb, @function

#! file-offset 0x1834a0
#! rip-offset  0x1434a0
#! capacity    96 bytes

# Text                       #  Line  RIP       Bytes  Opcode                
.__ascii_wctomb:             #        0x1434a0  0      OPC=<label>           
  movl %esi, %esi            #  1     0x1434a0  2      OPC=movl_r32_r32      
  xorl %eax, %eax            #  2     0x1434a2  2      OPC=xorl_r32_r32      
  movl %edi, %edi            #  3     0x1434a4  2      OPC=movl_r32_r32      
  testq %rsi, %rsi           #  4     0x1434a6  3      OPC=testq_r64_r64     
  je .L_1434c0               #  5     0x1434a9  2      OPC=je_label          
  cmpl $0xff, %edx           #  6     0x1434ab  6      OPC=cmpl_r32_imm32    
  ja .L_1434e0               #  7     0x1434b1  2      OPC=ja_label          
  movl %esi, %esi            #  8     0x1434b3  2      OPC=movl_r32_r32      
  movb %dl, (%r15,%rsi,1)    #  9     0x1434b5  4      OPC=movb_m8_r8        
  movl $0x1, %eax            #  10    0x1434b9  5      OPC=movl_r32_imm32    
  xchgw %ax, %ax             #  11    0x1434be  2      OPC=xchgw_ax_r16      
.L_1434c0:                   #        0x1434c0  0      OPC=<label>           
  popq %r11                  #  12    0x1434c0  2      OPC=popq_r64_1        
  andl $0xffffffe0, %r11d    #  13    0x1434c2  7      OPC=andl_r32_imm32    
  nop                        #  14    0x1434c9  1      OPC=nop               
  nop                        #  15    0x1434ca  1      OPC=nop               
  nop                        #  16    0x1434cb  1      OPC=nop               
  nop                        #  17    0x1434cc  1      OPC=nop               
  addq %r15, %r11            #  18    0x1434cd  3      OPC=addq_r64_r64      
  jmpq %r11                  #  19    0x1434d0  3      OPC=jmpq_r64          
  nop                        #  20    0x1434d3  1      OPC=nop               
  nop                        #  21    0x1434d4  1      OPC=nop               
  nop                        #  22    0x1434d5  1      OPC=nop               
  nop                        #  23    0x1434d6  1      OPC=nop               
  nop                        #  24    0x1434d7  1      OPC=nop               
  nop                        #  25    0x1434d8  1      OPC=nop               
  nop                        #  26    0x1434d9  1      OPC=nop               
  nop                        #  27    0x1434da  1      OPC=nop               
  nop                        #  28    0x1434db  1      OPC=nop               
  nop                        #  29    0x1434dc  1      OPC=nop               
  nop                        #  30    0x1434dd  1      OPC=nop               
  nop                        #  31    0x1434de  1      OPC=nop               
  nop                        #  32    0x1434df  1      OPC=nop               
  nop                        #  33    0x1434e0  1      OPC=nop               
  nop                        #  34    0x1434e1  1      OPC=nop               
  nop                        #  35    0x1434e2  1      OPC=nop               
  nop                        #  36    0x1434e3  1      OPC=nop               
  nop                        #  37    0x1434e4  1      OPC=nop               
  nop                        #  38    0x1434e5  1      OPC=nop               
  nop                        #  39    0x1434e6  1      OPC=nop               
.L_1434e0:                   #        0x1434e7  0      OPC=<label>           
  movl %edi, %edi            #  40    0x1434e7  2      OPC=movl_r32_r32      
  movl $0x54, (%r15,%rdi,1)  #  41    0x1434e9  8      OPC=movl_m32_imm32    
  movl $0xffffffff, %eax     #  42    0x1434f1  6      OPC=movl_r32_imm32_1  
  popq %r11                  #  43    0x1434f7  2      OPC=popq_r64_1        
  andl $0xffffffe0, %r11d    #  44    0x1434f9  7      OPC=andl_r32_imm32    
  nop                        #  45    0x143500  1      OPC=nop               
  nop                        #  46    0x143501  1      OPC=nop               
  nop                        #  47    0x143502  1      OPC=nop               
  nop                        #  48    0x143503  1      OPC=nop               
  addq %r15, %r11            #  49    0x143504  3      OPC=addq_r64_r64      
  jmpq %r11                  #  50    0x143507  3      OPC=jmpq_r64          
  nop                        #  51    0x14350a  1      OPC=nop               
  nop                        #  52    0x14350b  1      OPC=nop               
  nop                        #  53    0x14350c  1      OPC=nop               
  nop                        #  54    0x14350d  1      OPC=nop               
  nop                        #  55    0x14350e  1      OPC=nop               
                                                                             
.size __ascii_wctomb, .-__ascii_wctomb

