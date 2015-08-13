  .text
  .globl strncasecmp
  .type strncasecmp, @function

#! file-offset 0x169140
#! rip-offset  0x129140
#! capacity    192 bytes

# Text                           #  Line  RIP       Bytes  Opcode              
.strncasecmp:                    #        0x129140  0      OPC=<label>         
  xorl %eax, %eax                #  1     0x129140  2      OPC=xorl_r32_r32    
  testl %edx, %edx               #  2     0x129142  2      OPC=testl_r32_r32   
  movl %edi, %edi                #  3     0x129144  2      OPC=movl_r32_r32    
  movl %esi, %esi                #  4     0x129146  2      OPC=movl_r32_r32    
  je .L_1291e0                   #  5     0x129148  6      OPC=je_label_1      
  movl 0xff4780b(%rip), %r9d     #  6     0x12914e  7      OPC=movl_r32_m32    
  jmpq .L_129180                 #  7     0x129155  2      OPC=jmpq_label      
  nop                            #  8     0x129157  1      OPC=nop             
  nop                            #  9     0x129158  1      OPC=nop             
  nop                            #  10    0x129159  1      OPC=nop             
  nop                            #  11    0x12915a  1      OPC=nop             
  nop                            #  12    0x12915b  1      OPC=nop             
  nop                            #  13    0x12915c  1      OPC=nop             
  nop                            #  14    0x12915d  1      OPC=nop             
  nop                            #  15    0x12915e  1      OPC=nop             
  nop                            #  16    0x12915f  1      OPC=nop             
.L_129160:                       #        0x129160  0      OPC=<label>         
  testl %ecx, %ecx               #  17    0x129160  2      OPC=testl_r32_r32   
  je .L_1291e0                   #  18    0x129162  2      OPC=je_label        
  subl $0x1, %edx                #  19    0x129164  3      OPC=subl_r32_imm8   
  je .L_1291e0                   #  20    0x129167  2      OPC=je_label        
  addl $0x1, %esi                #  21    0x129169  3      OPC=addl_r32_imm8   
  nop                            #  22    0x12916c  1      OPC=nop             
  nop                            #  23    0x12916d  1      OPC=nop             
  nop                            #  24    0x12916e  1      OPC=nop             
  nop                            #  25    0x12916f  1      OPC=nop             
  nop                            #  26    0x129170  1      OPC=nop             
  nop                            #  27    0x129171  1      OPC=nop             
  nop                            #  28    0x129172  1      OPC=nop             
  nop                            #  29    0x129173  1      OPC=nop             
  nop                            #  30    0x129174  1      OPC=nop             
  nop                            #  31    0x129175  1      OPC=nop             
  nop                            #  32    0x129176  1      OPC=nop             
  nop                            #  33    0x129177  1      OPC=nop             
  nop                            #  34    0x129178  1      OPC=nop             
  nop                            #  35    0x129179  1      OPC=nop             
  nop                            #  36    0x12917a  1      OPC=nop             
  nop                            #  37    0x12917b  1      OPC=nop             
  nop                            #  38    0x12917c  1      OPC=nop             
  nop                            #  39    0x12917d  1      OPC=nop             
  nop                            #  40    0x12917e  1      OPC=nop             
  nop                            #  41    0x12917f  1      OPC=nop             
