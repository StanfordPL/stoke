  .text
  .globl __ascii_wctomb
  .type __ascii_wctomb, @function

#! file-offset 0x183840
#! rip-offset  0x143840
#! capacity    96 bytes

# Text                       #  Line  RIP       Bytes  Opcode                
.__ascii_wctomb:             #        0x143840  0      OPC=<label>           
  movl %esi, %esi            #  1     0x143840  2      OPC=movl_r32_r32      
  xorl %eax, %eax            #  2     0x143842  2      OPC=xorl_r32_r32      
  movl %edi, %edi            #  3     0x143844  2      OPC=movl_r32_r32      
  testq %rsi, %rsi           #  4     0x143846  3      OPC=testq_r64_r64     
  je .L_143860               #  5     0x143849  2      OPC=je_label          
  cmpl $0xff, %edx           #  6     0x14384b  6      OPC=cmpl_r32_imm32    
  ja .L_143880               #  7     0x143851  2      OPC=ja_label          
  movl %esi, %esi            #  8     0x143853  2      OPC=movl_r32_r32      
  movb %dl, (%r15,%rsi,1)    #  9     0x143855  4      OPC=movb_m8_r8        
  movl $0x1, %eax            #  10    0x143859  5      OPC=movl_r32_imm32    
  xchgw %ax, %ax             #  11    0x14385e  2      OPC=xchgw_ax_r16      
.L_143860:                   #        0x143860  0      OPC=<label>           
  popq %r11                  #  12    0x143860  2      OPC=popq_r64_1        
  andl $0xffffffe0, %r11d    #  13    0x143862  7      OPC=andl_r32_imm32    
  nop                        #  14    0x143869  1      OPC=nop               
  nop                        #  15    0x14386a  1      OPC=nop               
  nop                        #  16    0x14386b  1      OPC=nop               
  nop                        #  17    0x14386c  1      OPC=nop               
  addq %r15, %r11            #  18    0x14386d  3      OPC=addq_r64_r64      
  jmpq %r11                  #  19    0x143870  3      OPC=jmpq_r64          
  nop                        #  20    0x143873  1      OPC=nop               
  nop                        #  21    0x143874  1      OPC=nop               
  nop                        #  22    0x143875  1      OPC=nop               
  nop                        #  23    0x143876  1      OPC=nop               
  nop                        #  24    0x143877  1      OPC=nop               
  nop                        #  25    0x143878  1      OPC=nop               
  nop                        #  26    0x143879  1      OPC=nop               
  nop                        #  27    0x14387a  1      OPC=nop               
  nop                        #  28    0x14387b  1      OPC=nop               
  nop                        #  29    0x14387c  1      OPC=nop               
  nop                        #  30    0x14387d  1      OPC=nop               
  nop                        #  31    0x14387e  1      OPC=nop               
  nop                        #  32    0x14387f  1      OPC=nop               
  nop                        #  33    0x143880  1      OPC=nop               
  nop                        #  34    0x143881  1      OPC=nop               
  nop                        #  35    0x143882  1      OPC=nop               
  nop                        #  36    0x143883  1      OPC=nop               
  nop                        #  37    0x143884  1      OPC=nop               
  nop                        #  38    0x143885  1      OPC=nop               
  nop                        #  39    0x143886  1      OPC=nop               
.L_143880:                   #        0x143887  0      OPC=<label>           
  movl %edi, %edi            #  40    0x143887  2      OPC=movl_r32_r32      
  movl $0x54, (%r15,%rdi,1)  #  41    0x143889  8      OPC=movl_m32_imm32    
  movl $0xffffffff, %eax     #  42    0x143891  6      OPC=movl_r32_imm32_1  
  popq %r11                  #  43    0x143897  2      OPC=popq_r64_1        
  andl $0xffffffe0, %r11d    #  44    0x143899  7      OPC=andl_r32_imm32    
  nop                        #  45    0x1438a0  1      OPC=nop               
  nop                        #  46    0x1438a1  1      OPC=nop               
  nop                        #  47    0x1438a2  1      OPC=nop               
  nop                        #  48    0x1438a3  1      OPC=nop               
  addq %r15, %r11            #  49    0x1438a4  3      OPC=addq_r64_r64      
  jmpq %r11                  #  50    0x1438a7  3      OPC=jmpq_r64          
  nop                        #  51    0x1438aa  1      OPC=nop               
  nop                        #  52    0x1438ab  1      OPC=nop               
  nop                        #  53    0x1438ac  1      OPC=nop               
  nop                        #  54    0x1438ad  1      OPC=nop               
  nop                        #  55    0x1438ae  1      OPC=nop               
                                                                             
.size __ascii_wctomb, .-__ascii_wctomb

