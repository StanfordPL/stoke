  .text
  .globl _ZNKSs5rfindEcj
  .type _ZNKSs5rfindEcj, @function

#! file-offset 0xea640
#! rip-offset  0xaa640
#! capacity    128 bytes

# Text                      #  Line  RIP      Bytes  Opcode                
._ZNKSs5rfindEcj:           #        0xaa640  0      OPC=<label>           
  movl %edi, %edi           #  1     0xaa640  2      OPC=movl_r32_r32      
  movl %edi, %edi           #  2     0xaa642  2      OPC=movl_r32_r32      
  movl (%r15,%rdi,1), %ecx  #  3     0xaa644  4      OPC=movl_r32_m32      
  leal -0xc(%rcx), %eax     #  4     0xaa648  3      OPC=leal_r32_m16      
  movl %eax, %eax           #  5     0xaa64b  2      OPC=movl_r32_r32      
  movl (%r15,%rax,1), %eax  #  6     0xaa64d  4      OPC=movl_r32_m32      
  testl %eax, %eax          #  7     0xaa651  2      OPC=testl_r32_r32     
  je .L_aa6a0               #  8     0xaa653  2      OPC=je_label          
  subl $0x1, %eax           #  9     0xaa655  3      OPC=subl_r32_imm8     
  cmpl %eax, %edx           #  10    0xaa658  2      OPC=cmpl_r32_r32      
  cmoval %eax, %edx         #  11    0xaa65a  3      OPC=cmoval_r32_r32    
  leal 0x1(%rdx), %eax      #  12    0xaa65d  3      OPC=leal_r32_m16      
  addl %ecx, %edx           #  13    0xaa660  2      OPC=addl_r32_r32      
  nop                       #  14    0xaa662  1      OPC=nop               
  nop                       #  15    0xaa663  1      OPC=nop               
  nop                       #  16    0xaa664  1      OPC=nop               
  nop                       #  17    0xaa665  1      OPC=nop               
  nop                       #  18    0xaa666  1      OPC=nop               
  nop                       #  19    0xaa667  1      OPC=nop               
  nop                       #  20    0xaa668  1      OPC=nop               
  nop                       #  21    0xaa669  1      OPC=nop               
  nop                       #  22    0xaa66a  1      OPC=nop               
  nop                       #  23    0xaa66b  1      OPC=nop               
  nop                       #  24    0xaa66c  1      OPC=nop               
  nop                       #  25    0xaa66d  1      OPC=nop               
  nop                       #  26    0xaa66e  1      OPC=nop               
  nop                       #  27    0xaa66f  1      OPC=nop               
  nop                       #  28    0xaa670  1      OPC=nop               
  nop                       #  29    0xaa671  1      OPC=nop               
  nop                       #  30    0xaa672  1      OPC=nop               
  nop                       #  31    0xaa673  1      OPC=nop               
  nop                       #  32    0xaa674  1      OPC=nop               
  nop                       #  33    0xaa675  1      OPC=nop               
  nop                       #  34    0xaa676  1      OPC=nop               
  nop                       #  35    0xaa677  1      OPC=nop               
  nop                       #  36    0xaa678  1      OPC=nop               
  nop                       #  37    0xaa679  1      OPC=nop               
  nop                       #  38    0xaa67a  1      OPC=nop               
  nop                       #  39    0xaa67b  1      OPC=nop               
  nop                       #  40    0xaa67c  1      OPC=nop               
  nop                       #  41    0xaa67d  1      OPC=nop               
  nop                       #  42    0xaa67e  1      OPC=nop               
  nop                       #  43    0xaa67f  1      OPC=nop               
.L_aa680:                   #        0xaa680  0      OPC=<label>           
  testl %eax, %eax          #  44    0xaa680  2      OPC=testl_r32_r32     
  je .L_aa6a0               #  45    0xaa682  2      OPC=je_label          
  movl %edx, %ecx           #  46    0xaa684  2      OPC=movl_r32_r32      
  subl $0x1, %eax           #  47    0xaa686  3      OPC=subl_r32_imm8     
  subl $0x1, %edx           #  48    0xaa689  3      OPC=subl_r32_imm8     
  movl %ecx, %ecx           #  49    0xaa68c  2      OPC=movl_r32_r32      
  cmpb (%r15,%rcx,1), %sil  #  50    0xaa68e  4      OPC=cmpb_r8_m8        
  jne .L_aa680              #  51    0xaa692  2      OPC=jne_label         
  popq %r11                 #  52    0xaa694  2      OPC=popq_r64_1        
  andl $0xffffffe0, %r11d   #  53    0xaa696  7      OPC=andl_r32_imm32    
  nop                       #  54    0xaa69d  1      OPC=nop               
  nop                       #  55    0xaa69e  1      OPC=nop               
  nop                       #  56    0xaa69f  1      OPC=nop               
  nop                       #  57    0xaa6a0  1      OPC=nop               
  addq %r15, %r11           #  58    0xaa6a1  3      OPC=addq_r64_r64      
  jmpq %r11                 #  59    0xaa6a4  3      OPC=jmpq_r64          
.L_aa6a0:                   #        0xaa6a7  0      OPC=<label>           
  movl $0xffffffff, %eax    #  60    0xaa6a7  6      OPC=movl_r32_imm32_1  
  popq %r11                 #  61    0xaa6ad  2      OPC=popq_r64_1        
  andl $0xffffffe0, %r11d   #  62    0xaa6af  7      OPC=andl_r32_imm32    
  nop                       #  63    0xaa6b6  1      OPC=nop               
  nop                       #  64    0xaa6b7  1      OPC=nop               
  nop                       #  65    0xaa6b8  1      OPC=nop               
  nop                       #  66    0xaa6b9  1      OPC=nop               
  addq %r15, %r11           #  67    0xaa6ba  3      OPC=addq_r64_r64      
  jmpq %r11                 #  68    0xaa6bd  3      OPC=jmpq_r64          
  nop                       #  69    0xaa6c0  1      OPC=nop               
  nop                       #  70    0xaa6c1  1      OPC=nop               
  nop                       #  71    0xaa6c2  1      OPC=nop               
  nop                       #  72    0xaa6c3  1      OPC=nop               
  nop                       #  73    0xaa6c4  1      OPC=nop               
  nop                       #  74    0xaa6c5  1      OPC=nop               
  nop                       #  75    0xaa6c6  1      OPC=nop               
  nop                       #  76    0xaa6c7  1      OPC=nop               
  nop                       #  77    0xaa6c8  1      OPC=nop               
  nop                       #  78    0xaa6c9  1      OPC=nop               
  nop                       #  79    0xaa6ca  1      OPC=nop               
  nop                       #  80    0xaa6cb  1      OPC=nop               
  nop                       #  81    0xaa6cc  1      OPC=nop               
  nop                       #  82    0xaa6cd  1      OPC=nop               
  nop                       #  83    0xaa6ce  1      OPC=nop               
                                                                           
.size _ZNKSs5rfindEcj, .-_ZNKSs5rfindEcj

