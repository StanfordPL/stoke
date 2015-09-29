  .text
  .globl strncasecmp
  .type strncasecmp, @function

#! file-offset 0x169b60
#! rip-offset  0x129b60
#! capacity    192 bytes

# Text                           #  Line  RIP       Bytes  Opcode              
.strncasecmp:                    #        0x129b60  0      OPC=<label>         
  xorl %eax, %eax                #  1     0x129b60  2      OPC=xorl_r32_r32    
  testl %edx, %edx               #  2     0x129b62  2      OPC=testl_r32_r32   
  movl %edi, %edi                #  3     0x129b64  2      OPC=movl_r32_r32    
  movl %esi, %esi                #  4     0x129b66  2      OPC=movl_r32_r32    
  je .L_129c00                   #  5     0x129b68  6      OPC=je_label_1      
  movl 0xff46deb(%rip), %r9d     #  6     0x129b6e  7      OPC=movl_r32_m32    
  jmpq .L_129ba0                 #  7     0x129b75  2      OPC=jmpq_label      
  nop                            #  8     0x129b77  1      OPC=nop             
  nop                            #  9     0x129b78  1      OPC=nop             
  nop                            #  10    0x129b79  1      OPC=nop             
  nop                            #  11    0x129b7a  1      OPC=nop             
  nop                            #  12    0x129b7b  1      OPC=nop             
  nop                            #  13    0x129b7c  1      OPC=nop             
  nop                            #  14    0x129b7d  1      OPC=nop             
  nop                            #  15    0x129b7e  1      OPC=nop             
  nop                            #  16    0x129b7f  1      OPC=nop             
.L_129b80:                       #        0x129b80  0      OPC=<label>         
  testl %ecx, %ecx               #  17    0x129b80  2      OPC=testl_r32_r32   
  je .L_129c00                   #  18    0x129b82  2      OPC=je_label        
  subl $0x1, %edx                #  19    0x129b84  3      OPC=subl_r32_imm8   
  je .L_129c00                   #  20    0x129b87  2      OPC=je_label        
  addl $0x1, %esi                #  21    0x129b89  3      OPC=addl_r32_imm8   
  nop                            #  22    0x129b8c  1      OPC=nop             
  nop                            #  23    0x129b8d  1      OPC=nop             
  nop                            #  24    0x129b8e  1      OPC=nop             
  nop                            #  25    0x129b8f  1      OPC=nop             
  nop                            #  26    0x129b90  1      OPC=nop             
  nop                            #  27    0x129b91  1      OPC=nop             
  nop                            #  28    0x129b92  1      OPC=nop             
  nop                            #  29    0x129b93  1      OPC=nop             
  nop                            #  30    0x129b94  1      OPC=nop             
  nop                            #  31    0x129b95  1      OPC=nop             
  nop                            #  32    0x129b96  1      OPC=nop             
  nop                            #  33    0x129b97  1      OPC=nop             
  nop                            #  34    0x129b98  1      OPC=nop             
  nop                            #  35    0x129b99  1      OPC=nop             
  nop                            #  36    0x129b9a  1      OPC=nop             
  nop                            #  37    0x129b9b  1      OPC=nop             
  nop                            #  38    0x129b9c  1      OPC=nop             
  nop                            #  39    0x129b9d  1      OPC=nop             
  nop                            #  40    0x129b9e  1      OPC=nop             
  nop                            #  41    0x129b9f  1      OPC=nop             
