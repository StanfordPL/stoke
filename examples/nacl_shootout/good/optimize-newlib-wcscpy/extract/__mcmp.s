  .text
  .globl __mcmp
  .type __mcmp, @function

#! file-offset 0x18a220
#! rip-offset  0x14a220
#! capacity    160 bytes

# Text                          #  Line  RIP       Bytes  Opcode              
.__mcmp:                        #        0x14a220  0      OPC=<label>         
  movl %edi, %edi               #  1     0x14a220  2      OPC=movl_r32_r32    
  movl %esi, %esi               #  2     0x14a222  2      OPC=movl_r32_r32    
  movl %edi, %edi               #  3     0x14a224  2      OPC=movl_r32_r32    
  movl 0x10(%r15,%rdi,1), %eax  #  4     0x14a226  5      OPC=movl_r32_m32    
  movl %esi, %esi               #  5     0x14a22b  2      OPC=movl_r32_r32    
  movl 0x10(%r15,%rsi,1), %edx  #  6     0x14a22d  5      OPC=movl_r32_m32    
  subl %edx, %eax               #  7     0x14a232  2      OPC=subl_r32_r32    
  jne .L_14a280                 #  8     0x14a234  2      OPC=jne_label       
  leal 0x10(,%rdx,4), %edx      #  9     0x14a236  7      OPC=leal_r32_m16    
  leal 0x14(%rdi), %ecx         #  10    0x14a23d  3      OPC=leal_r32_m16    
  leal 0x4(%rdx,%rsi,1), %esi   #  11    0x14a240  4      OPC=leal_r32_m16    
  leal 0x4(%rdx,%rdi,1), %edi   #  12    0x14a244  4      OPC=leal_r32_m16    
  nop                           #  13    0x14a248  1      OPC=nop             
  nop                           #  14    0x14a249  1      OPC=nop             
  nop                           #  15    0x14a24a  1      OPC=nop             
  nop                           #  16    0x14a24b  1      OPC=nop             
  nop                           #  17    0x14a24c  1      OPC=nop             
  nop                           #  18    0x14a24d  1      OPC=nop             
  nop                           #  19    0x14a24e  1      OPC=nop             
  nop                           #  20    0x14a24f  1      OPC=nop             
  nop                           #  21    0x14a250  1      OPC=nop             
  nop                           #  22    0x14a251  1      OPC=nop             
  nop                           #  23    0x14a252  1      OPC=nop             
  nop                           #  24    0x14a253  1      OPC=nop             
  nop                           #  25    0x14a254  1      OPC=nop             
  nop                           #  26    0x14a255  1      OPC=nop             
  nop                           #  27    0x14a256  1      OPC=nop             
  nop                           #  28    0x14a257  1      OPC=nop             
  nop                           #  29    0x14a258  1      OPC=nop             
  nop                           #  30    0x14a259  1      OPC=nop             
  nop                           #  31    0x14a25a  1      OPC=nop             
  nop                           #  32    0x14a25b  1      OPC=nop             
  nop                           #  33    0x14a25c  1      OPC=nop             
  nop                           #  34    0x14a25d  1      OPC=nop             
  nop                           #  35    0x14a25e  1      OPC=nop             
  nop                           #  36    0x14a25f  1      OPC=nop             
.L_14a260:                      #        0x14a260  0      OPC=<label>         
  subl $0x4, %esi               #  37    0x14a260  3      OPC=subl_r32_imm8   
  subl $0x4, %edi               #  38    0x14a263  3      OPC=subl_r32_imm8   
  movl %esi, %esi               #  39    0x14a266  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %edx      #  40    0x14a268  4      OPC=movl_r32_m32    
  movl %edi, %edi               #  41    0x14a26c  2      OPC=movl_r32_r32    
  cmpl %edx, (%r15,%rdi,1)      #  42    0x14a26e  4      OPC=cmpl_m32_r32    
  jne .L_14a2a0                 #  43    0x14a272  2      OPC=jne_label       
  cmpl %edi, %ecx               #  44    0x14a274  2      OPC=cmpl_r32_r32    
  jb .L_14a260                  #  45    0x14a276  2      OPC=jb_label        
  nop                           #  46    0x14a278  1      OPC=nop             
  nop                           #  47    0x14a279  1      OPC=nop             
  nop                           #  48    0x14a27a  1      OPC=nop             
  nop                           #  49    0x14a27b  1      OPC=nop             
  nop                           #  50    0x14a27c  1      OPC=nop             
  nop                           #  51    0x14a27d  1      OPC=nop             
  nop                           #  52    0x14a27e  1      OPC=nop             
  nop                           #  53    0x14a27f  1      OPC=nop             
