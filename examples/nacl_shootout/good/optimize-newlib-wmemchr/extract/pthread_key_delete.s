  .text
  .globl pthread_key_delete
  .type pthread_key_delete, @function

#! file-offset 0x6e260
#! rip-offset  0x2e260
#! capacity    160 bytes

# Text                                #  Line  RIP      Bytes  Opcode                
.pthread_key_delete:                  #        0x2e260  0      OPC=<label>           
  cmpl $0x1ff, %edi                   #  1     0x2e260  6      OPC=cmpl_r32_imm32    
  ja .L_2e2a0                         #  2     0x2e266  2      OPC=ja_label          
  shll $0x3, %edi                     #  3     0x2e268  3      OPC=shll_r32_imm8     
  movslq %edi, %rcx                   #  4     0x2e26b  3      OPC=movslq_r64_r32    
  leaq 0x10071624(%rcx), %rax         #  5     0x2e26e  7      OPC=leaq_r64_m16      
  movl %eax, %eax                     #  6     0x2e275  2      OPC=movl_r32_r32      
  movl (%r15,%rax,1), %edx            #  7     0x2e277  4      OPC=movl_r32_m32      
  testb $0x1, %dl                     #  8     0x2e27b  3      OPC=testb_r8_imm8     
  xchgw %ax, %ax                      #  9     0x2e27e  2      OPC=xchgw_ax_r16      
  jne .L_2e2c0                        #  10    0x2e280  2      OPC=jne_label         
  nop                                 #  11    0x2e282  1      OPC=nop               
  nop                                 #  12    0x2e283  1      OPC=nop               
  nop                                 #  13    0x2e284  1      OPC=nop               
  nop                                 #  14    0x2e285  1      OPC=nop               
  nop                                 #  15    0x2e286  1      OPC=nop               
  nop                                 #  16    0x2e287  1      OPC=nop               
  nop                                 #  17    0x2e288  1      OPC=nop               
  nop                                 #  18    0x2e289  1      OPC=nop               
  nop                                 #  19    0x2e28a  1      OPC=nop               
  nop                                 #  20    0x2e28b  1      OPC=nop               
  nop                                 #  21    0x2e28c  1      OPC=nop               
  nop                                 #  22    0x2e28d  1      OPC=nop               
  nop                                 #  23    0x2e28e  1      OPC=nop               
  nop                                 #  24    0x2e28f  1      OPC=nop               
  nop                                 #  25    0x2e290  1      OPC=nop               
  nop                                 #  26    0x2e291  1      OPC=nop               
  nop                                 #  27    0x2e292  1      OPC=nop               
  nop                                 #  28    0x2e293  1      OPC=nop               
  nop                                 #  29    0x2e294  1      OPC=nop               
  nop                                 #  30    0x2e295  1      OPC=nop               
  nop                                 #  31    0x2e296  1      OPC=nop               
  nop                                 #  32    0x2e297  1      OPC=nop               
  nop                                 #  33    0x2e298  1      OPC=nop               
  nop                                 #  34    0x2e299  1      OPC=nop               
  nop                                 #  35    0x2e29a  1      OPC=nop               
  nop                                 #  36    0x2e29b  1      OPC=nop               
  nop                                 #  37    0x2e29c  1      OPC=nop               
  nop                                 #  38    0x2e29d  1      OPC=nop               
  nop                                 #  39    0x2e29e  1      OPC=nop               
  nop                                 #  40    0x2e29f  1      OPC=nop               
