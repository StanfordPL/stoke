  .text
  .globl strncasecmp
  .type strncasecmp, @function

#! file-offset 0x169440
#! rip-offset  0x129440
#! capacity    192 bytes

# Text                           #  Line  RIP       Bytes  Opcode              
.strncasecmp:                    #        0x129440  0      OPC=<label>         
  xorl %eax, %eax                #  1     0x129440  2      OPC=xorl_r32_r32    
  testl %edx, %edx               #  2     0x129442  2      OPC=testl_r32_r32   
  movl %edi, %edi                #  3     0x129444  2      OPC=movl_r32_r32    
  movl %esi, %esi                #  4     0x129446  2      OPC=movl_r32_r32    
  je .L_1294e0                   #  5     0x129448  6      OPC=je_label_1      
  movl 0xff4750b(%rip), %r9d     #  6     0x12944e  7      OPC=movl_r32_m32    
  jmpq .L_129480                 #  7     0x129455  2      OPC=jmpq_label      
  nop                            #  8     0x129457  1      OPC=nop             
  nop                            #  9     0x129458  1      OPC=nop             
  nop                            #  10    0x129459  1      OPC=nop             
  nop                            #  11    0x12945a  1      OPC=nop             
  nop                            #  12    0x12945b  1      OPC=nop             
  nop                            #  13    0x12945c  1      OPC=nop             
  nop                            #  14    0x12945d  1      OPC=nop             
  nop                            #  15    0x12945e  1      OPC=nop             
  nop                            #  16    0x12945f  1      OPC=nop             
.L_129460:                       #        0x129460  0      OPC=<label>         
  testl %ecx, %ecx               #  17    0x129460  2      OPC=testl_r32_r32   
  je .L_1294e0                   #  18    0x129462  2      OPC=je_label        
  subl $0x1, %edx                #  19    0x129464  3      OPC=subl_r32_imm8   
  je .L_1294e0                   #  20    0x129467  2      OPC=je_label        
  addl $0x1, %esi                #  21    0x129469  3      OPC=addl_r32_imm8   
  nop                            #  22    0x12946c  1      OPC=nop             
  nop                            #  23    0x12946d  1      OPC=nop             
  nop                            #  24    0x12946e  1      OPC=nop             
  nop                            #  25    0x12946f  1      OPC=nop             
  nop                            #  26    0x129470  1      OPC=nop             
  nop                            #  27    0x129471  1      OPC=nop             
  nop                            #  28    0x129472  1      OPC=nop             
  nop                            #  29    0x129473  1      OPC=nop             
  nop                            #  30    0x129474  1      OPC=nop             
  nop                            #  31    0x129475  1      OPC=nop             
  nop                            #  32    0x129476  1      OPC=nop             
  nop                            #  33    0x129477  1      OPC=nop             
  nop                            #  34    0x129478  1      OPC=nop             
  nop                            #  35    0x129479  1      OPC=nop             
  nop                            #  36    0x12947a  1      OPC=nop             
  nop                            #  37    0x12947b  1      OPC=nop             
  nop                            #  38    0x12947c  1      OPC=nop             
  nop                            #  39    0x12947d  1      OPC=nop             
  nop                            #  40    0x12947e  1      OPC=nop             
  nop                            #  41    0x12947f  1      OPC=nop             