.L_14a280:                      #        0x14a280  0      OPC=<label>         
  popq %r11                     #  54    0x14a280  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d       #  55    0x14a282  7      OPC=andl_r32_imm32  
  nop                           #  56    0x14a289  1      OPC=nop             
  nop                           #  57    0x14a28a  1      OPC=nop             
  nop                           #  58    0x14a28b  1      OPC=nop             
  nop                           #  59    0x14a28c  1      OPC=nop             
  addq %r15, %r11               #  60    0x14a28d  3      OPC=addq_r64_r64    
  jmpq %r11                     #  61    0x14a290  3      OPC=jmpq_r64        
  nop                           #  62    0x14a293  1      OPC=nop             
  nop                           #  63    0x14a294  1      OPC=nop             
  nop                           #  64    0x14a295  1      OPC=nop             
  nop                           #  65    0x14a296  1      OPC=nop             
  nop                           #  66    0x14a297  1      OPC=nop             
  nop                           #  67    0x14a298  1      OPC=nop             
  nop                           #  68    0x14a299  1      OPC=nop             
  nop                           #  69    0x14a29a  1      OPC=nop             
  nop                           #  70    0x14a29b  1      OPC=nop             
  nop                           #  71    0x14a29c  1      OPC=nop             
  nop                           #  72    0x14a29d  1      OPC=nop             
  nop                           #  73    0x14a29e  1      OPC=nop             
  nop                           #  74    0x14a29f  1      OPC=nop             
  nop                           #  75    0x14a2a0  1      OPC=nop             
  nop                           #  76    0x14a2a1  1      OPC=nop             
  nop                           #  77    0x14a2a2  1      OPC=nop             
  nop                           #  78    0x14a2a3  1      OPC=nop             
  nop                           #  79    0x14a2a4  1      OPC=nop             
  nop                           #  80    0x14a2a5  1      OPC=nop             
  nop                           #  81    0x14a2a6  1      OPC=nop             
.L_14a2a0:                      #        0x14a2a7  0      OPC=<label>         
  sbbl %eax, %eax               #  82    0x14a2a7  2      OPC=sbbl_r32_r32    
  orl $0x1, %eax                #  83    0x14a2a9  3      OPC=orl_r32_imm8    
  popq %r11                     #  84    0x14a2ac  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d       #  85    0x14a2ae  7      OPC=andl_r32_imm32  
  nop                           #  86    0x14a2b5  1      OPC=nop             
  nop                           #  87    0x14a2b6  1      OPC=nop             
  nop                           #  88    0x14a2b7  1      OPC=nop             
  nop                           #  89    0x14a2b8  1      OPC=nop             
  addq %r15, %r11               #  90    0x14a2b9  3      OPC=addq_r64_r64    
  jmpq %r11                     #  91    0x14a2bc  3      OPC=jmpq_r64        
  nop                           #  92    0x14a2bf  1      OPC=nop             
  nop                           #  93    0x14a2c0  1      OPC=nop             
  nop                           #  94    0x14a2c1  1      OPC=nop             
  nop                           #  95    0x14a2c2  1      OPC=nop             
  nop                           #  96    0x14a2c3  1      OPC=nop             
  nop                           #  97    0x14a2c4  1      OPC=nop             
  nop                           #  98    0x14a2c5  1      OPC=nop             
  nop                           #  99    0x14a2c6  1      OPC=nop             
  nop                           #  100   0x14a2c7  1      OPC=nop             
  nop                           #  101   0x14a2c8  1      OPC=nop             
  nop                           #  102   0x14a2c9  1      OPC=nop             
  nop                           #  103   0x14a2ca  1      OPC=nop             
  nop                           #  104   0x14a2cb  1      OPC=nop             
  nop                           #  105   0x14a2cc  1      OPC=nop             
  nop                           #  106   0x14a2cd  1      OPC=nop             
                                                                              
.size __mcmp, .-__mcmp