.L_2e2a0:                             #        0x2e2a0  0      OPC=<label>           
  movl $0x16, %eax                    #  41    0x2e2a0  5      OPC=movl_r32_imm32    
  popq %r11                           #  42    0x2e2a5  2      OPC=popq_r64_1        
  andl $0xffffffe0, %r11d             #  43    0x2e2a7  7      OPC=andl_r32_imm32    
  nop                                 #  44    0x2e2ae  1      OPC=nop               
  nop                                 #  45    0x2e2af  1      OPC=nop               
  nop                                 #  46    0x2e2b0  1      OPC=nop               
  nop                                 #  47    0x2e2b1  1      OPC=nop               
  addq %r15, %r11                     #  48    0x2e2b2  3      OPC=addq_r64_r64      
  jmpq %r11                           #  49    0x2e2b5  3      OPC=jmpq_r64          
  nop                                 #  50    0x2e2b8  1      OPC=nop               
  nop                                 #  51    0x2e2b9  1      OPC=nop               
  nop                                 #  52    0x2e2ba  1      OPC=nop               
  nop                                 #  53    0x2e2bb  1      OPC=nop               
  nop                                 #  54    0x2e2bc  1      OPC=nop               
  nop                                 #  55    0x2e2bd  1      OPC=nop               
  nop                                 #  56    0x2e2be  1      OPC=nop               
  nop                                 #  57    0x2e2bf  1      OPC=nop               
  nop                                 #  58    0x2e2c0  1      OPC=nop               
  nop                                 #  59    0x2e2c1  1      OPC=nop               
  nop                                 #  60    0x2e2c2  1      OPC=nop               
  nop                                 #  61    0x2e2c3  1      OPC=nop               
  nop                                 #  62    0x2e2c4  1      OPC=nop               
  nop                                 #  63    0x2e2c5  1      OPC=nop               
  nop                                 #  64    0x2e2c6  1      OPC=nop               
.L_2e2c0:                             #        0x2e2c7  0      OPC=<label>           
  leal 0x1(%rdx), %esi                #  65    0x2e2c7  3      OPC=leal_r32_m16      
  addl $0x10071624, %edi              #  66    0x2e2ca  6      OPC=addl_r32_imm32    
  movl %edx, %eax                     #  67    0x2e2d0  2      OPC=movl_r32_r32      
  movl %edi, %edi                     #  68    0x2e2d2  2      OPC=movl_r32_r32      
  lock                                #  69    0x2e2d4  1      OPC=lock              
  cmpxchgl %esi, (%r15,%rdi,1)        #  70    0x2e2d5  5      OPC=cmpxchgl_m32_r32  
  nop                                 #  71    0x2e2da  1      OPC=nop               
  cmpl %edx, %eax                     #  72    0x2e2db  2      OPC=cmpl_r32_r32      
  jne .L_2e2a0                        #  73    0x2e2dd  2      OPC=jne_label         
  nop                                 #  74    0x2e2df  1      OPC=nop               
  nop                                 #  75    0x2e2e0  1      OPC=nop               
  nop                                 #  76    0x2e2e1  1      OPC=nop               
  nop                                 #  77    0x2e2e2  1      OPC=nop               
  nop                                 #  78    0x2e2e3  1      OPC=nop               
  nop                                 #  79    0x2e2e4  1      OPC=nop               
  nop                                 #  80    0x2e2e5  1      OPC=nop               
  nop                                 #  81    0x2e2e6  1      OPC=nop               
  nop                                 #  82    0x2e2e7  1      OPC=nop               
  movl %ecx, %ecx                     #  83    0x2e2e8  2      OPC=movl_r32_r32      
  movl $0x0, 0x10071620(%r15,%rcx,1)  #  84    0x2e2ea  12     OPC=movl_m32_imm32    
  xorl %eax, %eax                     #  85    0x2e2f6  2      OPC=xorl_r32_r32      
  popq %r11                           #  86    0x2e2f8  2      OPC=popq_r64_1        
  andl $0xffffffe0, %r11d             #  87    0x2e2fa  7      OPC=andl_r32_imm32    
  nop                                 #  88    0x2e301  1      OPC=nop               
  nop                                 #  89    0x2e302  1      OPC=nop               
  nop                                 #  90    0x2e303  1      OPC=nop               
  nop                                 #  91    0x2e304  1      OPC=nop               
  addq %r15, %r11                     #  92    0x2e305  3      OPC=addq_r64_r64      
  jmpq %r11                           #  93    0x2e308  3      OPC=jmpq_r64          
  nop                                 #  94    0x2e30b  1      OPC=nop               
  nop                                 #  95    0x2e30c  1      OPC=nop               
  nop                                 #  96    0x2e30d  1      OPC=nop               
  nop                                 #  97    0x2e30e  1      OPC=nop               
                                                                                     
.size pthread_key_delete, .-pthread_key_delete