.L_129180:                       #        0x129180  0      OPC=<label>         
  movl %edi, %edi                #  42    0x129180  2      OPC=movl_r32_r32    
  movzbl (%r15,%rdi,1), %eax     #  43    0x129182  5      OPC=movzbl_r32_m8   
  addl $0x1, %edi                #  44    0x129187  3      OPC=addl_r32_imm8   
  movzbl %al, %eax               #  45    0x12918a  3      OPC=movzbl_r32_r8   
  leal (%rax,%r9,1), %ecx        #  46    0x12918d  4      OPC=leal_r32_m16    
  leal 0x20(%rax), %r8d          #  47    0x129191  4      OPC=leal_r32_m16    
  movl %ecx, %ecx                #  48    0x129195  2      OPC=movl_r32_r32    
  movsbl 0x1(%r15,%rcx,1), %ecx  #  49    0x129197  6      OPC=movsbl_r32_m8   
  andl $0x3, %ecx                #  50    0x12919d  3      OPC=andl_r32_imm8   
  cmpl $0x1, %ecx                #  51    0x1291a0  3      OPC=cmpl_r32_imm8   
  movl %esi, %esi                #  52    0x1291a3  2      OPC=movl_r32_r32    
  movzbl (%r15,%rsi,1), %ecx     #  53    0x1291a5  5      OPC=movzbl_r32_m8   
  cmovel %r8d, %eax              #  54    0x1291aa  4      OPC=cmovel_r32_r32  
  leal (%rcx,%r9,1), %r8d        #  55    0x1291ae  4      OPC=leal_r32_m16    
  leal 0x20(%rcx), %r10d         #  56    0x1291b2  4      OPC=leal_r32_m16    
  movl %r8d, %r8d                #  57    0x1291b6  3      OPC=movl_r32_r32    
  movsbl 0x1(%r15,%r8,1), %r8d   #  58    0x1291b9  6      OPC=movsbl_r32_m8   
  nop                            #  59    0x1291bf  1      OPC=nop             
  andl $0x3, %r8d                #  60    0x1291c0  4      OPC=andl_r32_imm8   
  cmpl $0x1, %r8d                #  61    0x1291c4  4      OPC=cmpl_r32_imm8   
  cmovel %r10d, %ecx             #  62    0x1291c8  4      OPC=cmovel_r32_r32  
  subl %ecx, %eax                #  63    0x1291cc  2      OPC=subl_r32_r32    
  je .L_129160                   #  64    0x1291ce  2      OPC=je_label        
  nop                            #  65    0x1291d0  1      OPC=nop             
  nop                            #  66    0x1291d1  1      OPC=nop             
  nop                            #  67    0x1291d2  1      OPC=nop             
  nop                            #  68    0x1291d3  1      OPC=nop             
  nop                            #  69    0x1291d4  1      OPC=nop             
  nop                            #  70    0x1291d5  1      OPC=nop             
  nop                            #  71    0x1291d6  1      OPC=nop             
  nop                            #  72    0x1291d7  1      OPC=nop             
  nop                            #  73    0x1291d8  1      OPC=nop             
  nop                            #  74    0x1291d9  1      OPC=nop             
  nop                            #  75    0x1291da  1      OPC=nop             
  nop                            #  76    0x1291db  1      OPC=nop             
  nop                            #  77    0x1291dc  1      OPC=nop             
  nop                            #  78    0x1291dd  1      OPC=nop             
  nop                            #  79    0x1291de  1      OPC=nop             
  nop                            #  80    0x1291df  1      OPC=nop             
.L_1291e0:                       #        0x1291e0  0      OPC=<label>         
  popq %r11                      #  81    0x1291e0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d        #  82    0x1291e2  7      OPC=andl_r32_imm32  
  nop                            #  83    0x1291e9  1      OPC=nop             
  nop                            #  84    0x1291ea  1      OPC=nop             
  nop                            #  85    0x1291eb  1      OPC=nop             
  nop                            #  86    0x1291ec  1      OPC=nop             
  addq %r15, %r11                #  87    0x1291ed  3      OPC=addq_r64_r64    
  jmpq %r11                      #  88    0x1291f0  3      OPC=jmpq_r64        
  nop                            #  89    0x1291f3  1      OPC=nop             
  nop                            #  90    0x1291f4  1      OPC=nop             
  nop                            #  91    0x1291f5  1      OPC=nop             
  nop                            #  92    0x1291f6  1      OPC=nop             
  nop                            #  93    0x1291f7  1      OPC=nop             
  nop                            #  94    0x1291f8  1      OPC=nop             
  nop                            #  95    0x1291f9  1      OPC=nop             
  nop                            #  96    0x1291fa  1      OPC=nop             
  nop                            #  97    0x1291fb  1      OPC=nop             
  nop                            #  98    0x1291fc  1      OPC=nop             
  nop                            #  99    0x1291fd  1      OPC=nop             
  nop                            #  100   0x1291fe  1      OPC=nop             
  nop                            #  101   0x1291ff  1      OPC=nop             
  nop                            #  102   0x129200  1      OPC=nop             
  nop                            #  103   0x129201  1      OPC=nop             
  nop                            #  104   0x129202  1      OPC=nop             
  nop                            #  105   0x129203  1      OPC=nop             
  nop                            #  106   0x129204  1      OPC=nop             
  nop                            #  107   0x129205  1      OPC=nop             
  nop                            #  108   0x129206  1      OPC=nop             
                                                                               
.size strncasecmp, .-strncasecmp

