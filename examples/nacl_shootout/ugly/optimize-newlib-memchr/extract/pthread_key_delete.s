  .text
  .globl pthread_key_delete
  .type pthread_key_delete, @function

#! file-offset 0x6e980
#! rip-offset  0x2e980
#! capacity    160 bytes

# Text                                #  Line  RIP      Bytes  Opcode                
.pthread_key_delete:                  #        0x2e980  0      OPC=<label>           
  cmpl $0x1ff, %edi                   #  1     0x2e980  6      OPC=cmpl_r32_imm32    
  ja .L_2e9c0                         #  2     0x2e986  2      OPC=ja_label          
  shll $0x3, %edi                     #  3     0x2e988  3      OPC=shll_r32_imm8     
  movslq %edi, %rcx                   #  4     0x2e98b  3      OPC=movslq_r64_r32    
  leaq 0x10071624(%rcx), %rax         #  5     0x2e98e  7      OPC=leaq_r64_m16      
  movl %eax, %eax                     #  6     0x2e995  2      OPC=movl_r32_r32      
  movl (%r15,%rax,1), %edx            #  7     0x2e997  4      OPC=movl_r32_m32      
  testb $0x1, %dl                     #  8     0x2e99b  3      OPC=testb_r8_imm8     
  xchgw %ax, %ax                      #  9     0x2e99e  2      OPC=xchgw_ax_r16      
  jne .L_2e9e0                        #  10    0x2e9a0  2      OPC=jne_label         
  nop                                 #  11    0x2e9a2  1      OPC=nop               
  nop                                 #  12    0x2e9a3  1      OPC=nop               
  nop                                 #  13    0x2e9a4  1      OPC=nop               
  nop                                 #  14    0x2e9a5  1      OPC=nop               
  nop                                 #  15    0x2e9a6  1      OPC=nop               
  nop                                 #  16    0x2e9a7  1      OPC=nop               
  nop                                 #  17    0x2e9a8  1      OPC=nop               
  nop                                 #  18    0x2e9a9  1      OPC=nop               
  nop                                 #  19    0x2e9aa  1      OPC=nop               
  nop                                 #  20    0x2e9ab  1      OPC=nop               
  nop                                 #  21    0x2e9ac  1      OPC=nop               
  nop                                 #  22    0x2e9ad  1      OPC=nop               
  nop                                 #  23    0x2e9ae  1      OPC=nop               
  nop                                 #  24    0x2e9af  1      OPC=nop               
  nop                                 #  25    0x2e9b0  1      OPC=nop               
  nop                                 #  26    0x2e9b1  1      OPC=nop               
  nop                                 #  27    0x2e9b2  1      OPC=nop               
  nop                                 #  28    0x2e9b3  1      OPC=nop               
  nop                                 #  29    0x2e9b4  1      OPC=nop               
  nop                                 #  30    0x2e9b5  1      OPC=nop               
  nop                                 #  31    0x2e9b6  1      OPC=nop               
  nop                                 #  32    0x2e9b7  1      OPC=nop               
  nop                                 #  33    0x2e9b8  1      OPC=nop               
  nop                                 #  34    0x2e9b9  1      OPC=nop               
  nop                                 #  35    0x2e9ba  1      OPC=nop               
  nop                                 #  36    0x2e9bb  1      OPC=nop               
  nop                                 #  37    0x2e9bc  1      OPC=nop               
  nop                                 #  38    0x2e9bd  1      OPC=nop               
  nop                                 #  39    0x2e9be  1      OPC=nop               
  nop                                 #  40    0x2e9bf  1      OPC=nop               
