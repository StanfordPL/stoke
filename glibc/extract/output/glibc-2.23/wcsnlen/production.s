  .text
  .globl wcsnlen
  .type wcsnlen, @function

#! file-offset 0x9ad60
#! rip-offset  0x9ad60
#! capacity    176 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
.wcsnlen:                       #        0x9ad60  0      OPC=<label>         
  testq %rsi, %rsi              #  1     0x9ad60  3      OPC=testq_r64_r64   
  je .L_9ade1                   #  2     0x9ad63  2      OPC=je_label        
  movl (%rdi), %eax             #  3     0x9ad65  2      OPC=movl_r32_m32    
  testl %eax, %eax              #  4     0x9ad67  2      OPC=testl_r32_r32   
  je .L_9ade1                   #  5     0x9ad69  2      OPC=je_label        
  cmpq $0x1, %rsi               #  6     0x9ad6b  4      OPC=cmpq_r64_imm8   
  je .L_9adfa                   #  7     0x9ad6f  6      OPC=je_label_1      
  movl 0x4(%rdi), %r11d         #  8     0x9ad75  4      OPC=movl_r32_m32    
  testl %r11d, %r11d            #  9     0x9ad79  3      OPC=testl_r32_r32   
  je .L_9adfa                   #  10    0x9ad7c  2      OPC=je_label        
  cmpq $0x2, %rsi               #  11    0x9ad7e  4      OPC=cmpq_r64_imm8   
  je .L_9ae00                   #  12    0x9ad82  2      OPC=je_label        
  movl $0x2, %edx               #  13    0x9ad84  5      OPC=movl_r32_imm32  
  jmpq .L_9add4                 #  14    0x9ad89  2      OPC=jmpq_label      
  nop                           #  15    0x9ad8b  1      OPC=nop             
  nop                           #  16    0x9ad8c  1      OPC=nop             
  nop                           #  17    0x9ad8d  1      OPC=nop             
  nop                           #  18    0x9ad8e  1      OPC=nop             
  nop                           #  19    0x9ad8f  1      OPC=nop             
.L_9ad90:                       #        0x9ad90  0      OPC=<label>         
  cmpq $0x3, %rsi               #  20    0x9ad90  4      OPC=cmpq_r64_imm8   
  leaq 0x1(%rdx), %rax          #  21    0x9ad94  4      OPC=leaq_r64_m16    
  je .L_9ade8                   #  22    0x9ad98  2      OPC=je_label        
  movl 0x4(%rdi,%rdx,4), %r8d   #  23    0x9ad9a  5      OPC=movl_r32_m32    
  testl %r8d, %r8d              #  24    0x9ad9f  3      OPC=testl_r32_r32   
  je .L_9ade8                   #  25    0x9ada2  2      OPC=je_label        
  subq $0x4, %rsi               #  26    0x9ada4  4      OPC=subq_r64_imm8   
  leaq 0x2(%rdx), %rax          #  27    0x9ada8  4      OPC=leaq_r64_m16    
  je .L_9ade8                   #  28    0x9adac  2      OPC=je_label        
  movl 0x8(%rdi,%rdx,4), %ecx   #  29    0x9adae  4      OPC=movl_r32_m32    
  testl %ecx, %ecx              #  30    0x9adb2  2      OPC=testl_r32_r32   
  je .L_9adf0                   #  31    0x9adb4  2      OPC=je_label        
  cmpq $0x1, %rsi               #  32    0x9adb6  4      OPC=cmpq_r64_imm8   
  leaq 0x3(%rdx), %rax          #  33    0x9adba  4      OPC=leaq_r64_m16    
  je .L_9ade8                   #  34    0x9adbe  2      OPC=je_label        
  movl 0xc(%rdi,%rdx,4), %r10d  #  35    0x9adc0  5      OPC=movl_r32_m32    
  testl %r10d, %r10d            #  36    0x9adc5  3      OPC=testl_r32_r32   
  je .L_9adf8                   #  37    0x9adc8  2      OPC=je_label        
  addq $0x4, %rdx               #  38    0x9adca  4      OPC=addq_r64_imm8   
  cmpq $0x2, %rsi               #  39    0x9adce  4      OPC=cmpq_r64_imm8   
  je .L_9addd                   #  40    0x9add2  2      OPC=je_label        
