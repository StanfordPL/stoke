  .text
  .globl __ascii_wctomb
  .type __ascii_wctomb, @function

#! file-offset 0x183f60
#! rip-offset  0x143f60
#! capacity    96 bytes

# Text                       #  Line  RIP       Bytes  Opcode                
.__ascii_wctomb:             #        0x143f60  0      OPC=<label>           
  movl %esi, %esi            #  1     0x143f60  2      OPC=movl_r32_r32      
  xorl %eax, %eax            #  2     0x143f62  2      OPC=xorl_r32_r32      
  movl %edi, %edi            #  3     0x143f64  2      OPC=movl_r32_r32      
  testq %rsi, %rsi           #  4     0x143f66  3      OPC=testq_r64_r64     
  je .L_143f80               #  5     0x143f69  2      OPC=je_label          
  cmpl $0xff, %edx           #  6     0x143f6b  6      OPC=cmpl_r32_imm32    
  ja .L_143fa0               #  7     0x143f71  2      OPC=ja_label          
  movl %esi, %esi            #  8     0x143f73  2      OPC=movl_r32_r32      
  movb %dl, (%r15,%rsi,1)    #  9     0x143f75  4      OPC=movb_m8_r8        
  movl $0x1, %eax            #  10    0x143f79  5      OPC=movl_r32_imm32    
  xchgw %ax, %ax             #  11    0x143f7e  2      OPC=xchgw_ax_r16      
.L_143f80:                   #        0x143f80  0      OPC=<label>           
  popq %r11                  #  12    0x143f80  2      OPC=popq_r64_1        
  andl $0xffffffe0, %r11d    #  13    0x143f82  7      OPC=andl_r32_imm32    
  nop                        #  14    0x143f89  1      OPC=nop               
  nop                        #  15    0x143f8a  1      OPC=nop               
  nop                        #  16    0x143f8b  1      OPC=nop               
  nop                        #  17    0x143f8c  1      OPC=nop               
  addq %r15, %r11            #  18    0x143f8d  3      OPC=addq_r64_r64      
  jmpq %r11                  #  19    0x143f90  3      OPC=jmpq_r64          
  nop                        #  20    0x143f93  1      OPC=nop               
  nop                        #  21    0x143f94  1      OPC=nop               
  nop                        #  22    0x143f95  1      OPC=nop               
  nop                        #  23    0x143f96  1      OPC=nop               
  nop                        #  24    0x143f97  1      OPC=nop               
  nop                        #  25    0x143f98  1      OPC=nop               
  nop                        #  26    0x143f99  1      OPC=nop               
  nop                        #  27    0x143f9a  1      OPC=nop               
  nop                        #  28    0x143f9b  1      OPC=nop               
  nop                        #  29    0x143f9c  1      OPC=nop               
  nop                        #  30    0x143f9d  1      OPC=nop               
  nop                        #  31    0x143f9e  1      OPC=nop               
  nop                        #  32    0x143f9f  1      OPC=nop               
  nop                        #  33    0x143fa0  1      OPC=nop               
  nop                        #  34    0x143fa1  1      OPC=nop               
  nop                        #  35    0x143fa2  1      OPC=nop               
  nop                        #  36    0x143fa3  1      OPC=nop               
  nop                        #  37    0x143fa4  1      OPC=nop               
  nop                        #  38    0x143fa5  1      OPC=nop               
  nop                        #  39    0x143fa6  1      OPC=nop               
.L_143fa0:                   #        0x143fa7  0      OPC=<label>           
  movl %edi, %edi            #  40    0x143fa7  2      OPC=movl_r32_r32      
  movl $0x54, (%r15,%rdi,1)  #  41    0x143fa9  8      OPC=movl_m32_imm32    
  movl $0xffffffff, %eax     #  42    0x143fb1  6      OPC=movl_r32_imm32_1  
  popq %r11                  #  43    0x143fb7  2      OPC=popq_r64_1        
  andl $0xffffffe0, %r11d    #  44    0x143fb9  7      OPC=andl_r32_imm32    
  nop                        #  45    0x143fc0  1      OPC=nop               
  nop                        #  46    0x143fc1  1      OPC=nop               
  nop                        #  47    0x143fc2  1      OPC=nop               
  nop                        #  48    0x143fc3  1      OPC=nop               
  addq %r15, %r11            #  49    0x143fc4  3      OPC=addq_r64_r64      
  jmpq %r11                  #  50    0x143fc7  3      OPC=jmpq_r64          
  nop                        #  51    0x143fca  1      OPC=nop               
  nop                        #  52    0x143fcb  1      OPC=nop               
  nop                        #  53    0x143fcc  1      OPC=nop               
  nop                        #  54    0x143fcd  1      OPC=nop               
  nop                        #  55    0x143fce  1      OPC=nop               
                                                                             
.size __ascii_wctomb, .-__ascii_wctomb

