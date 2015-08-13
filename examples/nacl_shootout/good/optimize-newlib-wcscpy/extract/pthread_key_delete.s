  .text
  .globl pthread_key_delete
  .type pthread_key_delete, @function

#! file-offset 0x6df60
#! rip-offset  0x2df60
#! capacity    160 bytes

# Text                                #  Line  RIP      Bytes  Opcode                
.pthread_key_delete:                  #        0x2df60  0      OPC=<label>           
  cmpl $0x1ff, %edi                   #  1     0x2df60  6      OPC=cmpl_r32_imm32    
  ja .L_2dfa0                         #  2     0x2df66  2      OPC=ja_label          
  shll $0x3, %edi                     #  3     0x2df68  3      OPC=shll_r32_imm8     
  movslq %edi, %rcx                   #  4     0x2df6b  3      OPC=movslq_r64_r32    
  leaq 0x10071624(%rcx), %rax         #  5     0x2df6e  7      OPC=leaq_r64_m16      
  movl %eax, %eax                     #  6     0x2df75  2      OPC=movl_r32_r32      
  movl (%r15,%rax,1), %edx            #  7     0x2df77  4      OPC=movl_r32_m32      
  testb $0x1, %dl                     #  8     0x2df7b  3      OPC=testb_r8_imm8     
  xchgw %ax, %ax                      #  9     0x2df7e  2      OPC=xchgw_ax_r16      
  jne .L_2dfc0                        #  10    0x2df80  2      OPC=jne_label         
  nop                                 #  11    0x2df82  1      OPC=nop               
  nop                                 #  12    0x2df83  1      OPC=nop               
  nop                                 #  13    0x2df84  1      OPC=nop               
  nop                                 #  14    0x2df85  1      OPC=nop               
  nop                                 #  15    0x2df86  1      OPC=nop               
  nop                                 #  16    0x2df87  1      OPC=nop               
  nop                                 #  17    0x2df88  1      OPC=nop               
  nop                                 #  18    0x2df89  1      OPC=nop               
  nop                                 #  19    0x2df8a  1      OPC=nop               
  nop                                 #  20    0x2df8b  1      OPC=nop               
  nop                                 #  21    0x2df8c  1      OPC=nop               
  nop                                 #  22    0x2df8d  1      OPC=nop               
  nop                                 #  23    0x2df8e  1      OPC=nop               
  nop                                 #  24    0x2df8f  1      OPC=nop               
  nop                                 #  25    0x2df90  1      OPC=nop               
  nop                                 #  26    0x2df91  1      OPC=nop               
  nop                                 #  27    0x2df92  1      OPC=nop               
  nop                                 #  28    0x2df93  1      OPC=nop               
  nop                                 #  29    0x2df94  1      OPC=nop               
  nop                                 #  30    0x2df95  1      OPC=nop               
  nop                                 #  31    0x2df96  1      OPC=nop               
  nop                                 #  32    0x2df97  1      OPC=nop               
  nop                                 #  33    0x2df98  1      OPC=nop               
  nop                                 #  34    0x2df99  1      OPC=nop               
  nop                                 #  35    0x2df9a  1      OPC=nop               
  nop                                 #  36    0x2df9b  1      OPC=nop               
  nop                                 #  37    0x2df9c  1      OPC=nop               
  nop                                 #  38    0x2df9d  1      OPC=nop               
  nop                                 #  39    0x2df9e  1      OPC=nop               
  nop                                 #  40    0x2df9f  1      OPC=nop               
