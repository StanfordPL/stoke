  .text
  .globl __ascii_mbtowc
  .type __ascii_mbtowc, @function

#! file-offset 0x1620a0
#! rip-offset  0x1220a0
#! capacity    128 bytes

# Text                        #  Line  RIP       Bytes  Opcode                
.__ascii_mbtowc:              #        0x1220a0  0      OPC=<label>           
  movl %esi, %esi             #  1     0x1220a0  2      OPC=movl_r32_r32      
  leal -0x4(%rsp), %eax       #  2     0x1220a2  4      OPC=leal_r32_m16      
  movl %edx, %edx             #  3     0x1220a6  2      OPC=movl_r32_r32      
  testq %rsi, %rsi            #  4     0x1220a8  3      OPC=testq_r64_r64     
  cmoveq %rax, %rsi           #  5     0x1220ab  4      OPC=cmoveq_r64_r64    
  xorl %eax, %eax             #  6     0x1220af  2      OPC=xorl_r32_r32      
  testq %rdx, %rdx            #  7     0x1220b1  3      OPC=testq_r64_r64     
  jne .L_1220e0               #  8     0x1220b4  2      OPC=jne_label         
  nop                         #  9     0x1220b6  1      OPC=nop               
  nop                         #  10    0x1220b7  1      OPC=nop               
  nop                         #  11    0x1220b8  1      OPC=nop               
  nop                         #  12    0x1220b9  1      OPC=nop               
  nop                         #  13    0x1220ba  1      OPC=nop               
  nop                         #  14    0x1220bb  1      OPC=nop               
  nop                         #  15    0x1220bc  1      OPC=nop               
  nop                         #  16    0x1220bd  1      OPC=nop               
  nop                         #  17    0x1220be  1      OPC=nop               
  nop                         #  18    0x1220bf  1      OPC=nop               
.L_1220c0:                    #        0x1220c0  0      OPC=<label>           
  popq %r11                   #  19    0x1220c0  2      OPC=popq_r64_1        
  andl $0xffffffe0, %r11d     #  20    0x1220c2  7      OPC=andl_r32_imm32    
  nop                         #  21    0x1220c9  1      OPC=nop               
  nop                         #  22    0x1220ca  1      OPC=nop               
  nop                         #  23    0x1220cb  1      OPC=nop               
  nop                         #  24    0x1220cc  1      OPC=nop               
  addq %r15, %r11             #  25    0x1220cd  3      OPC=addq_r64_r64      
  jmpq %r11                   #  26    0x1220d0  3      OPC=jmpq_r64          
  nop                         #  27    0x1220d3  1      OPC=nop               
  nop                         #  28    0x1220d4  1      OPC=nop               
  nop                         #  29    0x1220d5  1      OPC=nop               
  nop                         #  30    0x1220d6  1      OPC=nop               
  nop                         #  31    0x1220d7  1      OPC=nop               
  nop                         #  32    0x1220d8  1      OPC=nop               
  nop                         #  33    0x1220d9  1      OPC=nop               
  nop                         #  34    0x1220da  1      OPC=nop               
  nop                         #  35    0x1220db  1      OPC=nop               
  nop                         #  36    0x1220dc  1      OPC=nop               
  nop                         #  37    0x1220dd  1      OPC=nop               
  nop                         #  38    0x1220de  1      OPC=nop               
  nop                         #  39    0x1220df  1      OPC=nop               
  nop                         #  40    0x1220e0  1      OPC=nop               
  nop                         #  41    0x1220e1  1      OPC=nop               
  nop                         #  42    0x1220e2  1      OPC=nop               
  nop                         #  43    0x1220e3  1      OPC=nop               
  nop                         #  44    0x1220e4  1      OPC=nop               
  nop                         #  45    0x1220e5  1      OPC=nop               
  nop                         #  46    0x1220e6  1      OPC=nop               
.L_1220e0:                    #        0x1220e7  0      OPC=<label>           
  testl %ecx, %ecx            #  47    0x1220e7  2      OPC=testl_r32_r32     
  movl $0xfffffffe, %eax      #  48    0x1220e9  6      OPC=movl_r32_imm32_1  
  je .L_1220c0                #  49    0x1220ef  2      OPC=je_label          
  movl %edx, %edx             #  50    0x1220f1  2      OPC=movl_r32_r32      
  movzbl (%r15,%rdx,1), %eax  #  51    0x1220f3  5      OPC=movzbl_r32_m8     
  movl %esi, %esi             #  52    0x1220f8  2      OPC=movl_r32_r32      
  movl %eax, (%r15,%rsi,1)    #  53    0x1220fa  4      OPC=movl_m32_r32      
  xorl %eax, %eax             #  54    0x1220fe  2      OPC=xorl_r32_r32      
  movl %edx, %edx             #  55    0x122100  2      OPC=movl_r32_r32      
  cmpb $0x0, (%r15,%rdx,1)    #  56    0x122102  5      OPC=cmpb_m8_imm8      
  nop                         #  57    0x122107  1      OPC=nop               
  setne %al                   #  58    0x122108  3      OPC=setne_r8          
  popq %r11                   #  59    0x12210b  2      OPC=popq_r64_1        
  andl $0xffffffe0, %r11d     #  60    0x12210d  7      OPC=andl_r32_imm32    
  nop                         #  61    0x122114  1      OPC=nop               
  nop                         #  62    0x122115  1      OPC=nop               
  nop                         #  63    0x122116  1      OPC=nop               
  nop                         #  64    0x122117  1      OPC=nop               
  addq %r15, %r11             #  65    0x122118  3      OPC=addq_r64_r64      
  jmpq %r11                   #  66    0x12211b  3      OPC=jmpq_r64          
  xchgw %ax, %ax              #  67    0x12211e  2      OPC=xchgw_ax_r16      
  nop                         #  68    0x122120  1      OPC=nop               
  nop                         #  69    0x122121  1      OPC=nop               
  nop                         #  70    0x122122  1      OPC=nop               
  nop                         #  71    0x122123  1      OPC=nop               
  nop                         #  72    0x122124  1      OPC=nop               
  nop                         #  73    0x122125  1      OPC=nop               
  nop                         #  74    0x122126  1      OPC=nop               
  nop                         #  75    0x122127  1      OPC=nop               
  nop                         #  76    0x122128  1      OPC=nop               
  nop                         #  77    0x122129  1      OPC=nop               
  nop                         #  78    0x12212a  1      OPC=nop               
  nop                         #  79    0x12212b  1      OPC=nop               
  nop                         #  80    0x12212c  1      OPC=nop               
  nop                         #  81    0x12212d  1      OPC=nop               
  nop                         #  82    0x12212e  1      OPC=nop               
                                                                              
.size __ascii_mbtowc, .-__ascii_mbtowc

