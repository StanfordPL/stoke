  .text
  .globl Constraint_Print
  .type Constraint_Print, @function

#! file-offset 0x5d6b
#! rip-offset  0x405d6b
#! capacity    198 bytes

# Text                            #  Line  RIP       Bytes  Opcode    
.Constraint_Print:                #        0x405d6b  0      OPC=0     
  pushq %r12                      #  1     0x405d6b  2      OPC=1861  
  pushq %rbp                      #  2     0x405d6d  1      OPC=1861  
  pushq %rbx                      #  3     0x405d6e  1      OPC=1861  
  movq %rdi, %rbp                 #  4     0x405d6f  3      OPC=1162  
  movsbq 0x10(%rdi), %rax         #  5     0x405d72  5      OPC=1285  
  cmpb $0xff, %al                 #  6     0x405d77  3      OPC=479   
  je .L_405df4                    #  7     0x405d7a  6      OPC=893   
  nop                             #  8     0x405d80  1      OPC=1343  
  nop                             #  9     0x405d81  1      OPC=1343  
  movsbq 0x13(%rdi,%rax,1), %r12  #  10    0x405d82  6      OPC=1285  
  movl $0x408b9b, %esi            #  11    0x405d88  5      OPC=1154  
  movl $0x1, %edi                 #  12    0x405d8d  5      OPC=1154  
  xorl %eax, %eax                 #  13    0x405d92  2      OPC=3758  
  callq .__printf_chk_plt         #  14    0x405d94  5      OPC=260   
  xorl %ebx, %ebx                 #  15    0x405d99  2      OPC=3758  
  cmpb $0x0, 0x12(%rbp)           #  16    0x405d9b  4      OPC=461   
  jle .L_405dc1                   #  17    0x405d9f  6      OPC=919   
  nop                             #  18    0x405da5  1      OPC=1343  
  nop                             #  19    0x405da6  1      OPC=1343  
.L_405d9a:                        #        0x405da7  0      OPC=0     
  cmpl %r12d, %ebx                #  20    0x405da7  3      OPC=472   
  je .L_405db6                    #  21    0x405daa  6      OPC=893   
  nop                             #  22    0x405db0  1      OPC=1343  
  nop                             #  23    0x405db1  1      OPC=1343  
  movslq %ebx, %rax               #  24    0x405db2  3      OPC=1289  
  movq 0x20(%rbp,%rax,8), %rdi    #  25    0x405db5  5      OPC=1161  
  callq .Variable_Print           #  26    0x405dba  5      OPC=260   
  movl $0x20, %edi                #  27    0x405dbf  5      OPC=1154  
  callq .putchar_plt              #  28    0x405dc4  5      OPC=260   
.L_405db6:                        #        0x405dc9  0      OPC=0     
  addl $0x1, %ebx                 #  29    0x405dc9  3      OPC=65    
  movsbl 0x12(%rbp), %eax         #  30    0x405dcc  4      OPC=1280  
  cmpl %ebx, %eax                 #  31    0x405dd0  2      OPC=472   
  jg .L_405d9a                    #  32    0x405dd2  6      OPC=901   
  nop                             #  33    0x405dd8  1      OPC=1343  
  nop                             #  34    0x405dd9  1      OPC=1343  
.L_405dc1:                        #        0x405dda  0      OPC=0     
  movl $0x408ba6, %esi            #  35    0x405dda  5      OPC=1154  
  movl $0x1, %edi                 #  36    0x405ddf  5      OPC=1154  
  xorl %eax, %eax                 #  37    0x405de4  2      OPC=3758  
  callq .__printf_chk_plt         #  38    0x405de6  5      OPC=260   
  movq 0x20(%rbp,%r12,8), %rdi    #  39    0x405deb  5      OPC=1161  
  callq .Variable_Print           #  40    0x405df0  5      OPC=260   
.L_405ddc:                        #        0x405df5  0      OPC=0     
  movl $0x29, %edi                #  41    0x405df5  5      OPC=1154  
  callq .putchar_plt              #  42    0x405dfa  5      OPC=260   
  movl $0xa, %edi                 #  43    0x405dff  5      OPC=1154  
  popq %rbx                       #  44    0x405e04  1      OPC=1694  
  popq %rbp                       #  45    0x405e05  1      OPC=1694  
  popq %r12                       #  46    0x405e06  2      OPC=1694  
  jmpq .putchar_plt               #  47    0x405e08  5      OPC=930   
.L_405df4:                        #        0x405e0d  0      OPC=0     
  movl $0x408b8e, %esi            #  48    0x405e0d  5      OPC=1154  
  movl $0x1, %edi                 #  49    0x405e12  5      OPC=1154  
  xorl %eax, %eax                 #  50    0x405e17  2      OPC=3758  
  callq .__printf_chk_plt         #  51    0x405e19  5      OPC=260   
  xorl %ebx, %ebx                 #  52    0x405e1e  2      OPC=3758  
  cmpb $0x0, 0x12(%rbp)           #  53    0x405e20  4      OPC=461   
  jle .L_405ddc                   #  54    0x405e24  6      OPC=919   
  nop                             #  55    0x405e2a  1      OPC=1343  
  nop                             #  56    0x405e2b  1      OPC=1343  
.L_405e0d:                        #        0x405e2c  0      OPC=0     
  movslq %ebx, %rax               #  57    0x405e2c  3      OPC=1289  
  movq 0x20(%rbp,%rax,8), %rdi    #  58    0x405e2f  5      OPC=1161  
  callq .Variable_Print           #  59    0x405e34  5      OPC=260   
  movl $0x20, %edi                #  60    0x405e39  5      OPC=1154  
  callq .putchar_plt              #  61    0x405e3e  5      OPC=260   
  addl $0x1, %ebx                 #  62    0x405e43  3      OPC=65    
  movsbl 0x12(%rbp), %eax         #  63    0x405e46  4      OPC=1280  
  cmpl %ebx, %eax                 #  64    0x405e4a  2      OPC=472   
  jg .L_405e0d                    #  65    0x405e4c  6      OPC=901   
  nop                             #  66    0x405e52  1      OPC=1343  
  nop                             #  67    0x405e53  1      OPC=1343  
  jmpq .L_405ddc                  #  68    0x405e54  5      OPC=930   
  nop                             #  69    0x405e59  1      OPC=1343  
  nop                             #  70    0x405e5a  1      OPC=1343  
                                                                      
.size Constraint_Print, .-Constraint_Print

