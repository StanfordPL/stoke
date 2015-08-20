  .text
  .globl __mcmp
  .type __mcmp, @function

#! file-offset 0x18a5c0
#! rip-offset  0x14a5c0
#! capacity    160 bytes

# Text                          #  Line  RIP       Bytes  Opcode              
.__mcmp:                        #        0x14a5c0  0      OPC=<label>         
  movl %edi, %edi               #  1     0x14a5c0  2      OPC=movl_r32_r32    
  movl %esi, %esi               #  2     0x14a5c2  2      OPC=movl_r32_r32    
  movl %edi, %edi               #  3     0x14a5c4  2      OPC=movl_r32_r32    
  movl 0x10(%r15,%rdi,1), %eax  #  4     0x14a5c6  5      OPC=movl_r32_m32    
  movl %esi, %esi               #  5     0x14a5cb  2      OPC=movl_r32_r32    
  movl 0x10(%r15,%rsi,1), %edx  #  6     0x14a5cd  5      OPC=movl_r32_m32    
  subl %edx, %eax               #  7     0x14a5d2  2      OPC=subl_r32_r32    
  jne .L_14a620                 #  8     0x14a5d4  2      OPC=jne_label       
  leal 0x10(,%rdx,4), %edx      #  9     0x14a5d6  7      OPC=leal_r32_m16    
  leal 0x14(%rdi), %ecx         #  10    0x14a5dd  3      OPC=leal_r32_m16    
  leal 0x4(%rdx,%rsi,1), %esi   #  11    0x14a5e0  4      OPC=leal_r32_m16    
  leal 0x4(%rdx,%rdi,1), %edi   #  12    0x14a5e4  4      OPC=leal_r32_m16    
  nop                           #  13    0x14a5e8  1      OPC=nop             
  nop                           #  14    0x14a5e9  1      OPC=nop             
  nop                           #  15    0x14a5ea  1      OPC=nop             
  nop                           #  16    0x14a5eb  1      OPC=nop             
  nop                           #  17    0x14a5ec  1      OPC=nop             
  nop                           #  18    0x14a5ed  1      OPC=nop             
  nop                           #  19    0x14a5ee  1      OPC=nop             
  nop                           #  20    0x14a5ef  1      OPC=nop             
  nop                           #  21    0x14a5f0  1      OPC=nop             
  nop                           #  22    0x14a5f1  1      OPC=nop             
  nop                           #  23    0x14a5f2  1      OPC=nop             
  nop                           #  24    0x14a5f3  1      OPC=nop             
  nop                           #  25    0x14a5f4  1      OPC=nop             
  nop                           #  26    0x14a5f5  1      OPC=nop             
  nop                           #  27    0x14a5f6  1      OPC=nop             
  nop                           #  28    0x14a5f7  1      OPC=nop             
  nop                           #  29    0x14a5f8  1      OPC=nop             
  nop                           #  30    0x14a5f9  1      OPC=nop             
  nop                           #  31    0x14a5fa  1      OPC=nop             
  nop                           #  32    0x14a5fb  1      OPC=nop             
  nop                           #  33    0x14a5fc  1      OPC=nop             
  nop                           #  34    0x14a5fd  1      OPC=nop             
  nop                           #  35    0x14a5fe  1      OPC=nop             
  nop                           #  36    0x14a5ff  1      OPC=nop             
.L_14a600:                      #        0x14a600  0      OPC=<label>         
  subl $0x4, %esi               #  37    0x14a600  3      OPC=subl_r32_imm8   
  subl $0x4, %edi               #  38    0x14a603  3      OPC=subl_r32_imm8   
  movl %esi, %esi               #  39    0x14a606  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %edx      #  40    0x14a608  4      OPC=movl_r32_m32    
  movl %edi, %edi               #  41    0x14a60c  2      OPC=movl_r32_r32    
  cmpl %edx, (%r15,%rdi,1)      #  42    0x14a60e  4      OPC=cmpl_m32_r32    
  jne .L_14a640                 #  43    0x14a612  2      OPC=jne_label       
  cmpl %edi, %ecx               #  44    0x14a614  2      OPC=cmpl_r32_r32    
  jb .L_14a600                  #  45    0x14a616  2      OPC=jb_label        
  nop                           #  46    0x14a618  1      OPC=nop             
  nop                           #  47    0x14a619  1      OPC=nop             
  nop                           #  48    0x14a61a  1      OPC=nop             
  nop                           #  49    0x14a61b  1      OPC=nop             
  nop                           #  50    0x14a61c  1      OPC=nop             
  nop                           #  51    0x14a61d  1      OPC=nop             
  nop                           #  52    0x14a61e  1      OPC=nop             
  nop                           #  53    0x14a61f  1      OPC=nop             
