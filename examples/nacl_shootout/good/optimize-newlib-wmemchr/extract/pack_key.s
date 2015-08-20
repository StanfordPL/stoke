  .text
  .globl pack_key
  .type pack_key, @function

#! file-offset 0x634a0
#! rip-offset  0x234a0
#! capacity    160 bytes

# Text                                  #  Line  RIP      Bytes  Opcode              
.pack_key:                              #        0x234a0  0      OPC=<label>         
  movl %edi, %edi                       #  1     0x234a0  2      OPC=movl_r32_r32    
  testl %esi, %esi                      #  2     0x234a2  2      OPC=testl_r32_r32   
  jle .L_23520                          #  3     0x234a4  2      OPC=jle_label       
  movl %edi, %edi                       #  4     0x234a6  2      OPC=movl_r32_r32    
  movzbl (%r15,%rdi,1), %edx            #  5     0x234a8  5      OPC=movzbl_r32_m8   
  movl 0x1004d4ac(%rip), %r8d           #  6     0x234ad  7      OPC=movl_r32_m32    
  xorl %r9d, %r9d                       #  7     0x234b4  3      OPC=xorl_r32_r32    
  xorl %eax, %eax                       #  8     0x234b7  2      OPC=xorl_r32_r32    
  nop                                   #  9     0x234b9  1      OPC=nop             
  nop                                   #  10    0x234ba  1      OPC=nop             
  nop                                   #  11    0x234bb  1      OPC=nop             
  nop                                   #  12    0x234bc  1      OPC=nop             
  nop                                   #  13    0x234bd  1      OPC=nop             
  nop                                   #  14    0x234be  1      OPC=nop             
  nop                                   #  15    0x234bf  1      OPC=nop             
.L_234c0:                               #        0x234c0  0      OPC=<label>         
  andl $0x7, %edx                       #  16    0x234c0  3      OPC=andl_r32_imm8   
  movl %edx, %edx                       #  17    0x234c3  2      OPC=movl_r32_r32    
  movzbl 0x10020540(%r15,%rdx,1), %edx  #  18    0x234c5  9      OPC=movzbl_r32_m8   
  leaq (%rdx,%rax,4), %rax              #  19    0x234ce  4      OPC=leaq_r64_m16    
  nop                                   #  20    0x234d2  1      OPC=nop             
  nop                                   #  21    0x234d3  1      OPC=nop             
  nop                                   #  22    0x234d4  1      OPC=nop             
  nop                                   #  23    0x234d5  1      OPC=nop             
  nop                                   #  24    0x234d6  1      OPC=nop             
  nop                                   #  25    0x234d7  1      OPC=nop             
  nop                                   #  26    0x234d8  1      OPC=nop             
  nop                                   #  27    0x234d9  1      OPC=nop             
  nop                                   #  28    0x234da  1      OPC=nop             
  nop                                   #  29    0x234db  1      OPC=nop             
  nop                                   #  30    0x234dc  1      OPC=nop             
  nop                                   #  31    0x234dd  1      OPC=nop             
  nop                                   #  32    0x234de  1      OPC=nop             
  nop                                   #  33    0x234df  1      OPC=nop             
