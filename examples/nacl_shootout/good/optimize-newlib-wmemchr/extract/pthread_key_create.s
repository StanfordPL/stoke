  .text
  .globl pthread_key_create
  .type pthread_key_create, @function

#! file-offset 0x6e300
#! rip-offset  0x2e300
#! capacity    160 bytes

# Text                                #  Line  RIP      Bytes  Opcode                
.pthread_key_create:                  #        0x2e300  0      OPC=<label>           
  movl %edi, %r10d                    #  1     0x2e300  3      OPC=movl_r32_r32      
  movl %esi, %r9d                     #  2     0x2e303  3      OPC=movl_r32_r32      
  xorl %edx, %edx                     #  3     0x2e306  2      OPC=xorl_r32_r32      
  nop                                 #  4     0x2e308  1      OPC=nop               
  nop                                 #  5     0x2e309  1      OPC=nop               
  nop                                 #  6     0x2e30a  1      OPC=nop               
  nop                                 #  7     0x2e30b  1      OPC=nop               
  nop                                 #  8     0x2e30c  1      OPC=nop               
  nop                                 #  9     0x2e30d  1      OPC=nop               
  nop                                 #  10    0x2e30e  1      OPC=nop               
  nop                                 #  11    0x2e30f  1      OPC=nop               
  nop                                 #  12    0x2e310  1      OPC=nop               
  nop                                 #  13    0x2e311  1      OPC=nop               
  nop                                 #  14    0x2e312  1      OPC=nop               
  nop                                 #  15    0x2e313  1      OPC=nop               
  nop                                 #  16    0x2e314  1      OPC=nop               
  nop                                 #  17    0x2e315  1      OPC=nop               
  nop                                 #  18    0x2e316  1      OPC=nop               
  nop                                 #  19    0x2e317  1      OPC=nop               
  nop                                 #  20    0x2e318  1      OPC=nop               
  nop                                 #  21    0x2e319  1      OPC=nop               
  nop                                 #  22    0x2e31a  1      OPC=nop               
  nop                                 #  23    0x2e31b  1      OPC=nop               
  nop                                 #  24    0x2e31c  1      OPC=nop               
  nop                                 #  25    0x2e31d  1      OPC=nop               
  nop                                 #  26    0x2e31e  1      OPC=nop               
  nop                                 #  27    0x2e31f  1      OPC=nop               
.L_2e320:                             #        0x2e320  0      OPC=<label>           
  leal (,%rdx,8), %edi                #  28    0x2e320  7      OPC=leal_r32_m16      
  movslq %edi, %rsi                   #  29    0x2e327  3      OPC=movslq_r64_r32    
  leaq 0x10071624(%rsi), %rax         #  30    0x2e32a  7      OPC=leaq_r64_m16      
  movl %eax, %eax                     #  31    0x2e331  2      OPC=movl_r32_r32      
  movl (%r15,%rax,1), %ecx            #  32    0x2e333  4      OPC=movl_r32_m32      
  testb $0x1, %cl                     #  33    0x2e337  3      OPC=testb_r8_imm8     
  jne .L_2e360                        #  34    0x2e33a  2      OPC=jne_label         
  cmpl $0xfffffffe, %ecx              #  35    0x2e33c  6      OPC=cmpl_r32_imm32    
  nop                                 #  36    0x2e342  1      OPC=nop               
  nop                                 #  37    0x2e343  1      OPC=nop               
  nop                                 #  38    0x2e344  1      OPC=nop               
  nop                                 #  39    0x2e345  1      OPC=nop               
  je .L_2e360                         #  40    0x2e346  2      OPC=je_label          
  leal 0x1(%rcx), %r8d                #  41    0x2e348  4      OPC=leal_r32_m16      
  addl $0x10071624, %edi              #  42    0x2e34c  6      OPC=addl_r32_imm32    
  movl %ecx, %eax                     #  43    0x2e352  2      OPC=movl_r32_r32      
  movl %edi, %edi                     #  44    0x2e354  2      OPC=movl_r32_r32      
  lock                                #  45    0x2e356  1      OPC=lock              
  cmpxchgl %r8d, (%r15,%rdi,1)        #  46    0x2e357  5      OPC=cmpxchgl_m32_r32  
  nop                                 #  47    0x2e35c  1      OPC=nop               
  cmpl %ecx, %eax                     #  48    0x2e35d  2      OPC=cmpl_r32_r32      
  je .L_2e380                         #  49    0x2e35f  2      OPC=je_label          
  nop                                 #  50    0x2e361  1      OPC=nop               
  nop                                 #  51    0x2e362  1      OPC=nop               
  nop                                 #  52    0x2e363  1      OPC=nop               
  nop                                 #  53    0x2e364  1      OPC=nop               
  nop                                 #  54    0x2e365  1      OPC=nop               
  nop                                 #  55    0x2e366  1      OPC=nop               
.L_2e360:                             #        0x2e367  0      OPC=<label>           
  addl $0x1, %edx                     #  56    0x2e367  3      OPC=addl_r32_imm8     
  cmpl $0x200, %edx                   #  57    0x2e36a  6      OPC=cmpl_r32_imm32    
  jne .L_2e320                        #  58    0x2e370  2      OPC=jne_label         
  movl $0xb, %eax                     #  59    0x2e372  5      OPC=movl_r32_imm32    
  popq %r11                           #  60    0x2e377  2      OPC=popq_r64_1        
  andl $0xffffffe0, %r11d             #  61    0x2e379  7      OPC=andl_r32_imm32    
  nop                                 #  62    0x2e380  1      OPC=nop               
  nop                                 #  63    0x2e381  1      OPC=nop               
  nop                                 #  64    0x2e382  1      OPC=nop               
  nop                                 #  65    0x2e383  1      OPC=nop               
  addq %r15, %r11                     #  66    0x2e384  3      OPC=addq_r64_r64      
  jmpq %r11                           #  67    0x2e387  3      OPC=jmpq_r64          
  nop                                 #  68    0x2e38a  1      OPC=nop               
  nop                                 #  69    0x2e38b  1      OPC=nop               
  nop                                 #  70    0x2e38c  1      OPC=nop               
  nop                                 #  71    0x2e38d  1      OPC=nop               
.L_2e380:                             #        0x2e38e  0      OPC=<label>           
  movl %r10d, %r10d                   #  72    0x2e38e  3      OPC=movl_r32_r32      
  movl %edx, (%r15,%r10,1)            #  73    0x2e391  4      OPC=movl_m32_r32      
  movl %esi, %esi                     #  74    0x2e395  2      OPC=movl_r32_r32      
  movl %r9d, 0x10071620(%r15,%rsi,1)  #  75    0x2e397  8      OPC=movl_m32_r32      
  xorl %eax, %eax                     #  76    0x2e39f  2      OPC=xorl_r32_r32      
  popq %r11                           #  77    0x2e3a1  2      OPC=popq_r64_1        
  andl $0xffffffe0, %r11d             #  78    0x2e3a3  7      OPC=andl_r32_imm32    
  nop                                 #  79    0x2e3aa  1      OPC=nop               
  nop                                 #  80    0x2e3ab  1      OPC=nop               
  nop                                 #  81    0x2e3ac  1      OPC=nop               
  nop                                 #  82    0x2e3ad  1      OPC=nop               
  addq %r15, %r11                     #  83    0x2e3ae  3      OPC=addq_r64_r64      
  jmpq %r11                           #  84    0x2e3b1  3      OPC=jmpq_r64          
  nop                                 #  85    0x2e3b4  1      OPC=nop               
                                                                                     
.size pthread_key_create, .-pthread_key_create