.L_2e9c0:                             #        0x2e9c0  0      OPC=<label>           
  movl $0x16, %eax                    #  41    0x2e9c0  5      OPC=movl_r32_imm32    
  popq %r11                           #  42    0x2e9c5  2      OPC=popq_r64_1        
  andl $0xffffffe0, %r11d             #  43    0x2e9c7  7      OPC=andl_r32_imm32    
  nop                                 #  44    0x2e9ce  1      OPC=nop               
  nop                                 #  45    0x2e9cf  1      OPC=nop               
  nop                                 #  46    0x2e9d0  1      OPC=nop               
  nop                                 #  47    0x2e9d1  1      OPC=nop               
  addq %r15, %r11                     #  48    0x2e9d2  3      OPC=addq_r64_r64      
  jmpq %r11                           #  49    0x2e9d5  3      OPC=jmpq_r64          
  nop                                 #  50    0x2e9d8  1      OPC=nop               
  nop                                 #  51    0x2e9d9  1      OPC=nop               
  nop                                 #  52    0x2e9da  1      OPC=nop               
  nop                                 #  53    0x2e9db  1      OPC=nop               
  nop                                 #  54    0x2e9dc  1      OPC=nop               
  nop                                 #  55    0x2e9dd  1      OPC=nop               
  nop                                 #  56    0x2e9de  1      OPC=nop               
  nop                                 #  57    0x2e9df  1      OPC=nop               
  nop                                 #  58    0x2e9e0  1      OPC=nop               
  nop                                 #  59    0x2e9e1  1      OPC=nop               
  nop                                 #  60    0x2e9e2  1      OPC=nop               
  nop                                 #  61    0x2e9e3  1      OPC=nop               
  nop                                 #  62    0x2e9e4  1      OPC=nop               
  nop                                 #  63    0x2e9e5  1      OPC=nop               
  nop                                 #  64    0x2e9e6  1      OPC=nop               
.L_2e9e0:                             #        0x2e9e7  0      OPC=<label>           
  leal 0x1(%rdx), %esi                #  65    0x2e9e7  3      OPC=leal_r32_m16      
  addl $0x10071624, %edi              #  66    0x2e9ea  6      OPC=addl_r32_imm32    
  movl %edx, %eax                     #  67    0x2e9f0  2      OPC=movl_r32_r32      
  movl %edi, %edi                     #  68    0x2e9f2  2      OPC=movl_r32_r32      
  lock                                #  69    0x2e9f4  1      OPC=lock              
  cmpxchgl %esi, (%r15,%rdi,1)        #  70    0x2e9f5  5      OPC=cmpxchgl_m32_r32  
  nop                                 #  71    0x2e9fa  1      OPC=nop               
  cmpl %edx, %eax                     #  72    0x2e9fb  2      OPC=cmpl_r32_r32      
  jne .L_2e9c0                        #  73    0x2e9fd  2      OPC=jne_label         
  nop                                 #  74    0x2e9ff  1      OPC=nop               
  nop                                 #  75    0x2ea00  1      OPC=nop               
  nop                                 #  76    0x2ea01  1      OPC=nop               
  nop                                 #  77    0x2ea02  1      OPC=nop               
  nop                                 #  78    0x2ea03  1      OPC=nop               
  nop                                 #  79    0x2ea04  1      OPC=nop               
  nop                                 #  80    0x2ea05  1      OPC=nop               
  nop                                 #  81    0x2ea06  1      OPC=nop               
  nop                                 #  82    0x2ea07  1      OPC=nop               
  movl %ecx, %ecx                     #  83    0x2ea08  2      OPC=movl_r32_r32      
  movl $0x0, 0x10071620(%r15,%rcx,1)  #  84    0x2ea0a  12     OPC=movl_m32_imm32    
  xorl %eax, %eax                     #  85    0x2ea16  2      OPC=xorl_r32_r32      
  popq %r11                           #  86    0x2ea18  2      OPC=popq_r64_1        
  andl $0xffffffe0, %r11d             #  87    0x2ea1a  7      OPC=andl_r32_imm32    
  nop                                 #  88    0x2ea21  1      OPC=nop               
  nop                                 #  89    0x2ea22  1      OPC=nop               
  nop                                 #  90    0x2ea23  1      OPC=nop               
  nop                                 #  91    0x2ea24  1      OPC=nop               
  addq %r15, %r11                     #  92    0x2ea25  3      OPC=addq_r64_r64      
  jmpq %r11                           #  93    0x2ea28  3      OPC=jmpq_r64          
  nop                                 #  94    0x2ea2b  1      OPC=nop               
  nop                                 #  95    0x2ea2c  1      OPC=nop               
  nop                                 #  96    0x2ea2d  1      OPC=nop               
  nop                                 #  97    0x2ea2e  1      OPC=nop               
                                                                                     
.size pthread_key_delete, .-pthread_key_delete

