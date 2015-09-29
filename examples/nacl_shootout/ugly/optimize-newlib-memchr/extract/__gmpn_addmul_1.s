  .text
  .globl __gmpn_addmul_1
  .type __gmpn_addmul_1, @function

#! file-offset 0x73200
#! rip-offset  0x33200
#! capacity    224 bytes

# Text                       #  Line  RIP      Bytes  Opcode              
.__gmpn_addmul_1:            #        0x33200  0      OPC=<label>         
  pushq %r12                 #  1     0x33200  2      OPC=pushq_r64_1     
  movl %esi, %esi            #  2     0x33202  2      OPC=movl_r32_r32    
  movl %edi, %edi            #  3     0x33204  2      OPC=movl_r32_r32    
  xorl %eax, %eax            #  4     0x33206  2      OPC=xorl_r32_r32    
  pushq %rbx                 #  5     0x33208  1      OPC=pushq_r64_1     
  movzwl %cx, %ebx           #  6     0x33209  3      OPC=movzwl_r32_r16  
  movl %esi, %esi            #  7     0x3320c  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %r8d   #  8     0x3320e  4      OPC=movl_r32_m32    
  shrl $0x10, %ecx           #  9     0x33212  3      OPC=shrl_r32_imm8   
  jmpq .L_33240              #  10    0x33215  2      OPC=jmpq_label      
  nop                        #  11    0x33217  1      OPC=nop             
  nop                        #  12    0x33218  1      OPC=nop             
  nop                        #  13    0x33219  1      OPC=nop             
  nop                        #  14    0x3321a  1      OPC=nop             
  nop                        #  15    0x3321b  1      OPC=nop             
  nop                        #  16    0x3321c  1      OPC=nop             
  nop                        #  17    0x3321d  1      OPC=nop             
  nop                        #  18    0x3321e  1      OPC=nop             
  nop                        #  19    0x3321f  1      OPC=nop             
.L_33220:                    #        0x33220  0      OPC=<label>         
  addl $0x4, %esi            #  20    0x33220  3      OPC=addl_r32_imm8   
  addl $0x4, %edi            #  21    0x33223  3      OPC=addl_r32_imm8   
  movl %esi, %esi            #  22    0x33226  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %r8d   #  23    0x33228  4      OPC=movl_r32_m32    
  nop                        #  24    0x3322c  1      OPC=nop             
  nop                        #  25    0x3322d  1      OPC=nop             
  nop                        #  26    0x3322e  1      OPC=nop             
  nop                        #  27    0x3322f  1      OPC=nop             
  nop                        #  28    0x33230  1      OPC=nop             
  nop                        #  29    0x33231  1      OPC=nop             
  nop                        #  30    0x33232  1      OPC=nop             
  nop                        #  31    0x33233  1      OPC=nop             
  nop                        #  32    0x33234  1      OPC=nop             
  nop                        #  33    0x33235  1      OPC=nop             
  nop                        #  34    0x33236  1      OPC=nop             
  nop                        #  35    0x33237  1      OPC=nop             
  nop                        #  36    0x33238  1      OPC=nop             
  nop                        #  37    0x33239  1      OPC=nop             
  nop                        #  38    0x3323a  1      OPC=nop             
  nop                        #  39    0x3323b  1      OPC=nop             
  nop                        #  40    0x3323c  1      OPC=nop             
  nop                        #  41    0x3323d  1      OPC=nop             
  nop                        #  42    0x3323e  1      OPC=nop             
  nop                        #  43    0x3323f  1      OPC=nop             