.L_129480:                       #        0x129480  0      OPC=<label>         
  movl %edi, %edi                #  42    0x129480  2      OPC=movl_r32_r32    
  movzbl (%r15,%rdi,1), %eax     #  43    0x129482  5      OPC=movzbl_r32_m8   
  addl $0x1, %edi                #  44    0x129487  3      OPC=addl_r32_imm8   
  movzbl %al, %eax               #  45    0x12948a  3      OPC=movzbl_r32_r8   
  leal (%rax,%r9,1), %ecx        #  46    0x12948d  4      OPC=leal_r32_m16    
  leal 0x20(%rax), %r8d          #  47    0x129491  4      OPC=leal_r32_m16    
  movl %ecx, %ecx                #  48    0x129495  2      OPC=movl_r32_r32    
  movsbl 0x1(%r15,%rcx,1), %ecx  #  49    0x129497  6      OPC=movsbl_r32_m8   
  andl $0x3, %ecx                #  50    0x12949d  3      OPC=andl_r32_imm8   
  cmpl $0x1, %ecx                #  51    0x1294a0  3      OPC=cmpl_r32_imm8   
  movl %esi, %esi                #  52    0x1294a3  2      OPC=movl_r32_r32    
  movzbl (%r15,%rsi,1), %ecx     #  53    0x1294a5  5      OPC=movzbl_r32_m8   
  cmovel %r8d, %eax              #  54    0x1294aa  4      OPC=cmovel_r32_r32  
  leal (%rcx,%r9,1), %r8d        #  55    0x1294ae  4      OPC=leal_r32_m16    
  leal 0x20(%rcx), %r10d         #  56    0x1294b2  4      OPC=leal_r32_m16    
  movl %r8d, %r8d                #  57    0x1294b6  3      OPC=movl_r32_r32    
  movsbl 0x1(%r15,%r8,1), %r8d   #  58    0x1294b9  6      OPC=movsbl_r32_m8   
  nop                            #  59    0x1294bf  1      OPC=nop             
  andl $0x3, %r8d                #  60    0x1294c0  4      OPC=andl_r32_imm8   
  cmpl $0x1, %r8d                #  61    0x1294c4  4      OPC=cmpl_r32_imm8   
  cmovel %r10d, %ecx             #  62    0x1294c8  4      OPC=cmovel_r32_r32  
  subl %ecx, %eax                #  63    0x1294cc  2      OPC=subl_r32_r32    
  je .L_129460                   #  64    0x1294ce  2      OPC=je_label        
  nop                            #  65    0x1294d0  1      OPC=nop             
  nop                            #  66    0x1294d1  1      OPC=nop             
  nop                            #  67    0x1294d2  1      OPC=nop             
  nop                            #  68    0x1294d3  1      OPC=nop             
  nop                            #  69    0x1294d4  1      OPC=nop             
  nop                            #  70    0x1294d5  1      OPC=nop             
  nop                            #  71    0x1294d6  1      OPC=nop             
  nop                            #  72    0x1294d7  1      OPC=nop             
  nop                            #  73    0x1294d8  1      OPC=nop             
  nop                            #  74    0x1294d9  1      OPC=nop             
  nop                            #  75    0x1294da  1      OPC=nop             
  nop                            #  76    0x1294db  1      OPC=nop             
  nop                            #  77    0x1294dc  1      OPC=nop             
  nop                            #  78    0x1294dd  1      OPC=nop             
  nop                            #  79    0x1294de  1      OPC=nop             
  nop                            #  80    0x1294df  1      OPC=nop             
.L_1294e0:                       #        0x1294e0  0      OPC=<label>         
  popq %r11                      #  81    0x1294e0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d        #  82    0x1294e2  7      OPC=andl_r32_imm32  
  nop                            #  83    0x1294e9  1      OPC=nop             
  nop                            #  84    0x1294ea  1      OPC=nop             
  nop                            #  85    0x1294eb  1      OPC=nop             
  nop                            #  86    0x1294ec  1      OPC=nop             
  addq %r15, %r11                #  87    0x1294ed  3      OPC=addq_r64_r64    
  jmpq %r11                      #  88    0x1294f0  3      OPC=jmpq_r64        
  nop                            #  89    0x1294f3  1      OPC=nop             
  nop                            #  90    0x1294f4  1      OPC=nop             
  nop                            #  91    0x1294f5  1      OPC=nop             
  nop                            #  92    0x1294f6  1      OPC=nop             
  nop                            #  93    0x1294f7  1      OPC=nop             
  nop                            #  94    0x1294f8  1      OPC=nop             
  nop                            #  95    0x1294f9  1      OPC=nop             
  nop                            #  96    0x1294fa  1      OPC=nop             
  nop                            #  97    0x1294fb  1      OPC=nop             
  nop                            #  98    0x1294fc  1      OPC=nop             
  nop                            #  99    0x1294fd  1      OPC=nop             
  nop                            #  100   0x1294fe  1      OPC=nop             
  nop                            #  101   0x1294ff  1      OPC=nop             
  nop                            #  102   0x129500  1      OPC=nop             
  nop                            #  103   0x129501  1      OPC=nop             
  nop                            #  104   0x129502  1      OPC=nop             
  nop                            #  105   0x129503  1      OPC=nop             
  nop                            #  106   0x129504  1      OPC=nop             
  nop                            #  107   0x129505  1      OPC=nop             
  nop                            #  108   0x129506  1      OPC=nop             
                                                                               
.size strncasecmp, .-strncasecmp