.L_14a620:                      #        0x14a620  0      OPC=<label>         
  popq %r11                     #  54    0x14a620  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d       #  55    0x14a622  7      OPC=andl_r32_imm32  
  nop                           #  56    0x14a629  1      OPC=nop             
  nop                           #  57    0x14a62a  1      OPC=nop             
  nop                           #  58    0x14a62b  1      OPC=nop             
  nop                           #  59    0x14a62c  1      OPC=nop             
  addq %r15, %r11               #  60    0x14a62d  3      OPC=addq_r64_r64    
  jmpq %r11                     #  61    0x14a630  3      OPC=jmpq_r64        
  nop                           #  62    0x14a633  1      OPC=nop             
  nop                           #  63    0x14a634  1      OPC=nop             
  nop                           #  64    0x14a635  1      OPC=nop             
  nop                           #  65    0x14a636  1      OPC=nop             
  nop                           #  66    0x14a637  1      OPC=nop             
  nop                           #  67    0x14a638  1      OPC=nop             
  nop                           #  68    0x14a639  1      OPC=nop             
  nop                           #  69    0x14a63a  1      OPC=nop             
  nop                           #  70    0x14a63b  1      OPC=nop             
  nop                           #  71    0x14a63c  1      OPC=nop             
  nop                           #  72    0x14a63d  1      OPC=nop             
  nop                           #  73    0x14a63e  1      OPC=nop             
  nop                           #  74    0x14a63f  1      OPC=nop             
  nop                           #  75    0x14a640  1      OPC=nop             
  nop                           #  76    0x14a641  1      OPC=nop             
  nop                           #  77    0x14a642  1      OPC=nop             
  nop                           #  78    0x14a643  1      OPC=nop             
  nop                           #  79    0x14a644  1      OPC=nop             
  nop                           #  80    0x14a645  1      OPC=nop             
  nop                           #  81    0x14a646  1      OPC=nop             
.L_14a640:                      #        0x14a647  0      OPC=<label>         
  sbbl %eax, %eax               #  82    0x14a647  2      OPC=sbbl_r32_r32    
  orl $0x1, %eax                #  83    0x14a649  3      OPC=orl_r32_imm8    
  popq %r11                     #  84    0x14a64c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d       #  85    0x14a64e  7      OPC=andl_r32_imm32  
  nop                           #  86    0x14a655  1      OPC=nop             
  nop                           #  87    0x14a656  1      OPC=nop             
  nop                           #  88    0x14a657  1      OPC=nop             
  nop                           #  89    0x14a658  1      OPC=nop             
  addq %r15, %r11               #  90    0x14a659  3      OPC=addq_r64_r64    
  jmpq %r11                     #  91    0x14a65c  3      OPC=jmpq_r64        
  nop                           #  92    0x14a65f  1      OPC=nop             
  nop                           #  93    0x14a660  1      OPC=nop             
  nop                           #  94    0x14a661  1      OPC=nop             
  nop                           #  95    0x14a662  1      OPC=nop             
  nop                           #  96    0x14a663  1      OPC=nop             
  nop                           #  97    0x14a664  1      OPC=nop             
  nop                           #  98    0x14a665  1      OPC=nop             
  nop                           #  99    0x14a666  1      OPC=nop             
  nop                           #  100   0x14a667  1      OPC=nop             
  nop                           #  101   0x14a668  1      OPC=nop             
  nop                           #  102   0x14a669  1      OPC=nop             
  nop                           #  103   0x14a66a  1      OPC=nop             
  nop                           #  104   0x14a66b  1      OPC=nop             
  nop                           #  105   0x14a66c  1      OPC=nop             
  nop                           #  106   0x14a66d  1      OPC=nop             
                                                                              
.size __mcmp, .-__mcmp