.L_33240:                    #        0x33240  0      OPC=<label>         
  movzwl %r8w, %r10d         #  44    0x33240  4      OPC=movzwl_r32_r16  
  shrl $0x10, %r8d           #  45    0x33244  4      OPC=shrl_r32_imm8   
  movl %r10d, %r9d           #  46    0x33248  3      OPC=movl_r32_r32    
  movl %r8d, %r11d           #  47    0x3324b  3      OPC=movl_r32_r32    
  imull %ebx, %r9d           #  48    0x3324e  4      OPC=imull_r32_r32   
  imull %ebx, %r11d          #  49    0x33252  4      OPC=imull_r32_r32   
  movl %r9d, %r12d           #  50    0x33256  3      OPC=movl_r32_r32    
  imull %ecx, %r10d          #  51    0x33259  4      OPC=imull_r32_r32   
  nop                        #  52    0x3325d  1      OPC=nop             
  nop                        #  53    0x3325e  1      OPC=nop             
  nop                        #  54    0x3325f  1      OPC=nop             
  shrl $0x10, %r12d          #  55    0x33260  4      OPC=shrl_r32_imm8   
  imull %ecx, %r8d           #  56    0x33264  4      OPC=imull_r32_r32   
  leal (%r11,%r10,1), %r10d  #  57    0x33268  4      OPC=leal_r32_m16    
  addl %r12d, %r10d          #  58    0x3326c  3      OPC=addl_r32_r32    
  leal 0x10000(%r8), %r12d   #  59    0x3326f  7      OPC=leal_r32_m16    
  cmpl %r10d, %r11d          #  60    0x33276  3      OPC=cmpl_r32_r32    
  movl %r10d, %r11d          #  61    0x33279  3      OPC=movl_r32_r32    
  cmoval %r12d, %r8d         #  62    0x3327c  4      OPC=cmoval_r32_r32  
  andl $0xffff, %r9d         #  63    0x33280  7      OPC=andl_r32_imm32  
  shll $0x10, %r11d          #  64    0x33287  4      OPC=shll_r32_imm8   
  addl %eax, %r9d            #  65    0x3328b  3      OPC=addl_r32_r32    
  addl %r11d, %r9d           #  66    0x3328e  3      OPC=addl_r32_r32    
  cmpl %eax, %r9d            #  67    0x33291  3      OPC=cmpl_r32_r32    
  setb %al                   #  68    0x33294  3      OPC=setb_r8         
  shrl $0x10, %r10d          #  69    0x33297  4      OPC=shrl_r32_imm8   
  movzbl %al, %eax           #  70    0x3329b  3      OPC=movzbl_r32_r8   
  xchgw %ax, %ax             #  71    0x3329e  2      OPC=xchgw_ax_r16    
  addl %r10d, %eax           #  72    0x332a0  3      OPC=addl_r32_r32    
  movl %edi, %edi            #  73    0x332a3  2      OPC=movl_r32_r32    
  addl (%r15,%rdi,1), %r9d   #  74    0x332a5  4      OPC=addl_r32_m32    
  setb %r11b                 #  75    0x332a9  4      OPC=setb_r8         
  movl %edi, %edi            #  76    0x332ad  2      OPC=movl_r32_r32    
  movl %r9d, (%r15,%rdi,1)   #  77    0x332af  4      OPC=movl_m32_r32    
  movzbl %r11b, %r11d        #  78    0x332b3  4      OPC=movzbl_r32_r8   
  addl %r11d, %eax           #  79    0x332b7  3      OPC=addl_r32_r32    
  addl %r8d, %eax            #  80    0x332ba  3      OPC=addl_r32_r32    
  subl $0x1, %edx            #  81    0x332bd  3      OPC=subl_r32_imm8   
  jne .L_33220               #  82    0x332c0  6      OPC=jne_label_1     
  popq %rbx                  #  83    0x332c6  1      OPC=popq_r64_1      
  popq %r12                  #  84    0x332c7  2      OPC=popq_r64_1      
  popq %r11                  #  85    0x332c9  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d    #  86    0x332cb  7      OPC=andl_r32_imm32  
  nop                        #  87    0x332d2  1      OPC=nop             
  nop                        #  88    0x332d3  1      OPC=nop             
  nop                        #  89    0x332d4  1      OPC=nop             
  nop                        #  90    0x332d5  1      OPC=nop             
  addq %r15, %r11            #  91    0x332d6  3      OPC=addq_r64_r64    
  jmpq %r11                  #  92    0x332d9  3      OPC=jmpq_r64        
  nop                        #  93    0x332dc  1      OPC=nop             
  nop                        #  94    0x332dd  1      OPC=nop             
  nop                        #  95    0x332de  1      OPC=nop             
  nop                        #  96    0x332df  1      OPC=nop             
  nop                        #  97    0x332e0  1      OPC=nop             
  nop                        #  98    0x332e1  1      OPC=nop             
  nop                        #  99    0x332e2  1      OPC=nop             
  nop                        #  100   0x332e3  1      OPC=nop             
  nop                        #  101   0x332e4  1      OPC=nop             
  nop                        #  102   0x332e5  1      OPC=nop             
  nop                        #  103   0x332e6  1      OPC=nop             
                                                                          
.size __gmpn_addmul_1, .-__gmpn_addmul_1

