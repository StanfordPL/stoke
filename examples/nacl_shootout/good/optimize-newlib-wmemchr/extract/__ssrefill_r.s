  .text
  .globl __ssrefill_r
  .type __ssrefill_r, @function

#! file-offset 0x18ff00
#! rip-offset  0x14ff00
#! capacity    192 bytes

# Text                          #  Line  RIP       Bytes  Opcode                
.__ssrefill_r:                  #        0x14ff00  0      OPC=<label>           
  pushq %rbx                    #  1     0x14ff00  1      OPC=pushq_r64_1       
  movl %esi, %ebx               #  2     0x14ff01  2      OPC=movl_r32_r32      
  movl %edi, %edi               #  3     0x14ff03  2      OPC=movl_r32_r32      
  movl %ebx, %ebx               #  4     0x14ff05  2      OPC=movl_r32_r32      
  movl 0x30(%r15,%rbx,1), %esi  #  5     0x14ff07  5      OPC=movl_r32_m32      
  testq %rsi, %rsi              #  6     0x14ff0c  3      OPC=testq_r64_r64     
  je .L_14ff80                  #  7     0x14ff0f  2      OPC=je_label          
  leal 0x40(%rbx), %eax         #  8     0x14ff11  3      OPC=leal_r32_m16      
  cmpl %esi, %eax               #  9     0x14ff14  2      OPC=cmpl_r32_r32      
  je .L_14ff20                  #  10    0x14ff16  2      OPC=je_label          
  nop                           #  11    0x14ff18  1      OPC=nop               
  nop                           #  12    0x14ff19  1      OPC=nop               
  nop                           #  13    0x14ff1a  1      OPC=nop               
  callq ._free_r                #  14    0x14ff1b  5      OPC=callq_label       
.L_14ff20:                      #        0x14ff20  0      OPC=<label>           
  movl %ebx, %ebx               #  15    0x14ff20  2      OPC=movl_r32_r32      
  movl 0x3c(%r15,%rbx,1), %eax  #  16    0x14ff22  5      OPC=movl_r32_m32      
  movl %ebx, %ebx               #  17    0x14ff27  2      OPC=movl_r32_r32      
  movl $0x0, 0x30(%r15,%rbx,1)  #  18    0x14ff29  9      OPC=movl_m32_imm32    
  testl %eax, %eax              #  19    0x14ff32  2      OPC=testl_r32_r32     
  movl %ebx, %ebx               #  20    0x14ff34  2      OPC=movl_r32_r32      
  movl %eax, 0x4(%r15,%rbx,1)   #  21    0x14ff36  5      OPC=movl_m32_r32      
  nop                           #  22    0x14ff3b  1      OPC=nop               
  nop                           #  23    0x14ff3c  1      OPC=nop               
  nop                           #  24    0x14ff3d  1      OPC=nop               
  nop                           #  25    0x14ff3e  1      OPC=nop               
  nop                           #  26    0x14ff3f  1      OPC=nop               
  je .L_14ff80                  #  27    0x14ff40  2      OPC=je_label          
  movl %ebx, %ebx               #  28    0x14ff42  2      OPC=movl_r32_r32      
  movl 0x38(%r15,%rbx,1), %eax  #  29    0x14ff44  5      OPC=movl_r32_m32      
  movl %ebx, %ebx               #  30    0x14ff49  2      OPC=movl_r32_r32      
  movl %eax, (%r15,%rbx,1)      #  31    0x14ff4b  4      OPC=movl_m32_r32      
  xorl %eax, %eax               #  32    0x14ff4f  2      OPC=xorl_r32_r32      
  nop                           #  33    0x14ff51  1      OPC=nop               
  nop                           #  34    0x14ff52  1      OPC=nop               
  nop                           #  35    0x14ff53  1      OPC=nop               
  nop                           #  36    0x14ff54  1      OPC=nop               
  nop                           #  37    0x14ff55  1      OPC=nop               
  nop                           #  38    0x14ff56  1      OPC=nop               
  nop                           #  39    0x14ff57  1      OPC=nop               
  nop                           #  40    0x14ff58  1      OPC=nop               
  nop                           #  41    0x14ff59  1      OPC=nop               
  nop                           #  42    0x14ff5a  1      OPC=nop               
  nop                           #  43    0x14ff5b  1      OPC=nop               
  nop                           #  44    0x14ff5c  1      OPC=nop               
  nop                           #  45    0x14ff5d  1      OPC=nop               
  nop                           #  46    0x14ff5e  1      OPC=nop               
  nop                           #  47    0x14ff5f  1      OPC=nop               
