  .text
  .globl _ZNKSs4findEcj
  .type _ZNKSs4findEcj, @function

#! file-offset 0xeadc0
#! rip-offset  0xaadc0
#! capacity    128 bytes

# Text                      #  Line  RIP      Bytes  Opcode                
._ZNKSs4findEcj:            #        0xaadc0  0      OPC=<label>           
  movl %edi, %edi           #  1     0xaadc0  2      OPC=movl_r32_r32      
  pushq %rbx                #  2     0xaadc2  1      OPC=pushq_r64_1       
  movl %edi, %edi           #  3     0xaadc3  2      OPC=movl_r32_r32      
  movl (%r15,%rdi,1), %ebx  #  4     0xaadc5  4      OPC=movl_r32_m32      
  leal -0xc(%rbx), %eax     #  5     0xaadc9  3      OPC=leal_r32_m16      
  movl %eax, %eax           #  6     0xaadcc  2      OPC=movl_r32_r32      
  movl (%r15,%rax,1), %eax  #  7     0xaadce  4      OPC=movl_r32_m32      
  cmpl %eax, %edx           #  8     0xaadd2  2      OPC=cmpl_r32_r32      
  jb .L_aae00               #  9     0xaadd4  2      OPC=jb_label          
  nop                       #  10    0xaadd6  1      OPC=nop               
  nop                       #  11    0xaadd7  1      OPC=nop               
  nop                       #  12    0xaadd8  1      OPC=nop               
  nop                       #  13    0xaadd9  1      OPC=nop               
  nop                       #  14    0xaadda  1      OPC=nop               
  nop                       #  15    0xaaddb  1      OPC=nop               
  nop                       #  16    0xaaddc  1      OPC=nop               
  nop                       #  17    0xaaddd  1      OPC=nop               
  nop                       #  18    0xaadde  1      OPC=nop               
  nop                       #  19    0xaaddf  1      OPC=nop               
.L_aade0:                   #        0xaade0  0      OPC=<label>           
  popq %rbx                 #  20    0xaade0  1      OPC=popq_r64_1        
  popq %r11                 #  21    0xaade1  2      OPC=popq_r64_1        
  movl $0xffffffff, %eax    #  22    0xaade3  6      OPC=movl_r32_imm32_1  
  andl $0xffffffe0, %r11d   #  23    0xaade9  7      OPC=andl_r32_imm32    
  nop                       #  24    0xaadf0  1      OPC=nop               
  nop                       #  25    0xaadf1  1      OPC=nop               
  nop                       #  26    0xaadf2  1      OPC=nop               
  nop                       #  27    0xaadf3  1      OPC=nop               
  addq %r15, %r11           #  28    0xaadf4  3      OPC=addq_r64_r64      
  jmpq %r11                 #  29    0xaadf7  3      OPC=jmpq_r64          
  nop                       #  30    0xaadfa  1      OPC=nop               
  nop                       #  31    0xaadfb  1      OPC=nop               
  nop                       #  32    0xaadfc  1      OPC=nop               
  nop                       #  33    0xaadfd  1      OPC=nop               
  nop                       #  34    0xaadfe  1      OPC=nop               
  nop                       #  35    0xaadff  1      OPC=nop               
  nop                       #  36    0xaae00  1      OPC=nop               
  nop                       #  37    0xaae01  1      OPC=nop               
  nop                       #  38    0xaae02  1      OPC=nop               
  nop                       #  39    0xaae03  1      OPC=nop               
  nop                       #  40    0xaae04  1      OPC=nop               
  nop                       #  41    0xaae05  1      OPC=nop               
  nop                       #  42    0xaae06  1      OPC=nop               
  nop                       #  43    0xaae07  1      OPC=nop               
.L_aae00:                   #        0xaae08  0      OPC=<label>           
  subl %edx, %eax           #  44    0xaae08  2      OPC=subl_r32_r32      
  leal (%rdx,%rbx,1), %edi  #  45    0xaae0a  3      OPC=leal_r32_m16      
  movsbl %sil, %esi         #  46    0xaae0d  4      OPC=movsbl_r32_r8     
  movl %eax, %edx           #  47    0xaae11  2      OPC=movl_r32_r32      
  nop                       #  48    0xaae13  1      OPC=nop               
  nop                       #  49    0xaae14  1      OPC=nop               
  nop                       #  50    0xaae15  1      OPC=nop               
  nop                       #  51    0xaae16  1      OPC=nop               
  nop                       #  52    0xaae17  1      OPC=nop               
  nop                       #  53    0xaae18  1      OPC=nop               
  nop                       #  54    0xaae19  1      OPC=nop               
  nop                       #  55    0xaae1a  1      OPC=nop               
  nop                       #  56    0xaae1b  1      OPC=nop               
  nop                       #  57    0xaae1c  1      OPC=nop               
  nop                       #  58    0xaae1d  1      OPC=nop               
  nop                       #  59    0xaae1e  1      OPC=nop               
  nop                       #  60    0xaae1f  1      OPC=nop               
  nop                       #  61    0xaae20  1      OPC=nop               
  nop                       #  62    0xaae21  1      OPC=nop               
  nop                       #  63    0xaae22  1      OPC=nop               
  callq .memchr             #  64    0xaae23  5      OPC=callq_label       
  movl %eax, %eax           #  65    0xaae28  2      OPC=movl_r32_r32      
  testq %rax, %rax          #  66    0xaae2a  3      OPC=testq_r64_r64     
  je .L_aade0               #  67    0xaae2d  2      OPC=je_label          
  subl %ebx, %eax           #  68    0xaae2f  2      OPC=subl_r32_r32      
  popq %rbx                 #  69    0xaae31  1      OPC=popq_r64_1        
  popq %r11                 #  70    0xaae32  2      OPC=popq_r64_1        
  andl $0xffffffe0, %r11d   #  71    0xaae34  7      OPC=andl_r32_imm32    
  nop                       #  72    0xaae3b  1      OPC=nop               
  nop                       #  73    0xaae3c  1      OPC=nop               
  nop                       #  74    0xaae3d  1      OPC=nop               
  nop                       #  75    0xaae3e  1      OPC=nop               
  addq %r15, %r11           #  76    0xaae3f  3      OPC=addq_r64_r64      
  jmpq %r11                 #  77    0xaae42  3      OPC=jmpq_r64          
  nop                       #  78    0xaae45  1      OPC=nop               
  nop                       #  79    0xaae46  1      OPC=nop               
  nop                       #  80    0xaae47  1      OPC=nop               
  nop                       #  81    0xaae48  1      OPC=nop               
  nop                       #  82    0xaae49  1      OPC=nop               
  nop                       #  83    0xaae4a  1      OPC=nop               
  nop                       #  84    0xaae4b  1      OPC=nop               
  nop                       #  85    0xaae4c  1      OPC=nop               
  nop                       #  86    0xaae4d  1      OPC=nop               
  nop                       #  87    0xaae4e  1      OPC=nop               
                                                                           
.size _ZNKSs4findEcj, .-_ZNKSs4findEcj