.L_234e0:                               #        0x234e0  0      OPC=<label>         
  addl $0x1, %edi                       #  34    0x234e0  3      OPC=addl_r32_imm8   
  movl %edi, %edi                       #  35    0x234e3  2      OPC=movl_r32_r32    
  movzbl (%r15,%rdi,1), %edx            #  36    0x234e5  5      OPC=movzbl_r32_m8   
  movsbl %dl, %ecx                      #  37    0x234ea  3      OPC=movsbl_r32_r8   
  addl %r8d, %ecx                       #  38    0x234ed  3      OPC=addl_r32_r32    
  movl %ecx, %ecx                       #  39    0x234f0  2      OPC=movl_r32_r32    
  testb $0x8, 0x1(%r15,%rcx,1)          #  40    0x234f2  6      OPC=testb_m8_imm8   
  jne .L_234e0                          #  41    0x234f8  2      OPC=jne_label       
  addl $0x1, %r9d                       #  42    0x234fa  4      OPC=addl_r32_imm8   
  xchgw %ax, %ax                        #  43    0x234fe  2      OPC=xchgw_ax_r16    
  cmpl %esi, %r9d                       #  44    0x23500  3      OPC=cmpl_r32_r32    
  jne .L_234c0                          #  45    0x23503  2      OPC=jne_label       
  popq %r11                             #  46    0x23505  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d               #  47    0x23507  7      OPC=andl_r32_imm32  
  nop                                   #  48    0x2350e  1      OPC=nop             
  nop                                   #  49    0x2350f  1      OPC=nop             
  nop                                   #  50    0x23510  1      OPC=nop             
  nop                                   #  51    0x23511  1      OPC=nop             
  addq %r15, %r11                       #  52    0x23512  3      OPC=addq_r64_r64    
  jmpq %r11                             #  53    0x23515  3      OPC=jmpq_r64        
  nop                                   #  54    0x23518  1      OPC=nop             
  nop                                   #  55    0x23519  1      OPC=nop             
  nop                                   #  56    0x2351a  1      OPC=nop             
  nop                                   #  57    0x2351b  1      OPC=nop             
  nop                                   #  58    0x2351c  1      OPC=nop             
  nop                                   #  59    0x2351d  1      OPC=nop             
  nop                                   #  60    0x2351e  1      OPC=nop             
  nop                                   #  61    0x2351f  1      OPC=nop             
  nop                                   #  62    0x23520  1      OPC=nop             
  nop                                   #  63    0x23521  1      OPC=nop             
  nop                                   #  64    0x23522  1      OPC=nop             
  nop                                   #  65    0x23523  1      OPC=nop             
  nop                                   #  66    0x23524  1      OPC=nop             
  nop                                   #  67    0x23525  1      OPC=nop             
  nop                                   #  68    0x23526  1      OPC=nop             
.L_23520:                               #        0x23527  0      OPC=<label>         
  xorl %eax, %eax                       #  69    0x23527  2      OPC=xorl_r32_r32    
  popq %r11                             #  70    0x23529  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d               #  71    0x2352b  7      OPC=andl_r32_imm32  
  nop                                   #  72    0x23532  1      OPC=nop             
  nop                                   #  73    0x23533  1      OPC=nop             
  nop                                   #  74    0x23534  1      OPC=nop             
  nop                                   #  75    0x23535  1      OPC=nop             
  addq %r15, %r11                       #  76    0x23536  3      OPC=addq_r64_r64    
  jmpq %r11                             #  77    0x23539  3      OPC=jmpq_r64        
  nop                                   #  78    0x2353c  1      OPC=nop             
  nop                                   #  79    0x2353d  1      OPC=nop             
  nop                                   #  80    0x2353e  1      OPC=nop             
  nop                                   #  81    0x2353f  1      OPC=nop             
  nop                                   #  82    0x23540  1      OPC=nop             
  nop                                   #  83    0x23541  1      OPC=nop             
  nop                                   #  84    0x23542  1      OPC=nop             
  nop                                   #  85    0x23543  1      OPC=nop             
  nop                                   #  86    0x23544  1      OPC=nop             
  nop                                   #  87    0x23545  1      OPC=nop             
  nop                                   #  88    0x23546  1      OPC=nop             
  nop                                   #  89    0x23547  1      OPC=nop             
  nop                                   #  90    0x23548  1      OPC=nop             
  nop                                   #  91    0x23549  1      OPC=nop             
  nop                                   #  92    0x2354a  1      OPC=nop             
  nop                                   #  93    0x2354b  1      OPC=nop             
  nop                                   #  94    0x2354c  1      OPC=nop             
  nop                                   #  95    0x2354d  1      OPC=nop             
                                                                                     
.size pack_key, .-pack_key