.L_14ff60:                      #        0x14ff60  0      OPC=<label>           
  popq %rbx                     #  48    0x14ff60  1      OPC=popq_r64_1        
  popq %r11                     #  49    0x14ff61  2      OPC=popq_r64_1        
  andl $0xffffffe0, %r11d       #  50    0x14ff63  7      OPC=andl_r32_imm32    
  nop                           #  51    0x14ff6a  1      OPC=nop               
  nop                           #  52    0x14ff6b  1      OPC=nop               
  nop                           #  53    0x14ff6c  1      OPC=nop               
  nop                           #  54    0x14ff6d  1      OPC=nop               
  addq %r15, %r11               #  55    0x14ff6e  3      OPC=addq_r64_r64      
  jmpq %r11                     #  56    0x14ff71  3      OPC=jmpq_r64          
  nop                           #  57    0x14ff74  1      OPC=nop               
  nop                           #  58    0x14ff75  1      OPC=nop               
  nop                           #  59    0x14ff76  1      OPC=nop               
  nop                           #  60    0x14ff77  1      OPC=nop               
  nop                           #  61    0x14ff78  1      OPC=nop               
  nop                           #  62    0x14ff79  1      OPC=nop               
  nop                           #  63    0x14ff7a  1      OPC=nop               
  nop                           #  64    0x14ff7b  1      OPC=nop               
  nop                           #  65    0x14ff7c  1      OPC=nop               
  nop                           #  66    0x14ff7d  1      OPC=nop               
  nop                           #  67    0x14ff7e  1      OPC=nop               
  nop                           #  68    0x14ff7f  1      OPC=nop               
  nop                           #  69    0x14ff80  1      OPC=nop               
  nop                           #  70    0x14ff81  1      OPC=nop               
  nop                           #  71    0x14ff82  1      OPC=nop               
  nop                           #  72    0x14ff83  1      OPC=nop               
  nop                           #  73    0x14ff84  1      OPC=nop               
  nop                           #  74    0x14ff85  1      OPC=nop               
  nop                           #  75    0x14ff86  1      OPC=nop               
.L_14ff80:                      #        0x14ff87  0      OPC=<label>           
  movl %ebx, %ebx               #  76    0x14ff87  2      OPC=movl_r32_r32      
  movl 0x10(%r15,%rbx,1), %eax  #  77    0x14ff89  5      OPC=movl_r32_m32      
  movl %ebx, %ebx               #  78    0x14ff8e  2      OPC=movl_r32_r32      
  movl $0x0, 0x4(%r15,%rbx,1)   #  79    0x14ff90  9      OPC=movl_m32_imm32    
  movl %ebx, %ebx               #  80    0x14ff99  2      OPC=movl_r32_r32      
  orw $0x20, 0xc(%r15,%rbx,1)   #  81    0x14ff9b  7      OPC=orw_m16_imm8      
  nop                           #  82    0x14ffa2  1      OPC=nop               
  nop                           #  83    0x14ffa3  1      OPC=nop               
  nop                           #  84    0x14ffa4  1      OPC=nop               
  nop                           #  85    0x14ffa5  1      OPC=nop               
  nop                           #  86    0x14ffa6  1      OPC=nop               
  movl %ebx, %ebx               #  87    0x14ffa7  2      OPC=movl_r32_r32      
  movl %eax, (%r15,%rbx,1)      #  88    0x14ffa9  4      OPC=movl_m32_r32      
  movl $0xffffffff, %eax        #  89    0x14ffad  6      OPC=movl_r32_imm32_1  
  jmpq .L_14ff60                #  90    0x14ffb3  2      OPC=jmpq_label        
  nop                           #  91    0x14ffb5  1      OPC=nop               
  nop                           #  92    0x14ffb6  1      OPC=nop               
  nop                           #  93    0x14ffb7  1      OPC=nop               
  nop                           #  94    0x14ffb8  1      OPC=nop               
  nop                           #  95    0x14ffb9  1      OPC=nop               
  nop                           #  96    0x14ffba  1      OPC=nop               
  nop                           #  97    0x14ffbb  1      OPC=nop               
  nop                           #  98    0x14ffbc  1      OPC=nop               
  nop                           #  99    0x14ffbd  1      OPC=nop               
  nop                           #  100   0x14ffbe  1      OPC=nop               
  nop                           #  101   0x14ffbf  1      OPC=nop               
  nop                           #  102   0x14ffc0  1      OPC=nop               
  nop                           #  103   0x14ffc1  1      OPC=nop               
  nop                           #  104   0x14ffc2  1      OPC=nop               
  nop                           #  105   0x14ffc3  1      OPC=nop               
  nop                           #  106   0x14ffc4  1      OPC=nop               
  nop                           #  107   0x14ffc5  1      OPC=nop               
  nop                           #  108   0x14ffc6  1      OPC=nop               
  nop                           #  109   0x14ffc7  1      OPC=nop               
                                                                                
.size __ssrefill_r, .-__ssrefill_r

