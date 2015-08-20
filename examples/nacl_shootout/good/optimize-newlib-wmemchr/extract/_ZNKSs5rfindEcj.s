  .text
  .globl _ZNKSs5rfindEcj
  .type _ZNKSs5rfindEcj, @function

#! file-offset 0xea940
#! rip-offset  0xaa940
#! capacity    128 bytes

# Text                      #  Line  RIP      Bytes  Opcode                
._ZNKSs5rfindEcj:           #        0xaa940  0      OPC=<label>           
  movl %edi, %edi           #  1     0xaa940  2      OPC=movl_r32_r32      
  movl %edi, %edi           #  2     0xaa942  2      OPC=movl_r32_r32      
  movl (%r15,%rdi,1), %ecx  #  3     0xaa944  4      OPC=movl_r32_m32      
  leal -0xc(%rcx), %eax     #  4     0xaa948  3      OPC=leal_r32_m16      
  movl %eax, %eax           #  5     0xaa94b  2      OPC=movl_r32_r32      
  movl (%r15,%rax,1), %eax  #  6     0xaa94d  4      OPC=movl_r32_m32      
  testl %eax, %eax          #  7     0xaa951  2      OPC=testl_r32_r32     
  je .L_aa9a0               #  8     0xaa953  2      OPC=je_label          
  subl $0x1, %eax           #  9     0xaa955  3      OPC=subl_r32_imm8     
  cmpl %eax, %edx           #  10    0xaa958  2      OPC=cmpl_r32_r32      
  cmoval %eax, %edx         #  11    0xaa95a  3      OPC=cmoval_r32_r32    
  leal 0x1(%rdx), %eax      #  12    0xaa95d  3      OPC=leal_r32_m16      
  addl %ecx, %edx           #  13    0xaa960  2      OPC=addl_r32_r32      
  nop                       #  14    0xaa962  1      OPC=nop               
  nop                       #  15    0xaa963  1      OPC=nop               
  nop                       #  16    0xaa964  1      OPC=nop               
  nop                       #  17    0xaa965  1      OPC=nop               
  nop                       #  18    0xaa966  1      OPC=nop               
  nop                       #  19    0xaa967  1      OPC=nop               
  nop                       #  20    0xaa968  1      OPC=nop               
  nop                       #  21    0xaa969  1      OPC=nop               
  nop                       #  22    0xaa96a  1      OPC=nop               
  nop                       #  23    0xaa96b  1      OPC=nop               
  nop                       #  24    0xaa96c  1      OPC=nop               
  nop                       #  25    0xaa96d  1      OPC=nop               
  nop                       #  26    0xaa96e  1      OPC=nop               
  nop                       #  27    0xaa96f  1      OPC=nop               
  nop                       #  28    0xaa970  1      OPC=nop               
  nop                       #  29    0xaa971  1      OPC=nop               
  nop                       #  30    0xaa972  1      OPC=nop               
  nop                       #  31    0xaa973  1      OPC=nop               
  nop                       #  32    0xaa974  1      OPC=nop               
  nop                       #  33    0xaa975  1      OPC=nop               
  nop                       #  34    0xaa976  1      OPC=nop               
  nop                       #  35    0xaa977  1      OPC=nop               
  nop                       #  36    0xaa978  1      OPC=nop               
  nop                       #  37    0xaa979  1      OPC=nop               
  nop                       #  38    0xaa97a  1      OPC=nop               
  nop                       #  39    0xaa97b  1      OPC=nop               
  nop                       #  40    0xaa97c  1      OPC=nop               
  nop                       #  41    0xaa97d  1      OPC=nop               
  nop                       #  42    0xaa97e  1      OPC=nop               
  nop                       #  43    0xaa97f  1      OPC=nop               
.L_aa980:                   #        0xaa980  0      OPC=<label>           
  testl %eax, %eax          #  44    0xaa980  2      OPC=testl_r32_r32     
  je .L_aa9a0               #  45    0xaa982  2      OPC=je_label          
  movl %edx, %ecx           #  46    0xaa984  2      OPC=movl_r32_r32      
  subl $0x1, %eax           #  47    0xaa986  3      OPC=subl_r32_imm8     
  subl $0x1, %edx           #  48    0xaa989  3      OPC=subl_r32_imm8     
  movl %ecx, %ecx           #  49    0xaa98c  2      OPC=movl_r32_r32      
  cmpb (%r15,%rcx,1), %sil  #  50    0xaa98e  4      OPC=cmpb_r8_m8        
  jne .L_aa980              #  51    0xaa992  2      OPC=jne_label         
  popq %r11                 #  52    0xaa994  2      OPC=popq_r64_1        
  andl $0xffffffe0, %r11d   #  53    0xaa996  7      OPC=andl_r32_imm32    
  nop                       #  54    0xaa99d  1      OPC=nop               
  nop                       #  55    0xaa99e  1      OPC=nop               
  nop                       #  56    0xaa99f  1      OPC=nop               
  nop                       #  57    0xaa9a0  1      OPC=nop               
  addq %r15, %r11           #  58    0xaa9a1  3      OPC=addq_r64_r64      
  jmpq %r11                 #  59    0xaa9a4  3      OPC=jmpq_r64          
.L_aa9a0:                   #        0xaa9a7  0      OPC=<label>           
  movl $0xffffffff, %eax    #  60    0xaa9a7  6      OPC=movl_r32_imm32_1  
  popq %r11                 #  61    0xaa9ad  2      OPC=popq_r64_1        
  andl $0xffffffe0, %r11d   #  62    0xaa9af  7      OPC=andl_r32_imm32    
  nop                       #  63    0xaa9b6  1      OPC=nop               
  nop                       #  64    0xaa9b7  1      OPC=nop               
  nop                       #  65    0xaa9b8  1      OPC=nop               
  nop                       #  66    0xaa9b9  1      OPC=nop               
  addq %r15, %r11           #  67    0xaa9ba  3      OPC=addq_r64_r64      
  jmpq %r11                 #  68    0xaa9bd  3      OPC=jmpq_r64          
  nop                       #  69    0xaa9c0  1      OPC=nop               
  nop                       #  70    0xaa9c1  1      OPC=nop               
  nop                       #  71    0xaa9c2  1      OPC=nop               
  nop                       #  72    0xaa9c3  1      OPC=nop               
  nop                       #  73    0xaa9c4  1      OPC=nop               
  nop                       #  74    0xaa9c5  1      OPC=nop               
  nop                       #  75    0xaa9c6  1      OPC=nop               
  nop                       #  76    0xaa9c7  1      OPC=nop               
  nop                       #  77    0xaa9c8  1      OPC=nop               
  nop                       #  78    0xaa9c9  1      OPC=nop               
  nop                       #  79    0xaa9ca  1      OPC=nop               
  nop                       #  80    0xaa9cb  1      OPC=nop               
  nop                       #  81    0xaa9cc  1      OPC=nop               
  nop                       #  82    0xaa9cd  1      OPC=nop               
  nop                       #  83    0xaa9ce  1      OPC=nop               
                                                                           
.size _ZNKSs5rfindEcj, .-_ZNKSs5rfindEcj