.L_9add4:                       #        0x9add4  0      OPC=<label>         
  movl (%rdi,%rdx,4), %r9d      #  41    0x9add4  4      OPC=movl_r32_m32    
  testl %r9d, %r9d              #  42    0x9add8  3      OPC=testl_r32_r32   
  jne .L_9ad90                  #  43    0x9addb  2      OPC=jne_label       
.L_9addd:                       #        0x9addd  0      OPC=<label>         
  movq %rdx, %rax               #  44    0x9addd  3      OPC=movq_r64_r64    
  retq                          #  45    0x9ade0  1      OPC=retq            
.L_9ade1:                       #        0x9ade1  0      OPC=<label>         
  xorl %eax, %eax               #  46    0x9ade1  2      OPC=xorl_r32_r32    
  nop                           #  47    0x9ade3  1      OPC=nop             
  nop                           #  48    0x9ade4  1      OPC=nop             
  nop                           #  49    0x9ade5  1      OPC=nop             
  nop                           #  50    0x9ade6  1      OPC=nop             
  nop                           #  51    0x9ade7  1      OPC=nop             
.L_9ade8:                       #        0x9ade8  0      OPC=<label>         
  retq                          #  52    0x9ade8  1      OPC=retq            
  nop                           #  53    0x9ade9  1      OPC=nop             
  nop                           #  54    0x9adea  1      OPC=nop             
  nop                           #  55    0x9adeb  1      OPC=nop             
  nop                           #  56    0x9adec  1      OPC=nop             
  nop                           #  57    0x9aded  1      OPC=nop             
  nop                           #  58    0x9adee  1      OPC=nop             
  nop                           #  59    0x9adef  1      OPC=nop             
.L_9adf0:                       #        0x9adf0  0      OPC=<label>         
  retq                          #  60    0x9adf0  1      OPC=retq            
  nop                           #  61    0x9adf1  1      OPC=nop             
  nop                           #  62    0x9adf2  1      OPC=nop             
  nop                           #  63    0x9adf3  1      OPC=nop             
  nop                           #  64    0x9adf4  1      OPC=nop             
  nop                           #  65    0x9adf5  1      OPC=nop             
  nop                           #  66    0x9adf6  1      OPC=nop             
  nop                           #  67    0x9adf7  1      OPC=nop             
.L_9adf8:                       #        0x9adf8  0      OPC=<label>         
  retq                          #  68    0x9adf8  1      OPC=retq            
  nop                           #  69    0x9adf9  1      OPC=nop             
.L_9adfa:                       #        0x9adfa  0      OPC=<label>         
  movl $0x1, %eax               #  70    0x9adfa  5      OPC=movl_r32_imm32  
  retq                          #  71    0x9adff  1      OPC=retq            
.L_9ae00:                       #        0x9ae00  0      OPC=<label>         
  movl $0x2, %edx               #  72    0x9ae00  5      OPC=movl_r32_imm32  
  jmpq .L_9addd                 #  73    0x9ae05  2      OPC=jmpq_label      
  nop                           #  74    0x9ae07  1      OPC=nop             
  nop                           #  75    0x9ae08  1      OPC=nop             
  nop                           #  76    0x9ae09  1      OPC=nop             
  nop                           #  77    0x9ae0a  1      OPC=nop             
  nop                           #  78    0x9ae0b  1      OPC=nop             
  nop                           #  79    0x9ae0c  1      OPC=nop             
  nop                           #  80    0x9ae0d  1      OPC=nop             
  nop                           #  81    0x9ae0e  1      OPC=nop             
  nop                           #  82    0x9ae0f  1      OPC=nop             
                                                                             
.size wcsnlen, .-wcsnlen