.L_129ba0:                       #        0x129ba0  0      OPC=<label>         
  movl %edi, %edi                #  42    0x129ba0  2      OPC=movl_r32_r32    
  movzbl (%r15,%rdi,1), %eax     #  43    0x129ba2  5      OPC=movzbl_r32_m8   
  addl $0x1, %edi                #  44    0x129ba7  3      OPC=addl_r32_imm8   
  movzbl %al, %eax               #  45    0x129baa  3      OPC=movzbl_r32_r8   
  leal (%rax,%r9,1), %ecx        #  46    0x129bad  4      OPC=leal_r32_m16    
  leal 0x20(%rax), %r8d          #  47    0x129bb1  4      OPC=leal_r32_m16    
  movl %ecx, %ecx                #  48    0x129bb5  2      OPC=movl_r32_r32    
  movsbl 0x1(%r15,%rcx,1), %ecx  #  49    0x129bb7  6      OPC=movsbl_r32_m8   
  andl $0x3, %ecx                #  50    0x129bbd  3      OPC=andl_r32_imm8   
  cmpl $0x1, %ecx                #  51    0x129bc0  3      OPC=cmpl_r32_imm8   
  movl %esi, %esi                #  52    0x129bc3  2      OPC=movl_r32_r32    
  movzbl (%r15,%rsi,1), %ecx     #  53    0x129bc5  5      OPC=movzbl_r32_m8   
  cmovel %r8d, %eax              #  54    0x129bca  4      OPC=cmovel_r32_r32  
  leal (%rcx,%r9,1), %r8d        #  55    0x129bce  4      OPC=leal_r32_m16    
  leal 0x20(%rcx), %r10d         #  56    0x129bd2  4      OPC=leal_r32_m16    
  movl %r8d, %r8d                #  57    0x129bd6  3      OPC=movl_r32_r32    
  movsbl 0x1(%r15,%r8,1), %r8d   #  58    0x129bd9  6      OPC=movsbl_r32_m8   
  nop                            #  59    0x129bdf  1      OPC=nop             
  andl $0x3, %r8d                #  60    0x129be0  4      OPC=andl_r32_imm8   
  cmpl $0x1, %r8d                #  61    0x129be4  4      OPC=cmpl_r32_imm8   
  cmovel %r10d, %ecx             #  62    0x129be8  4      OPC=cmovel_r32_r32  
  subl %ecx, %eax                #  63    0x129bec  2      OPC=subl_r32_r32    
  je .L_129b80                   #  64    0x129bee  2      OPC=je_label        
  nop                            #  65    0x129bf0  1      OPC=nop             
  nop                            #  66    0x129bf1  1      OPC=nop             
  nop                            #  67    0x129bf2  1      OPC=nop             
  nop                            #  68    0x129bf3  1      OPC=nop             
  nop                            #  69    0x129bf4  1      OPC=nop             
  nop                            #  70    0x129bf5  1      OPC=nop             
  nop                            #  71    0x129bf6  1      OPC=nop             
  nop                            #  72    0x129bf7  1      OPC=nop             
  nop                            #  73    0x129bf8  1      OPC=nop             
  nop                            #  74    0x129bf9  1      OPC=nop             
  nop                            #  75    0x129bfa  1      OPC=nop             
  nop                            #  76    0x129bfb  1      OPC=nop             
  nop                            #  77    0x129bfc  1      OPC=nop             
  nop                            #  78    0x129bfd  1      OPC=nop             
  nop                            #  79    0x129bfe  1      OPC=nop             
  nop                            #  80    0x129bff  1      OPC=nop             
.L_129c00:                       #        0x129c00  0      OPC=<label>         
  popq %r11                      #  81    0x129c00  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d        #  82    0x129c02  7      OPC=andl_r32_imm32  
  nop                            #  83    0x129c09  1      OPC=nop             
  nop                            #  84    0x129c0a  1      OPC=nop             
  nop                            #  85    0x129c0b  1      OPC=nop             
  nop                            #  86    0x129c0c  1      OPC=nop             
  addq %r15, %r11                #  87    0x129c0d  3      OPC=addq_r64_r64    
  jmpq %r11                      #  88    0x129c10  3      OPC=jmpq_r64        
  nop                            #  89    0x129c13  1      OPC=nop             
  nop                            #  90    0x129c14  1      OPC=nop             
  nop                            #  91    0x129c15  1      OPC=nop             
  nop                            #  92    0x129c16  1      OPC=nop             
  nop                            #  93    0x129c17  1      OPC=nop             
  nop                            #  94    0x129c18  1      OPC=nop             
  nop                            #  95    0x129c19  1      OPC=nop             
  nop                            #  96    0x129c1a  1      OPC=nop             
  nop                            #  97    0x129c1b  1      OPC=nop             
  nop                            #  98    0x129c1c  1      OPC=nop             
  nop                            #  99    0x129c1d  1      OPC=nop             
  nop                            #  100   0x129c1e  1      OPC=nop             
  nop                            #  101   0x129c1f  1      OPC=nop             
  nop                            #  102   0x129c20  1      OPC=nop             
  nop                            #  103   0x129c21  1      OPC=nop             
  nop                            #  104   0x129c22  1      OPC=nop             
  nop                            #  105   0x129c23  1      OPC=nop             
  nop                            #  106   0x129c24  1      OPC=nop             
  nop                            #  107   0x129c25  1      OPC=nop             
  nop                            #  108   0x129c26  1      OPC=nop             
                                                                               
.size strncasecmp, .-strncasecmp