.L_2dfa0:                             #        0x2dfa0  0      OPC=<label>           
  movl $0x16, %eax                    #  41    0x2dfa0  5      OPC=movl_r32_imm32    
  popq %r11                           #  42    0x2dfa5  2      OPC=popq_r64_1        
  andl $0xffffffe0, %r11d             #  43    0x2dfa7  7      OPC=andl_r32_imm32    
  nop                                 #  44    0x2dfae  1      OPC=nop               
  nop                                 #  45    0x2dfaf  1      OPC=nop               
  nop                                 #  46    0x2dfb0  1      OPC=nop               
  nop                                 #  47    0x2dfb1  1      OPC=nop               
  addq %r15, %r11                     #  48    0x2dfb2  3      OPC=addq_r64_r64      
  jmpq %r11                           #  49    0x2dfb5  3      OPC=jmpq_r64          
  nop                                 #  50    0x2dfb8  1      OPC=nop               
  nop                                 #  51    0x2dfb9  1      OPC=nop               
  nop                                 #  52    0x2dfba  1      OPC=nop               
  nop                                 #  53    0x2dfbb  1      OPC=nop               
  nop                                 #  54    0x2dfbc  1      OPC=nop               
  nop                                 #  55    0x2dfbd  1      OPC=nop               
  nop                                 #  56    0x2dfbe  1      OPC=nop               
  nop                                 #  57    0x2dfbf  1      OPC=nop               
  nop                                 #  58    0x2dfc0  1      OPC=nop               
  nop                                 #  59    0x2dfc1  1      OPC=nop               
  nop                                 #  60    0x2dfc2  1      OPC=nop               
  nop                                 #  61    0x2dfc3  1      OPC=nop               
  nop                                 #  62    0x2dfc4  1      OPC=nop               
  nop                                 #  63    0x2dfc5  1      OPC=nop               
  nop                                 #  64    0x2dfc6  1      OPC=nop               
.L_2dfc0:                             #        0x2dfc7  0      OPC=<label>           
  leal 0x1(%rdx), %esi                #  65    0x2dfc7  3      OPC=leal_r32_m16      
  addl $0x10071624, %edi              #  66    0x2dfca  6      OPC=addl_r32_imm32    
  movl %edx, %eax                     #  67    0x2dfd0  2      OPC=movl_r32_r32      
  movl %edi, %edi                     #  68    0x2dfd2  2      OPC=movl_r32_r32      
  lock                                #  69    0x2dfd4  1      OPC=lock              
  cmpxchgl %esi, (%r15,%rdi,1)        #  70    0x2dfd5  5      OPC=cmpxchgl_m32_r32  
  nop                                 #  71    0x2dfda  1      OPC=nop               
  cmpl %edx, %eax                     #  72    0x2dfdb  2      OPC=cmpl_r32_r32      
  jne .L_2dfa0                        #  73    0x2dfdd  2      OPC=jne_label         
  nop                                 #  74    0x2dfdf  1      OPC=nop               
  nop                                 #  75    0x2dfe0  1      OPC=nop               
  nop                                 #  76    0x2dfe1  1      OPC=nop               
  nop                                 #  77    0x2dfe2  1      OPC=nop               
  nop                                 #  78    0x2dfe3  1      OPC=nop               
  nop                                 #  79    0x2dfe4  1      OPC=nop               
  nop                                 #  80    0x2dfe5  1      OPC=nop               
  nop                                 #  81    0x2dfe6  1      OPC=nop               
  nop                                 #  82    0x2dfe7  1      OPC=nop               
  movl %ecx, %ecx                     #  83    0x2dfe8  2      OPC=movl_r32_r32      
  movl $0x0, 0x10071620(%r15,%rcx,1)  #  84    0x2dfea  12     OPC=movl_m32_imm32    
  xorl %eax, %eax                     #  85    0x2dff6  2      OPC=xorl_r32_r32      
  popq %r11                           #  86    0x2dff8  2      OPC=popq_r64_1        
  andl $0xffffffe0, %r11d             #  87    0x2dffa  7      OPC=andl_r32_imm32    
  nop                                 #  88    0x2e001  1      OPC=nop               
  nop                                 #  89    0x2e002  1      OPC=nop               
  nop                                 #  90    0x2e003  1      OPC=nop               
  nop                                 #  91    0x2e004  1      OPC=nop               
  addq %r15, %r11                     #  92    0x2e005  3      OPC=addq_r64_r64      
  jmpq %r11                           #  93    0x2e008  3      OPC=jmpq_r64          
  nop                                 #  94    0x2e00b  1      OPC=nop               
  nop                                 #  95    0x2e00c  1      OPC=nop               
  nop                                 #  96    0x2e00d  1      OPC=nop               
  nop                                 #  97    0x2e00e  1      OPC=nop               
                                                                                     
.size pthread_key_delete, .-pthread_key_delete

