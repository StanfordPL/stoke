  .text
  .globl _ZNKSs5rfindEcj
  .type _ZNKSs5rfindEcj, @function

#! file-offset 0xeb060
#! rip-offset  0xab060
#! capacity    128 bytes

# Text                      #  Line  RIP      Bytes  Opcode                
._ZNKSs5rfindEcj:           #        0xab060  0      OPC=<label>           
  movl %edi, %edi           #  1     0xab060  2      OPC=movl_r32_r32      
  movl %edi, %edi           #  2     0xab062  2      OPC=movl_r32_r32      
  movl (%r15,%rdi,1), %ecx  #  3     0xab064  4      OPC=movl_r32_m32      
  leal -0xc(%rcx), %eax     #  4     0xab068  3      OPC=leal_r32_m16      
  movl %eax, %eax           #  5     0xab06b  2      OPC=movl_r32_r32      
  movl (%r15,%rax,1), %eax  #  6     0xab06d  4      OPC=movl_r32_m32      
  testl %eax, %eax          #  7     0xab071  2      OPC=testl_r32_r32     
  je .L_ab0c0               #  8     0xab073  2      OPC=je_label          
  subl $0x1, %eax           #  9     0xab075  3      OPC=subl_r32_imm8     
  cmpl %eax, %edx           #  10    0xab078  2      OPC=cmpl_r32_r32      
  cmoval %eax, %edx         #  11    0xab07a  3      OPC=cmoval_r32_r32    
  leal 0x1(%rdx), %eax      #  12    0xab07d  3      OPC=leal_r32_m16      
  addl %ecx, %edx           #  13    0xab080  2      OPC=addl_r32_r32      
  nop                       #  14    0xab082  1      OPC=nop               
  nop                       #  15    0xab083  1      OPC=nop               
  nop                       #  16    0xab084  1      OPC=nop               
  nop                       #  17    0xab085  1      OPC=nop               
  nop                       #  18    0xab086  1      OPC=nop               
  nop                       #  19    0xab087  1      OPC=nop               
  nop                       #  20    0xab088  1      OPC=nop               
  nop                       #  21    0xab089  1      OPC=nop               
  nop                       #  22    0xab08a  1      OPC=nop               
  nop                       #  23    0xab08b  1      OPC=nop               
  nop                       #  24    0xab08c  1      OPC=nop               
  nop                       #  25    0xab08d  1      OPC=nop               
  nop                       #  26    0xab08e  1      OPC=nop               
  nop                       #  27    0xab08f  1      OPC=nop               
  nop                       #  28    0xab090  1      OPC=nop               
  nop                       #  29    0xab091  1      OPC=nop               
  nop                       #  30    0xab092  1      OPC=nop               
  nop                       #  31    0xab093  1      OPC=nop               
  nop                       #  32    0xab094  1      OPC=nop               
  nop                       #  33    0xab095  1      OPC=nop               
  nop                       #  34    0xab096  1      OPC=nop               
  nop                       #  35    0xab097  1      OPC=nop               
  nop                       #  36    0xab098  1      OPC=nop               
  nop                       #  37    0xab099  1      OPC=nop               
  nop                       #  38    0xab09a  1      OPC=nop               
  nop                       #  39    0xab09b  1      OPC=nop               
  nop                       #  40    0xab09c  1      OPC=nop               
  nop                       #  41    0xab09d  1      OPC=nop               
  nop                       #  42    0xab09e  1      OPC=nop               
  nop                       #  43    0xab09f  1      OPC=nop               
.L_ab0a0:                   #        0xab0a0  0      OPC=<label>           
  testl %eax, %eax          #  44    0xab0a0  2      OPC=testl_r32_r32     
  je .L_ab0c0               #  45    0xab0a2  2      OPC=je_label          
  movl %edx, %ecx           #  46    0xab0a4  2      OPC=movl_r32_r32      
  subl $0x1, %eax           #  47    0xab0a6  3      OPC=subl_r32_imm8     
  subl $0x1, %edx           #  48    0xab0a9  3      OPC=subl_r32_imm8     
  movl %ecx, %ecx           #  49    0xab0ac  2      OPC=movl_r32_r32      
  cmpb (%r15,%rcx,1), %sil  #  50    0xab0ae  4      OPC=cmpb_r8_m8        
  jne .L_ab0a0              #  51    0xab0b2  2      OPC=jne_label         
  popq %r11                 #  52    0xab0b4  2      OPC=popq_r64_1        
  andl $0xffffffe0, %r11d   #  53    0xab0b6  7      OPC=andl_r32_imm32    
  nop                       #  54    0xab0bd  1      OPC=nop               
  nop                       #  55    0xab0be  1      OPC=nop               
  nop                       #  56    0xab0bf  1      OPC=nop               
  nop                       #  57    0xab0c0  1      OPC=nop               
  addq %r15, %r11           #  58    0xab0c1  3      OPC=addq_r64_r64      
  jmpq %r11                 #  59    0xab0c4  3      OPC=jmpq_r64          
.L_ab0c0:                   #        0xab0c7  0      OPC=<label>           
  movl $0xffffffff, %eax    #  60    0xab0c7  6      OPC=movl_r32_imm32_1  
  popq %r11                 #  61    0xab0cd  2      OPC=popq_r64_1        
  andl $0xffffffe0, %r11d   #  62    0xab0cf  7      OPC=andl_r32_imm32    
  nop                       #  63    0xab0d6  1      OPC=nop               
  nop                       #  64    0xab0d7  1      OPC=nop               
  nop                       #  65    0xab0d8  1      OPC=nop               
  nop                       #  66    0xab0d9  1      OPC=nop               
  addq %r15, %r11           #  67    0xab0da  3      OPC=addq_r64_r64      
  jmpq %r11                 #  68    0xab0dd  3      OPC=jmpq_r64          
  nop                       #  69    0xab0e0  1      OPC=nop               
  nop                       #  70    0xab0e1  1      OPC=nop               
  nop                       #  71    0xab0e2  1      OPC=nop               
  nop                       #  72    0xab0e3  1      OPC=nop               
  nop                       #  73    0xab0e4  1      OPC=nop               
  nop                       #  74    0xab0e5  1      OPC=nop               
  nop                       #  75    0xab0e6  1      OPC=nop               
  nop                       #  76    0xab0e7  1      OPC=nop               
  nop                       #  77    0xab0e8  1      OPC=nop               
  nop                       #  78    0xab0e9  1      OPC=nop               
  nop                       #  79    0xab0ea  1      OPC=nop               
  nop                       #  80    0xab0eb  1      OPC=nop               
  nop                       #  81    0xab0ec  1      OPC=nop               
  nop                       #  82    0xab0ed  1      OPC=nop               
  nop                       #  83    0xab0ee  1      OPC=nop               
                                                                           
.size _ZNKSs5rfindEcj, .-_ZNKSs5rfindEcj

