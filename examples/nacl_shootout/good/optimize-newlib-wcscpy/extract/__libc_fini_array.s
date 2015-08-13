  .text
  .globl __libc_fini_array
  .type __libc_fini_array, @function

#! file-offset 0x15aa80
#! rip-offset  0x11aa80
#! capacity    160 bytes

# Text                             #  Line  RIP       Bytes  Opcode              
.__libc_fini_array:                #        0x11aa80  0      OPC=<label>         
  pushq %r12                       #  1     0x11aa80  2      OPC=pushq_r64_1     
  pushq %rbx                       #  2     0x11aa82  1      OPC=pushq_r64_1     
  movl $0x10070498, %ebx           #  3     0x11aa83  5      OPC=movl_r32_imm32  
  subl $0x10070498, %ebx           #  4     0x11aa88  6      OPC=subl_r32_imm32  
  sarl $0x2, %ebx                  #  5     0x11aa8e  3      OPC=sarl_r32_imm8   
  subl $0x8, %esp                  #  6     0x11aa91  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                  #  7     0x11aa94  3      OPC=addq_r64_r64    
  testl %ebx, %ebx                 #  8     0x11aa97  2      OPC=testl_r32_r32   
  je .L_11ab00                     #  9     0x11aa99  2      OPC=je_label        
  nop                              #  10    0x11aa9b  1      OPC=nop             
  nop                              #  11    0x11aa9c  1      OPC=nop             
  nop                              #  12    0x11aa9d  1      OPC=nop             
  nop                              #  13    0x11aa9e  1      OPC=nop             
  nop                              #  14    0x11aa9f  1      OPC=nop             
  leal 0x10070494(,%rbx,4), %r12d  #  15    0x11aaa0  8      OPC=leal_r32_m16    
  nop                              #  16    0x11aaa8  1      OPC=nop             
  nop                              #  17    0x11aaa9  1      OPC=nop             
  nop                              #  18    0x11aaaa  1      OPC=nop             
  nop                              #  19    0x11aaab  1      OPC=nop             
  nop                              #  20    0x11aaac  1      OPC=nop             
  nop                              #  21    0x11aaad  1      OPC=nop             
  nop                              #  22    0x11aaae  1      OPC=nop             
  nop                              #  23    0x11aaaf  1      OPC=nop             
  nop                              #  24    0x11aab0  1      OPC=nop             
  nop                              #  25    0x11aab1  1      OPC=nop             
  nop                              #  26    0x11aab2  1      OPC=nop             
  nop                              #  27    0x11aab3  1      OPC=nop             
  nop                              #  28    0x11aab4  1      OPC=nop             
  nop                              #  29    0x11aab5  1      OPC=nop             
  nop                              #  30    0x11aab6  1      OPC=nop             
  nop                              #  31    0x11aab7  1      OPC=nop             
  nop                              #  32    0x11aab8  1      OPC=nop             
  nop                              #  33    0x11aab9  1      OPC=nop             
  nop                              #  34    0x11aaba  1      OPC=nop             
  nop                              #  35    0x11aabb  1      OPC=nop             
  nop                              #  36    0x11aabc  1      OPC=nop             
  nop                              #  37    0x11aabd  1      OPC=nop             
  nop                              #  38    0x11aabe  1      OPC=nop             
  nop                              #  39    0x11aabf  1      OPC=nop             
.L_11aac0:                         #        0x11aac0  0      OPC=<label>         
  movl %r12d, %eax                 #  40    0x11aac0  3      OPC=movl_r32_r32    
  subl $0x1, %ebx                  #  41    0x11aac3  3      OPC=subl_r32_imm8   
  subl $0x4, %r12d                 #  42    0x11aac6  4      OPC=subl_r32_imm8   
  movl %eax, %eax                  #  43    0x11aaca  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax         #  44    0x11aacc  4      OPC=movl_r32_m32    
  nop                              #  45    0x11aad0  1      OPC=nop             
  nop                              #  46    0x11aad1  1      OPC=nop             
  nop                              #  47    0x11aad2  1      OPC=nop             
  nop                              #  48    0x11aad3  1      OPC=nop             
  nop                              #  49    0x11aad4  1      OPC=nop             
  nop                              #  50    0x11aad5  1      OPC=nop             
  nop                              #  51    0x11aad6  1      OPC=nop             
  nop                              #  52    0x11aad7  1      OPC=nop             
  andl $0xffffffe0, %eax           #  53    0x11aad8  6      OPC=andl_r32_imm32  
  nop                              #  54    0x11aade  1      OPC=nop             
  nop                              #  55    0x11aadf  1      OPC=nop             
  nop                              #  56    0x11aae0  1      OPC=nop             
  addq %r15, %rax                  #  57    0x11aae1  3      OPC=addq_r64_r64    
  callq %rax                       #  58    0x11aae4  2      OPC=callq_r64       
  testl %ebx, %ebx                 #  59    0x11aae6  2      OPC=testl_r32_r32   
  jne .L_11aac0                    #  60    0x11aae8  2      OPC=jne_label       
  nop                              #  61    0x11aaea  1      OPC=nop             
  nop                              #  62    0x11aaeb  1      OPC=nop             
  nop                              #  63    0x11aaec  1      OPC=nop             
  nop                              #  64    0x11aaed  1      OPC=nop             
  nop                              #  65    0x11aaee  1      OPC=nop             
  nop                              #  66    0x11aaef  1      OPC=nop             
  nop                              #  67    0x11aaf0  1      OPC=nop             
  nop                              #  68    0x11aaf1  1      OPC=nop             
  nop                              #  69    0x11aaf2  1      OPC=nop             
  nop                              #  70    0x11aaf3  1      OPC=nop             
  nop                              #  71    0x11aaf4  1      OPC=nop             
  nop                              #  72    0x11aaf5  1      OPC=nop             
  nop                              #  73    0x11aaf6  1      OPC=nop             
  nop                              #  74    0x11aaf7  1      OPC=nop             
  nop                              #  75    0x11aaf8  1      OPC=nop             
  nop                              #  76    0x11aaf9  1      OPC=nop             
  nop                              #  77    0x11aafa  1      OPC=nop             
  nop                              #  78    0x11aafb  1      OPC=nop             
  nop                              #  79    0x11aafc  1      OPC=nop             
  nop                              #  80    0x11aafd  1      OPC=nop             
  nop                              #  81    0x11aafe  1      OPC=nop             
  nop                              #  82    0x11aaff  1      OPC=nop             
  nop                              #  83    0x11ab00  1      OPC=nop             
  nop                              #  84    0x11ab01  1      OPC=nop             
  nop                              #  85    0x11ab02  1      OPC=nop             
  nop                              #  86    0x11ab03  1      OPC=nop             
  nop                              #  87    0x11ab04  1      OPC=nop             
  nop                              #  88    0x11ab05  1      OPC=nop             
.L_11ab00:                         #        0x11ab06  0      OPC=<label>         
  addl $0x8, %esp                  #  89    0x11ab06  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                  #  90    0x11ab09  3      OPC=addq_r64_r64    
  popq %rbx                        #  91    0x11ab0c  1      OPC=popq_r64_1      
  popq %r12                        #  92    0x11ab0d  2      OPC=popq_r64_1      
  jmpq ._fini                      #  93    0x11ab0f  5      OPC=jmpq_label_1    
  nop                              #  94    0x11ab14  1      OPC=nop             
  nop                              #  95    0x11ab15  1      OPC=nop             
  nop                              #  96    0x11ab16  1      OPC=nop             
  nop                              #  97    0x11ab17  1      OPC=nop             
  nop                              #  98    0x11ab18  1      OPC=nop             
  nop                              #  99    0x11ab19  1      OPC=nop             
  nop                              #  100   0x11ab1a  1      OPC=nop             
  nop                              #  101   0x11ab1b  1      OPC=nop             
  nop                              #  102   0x11ab1c  1      OPC=nop             
  nop                              #  103   0x11ab1d  1      OPC=nop             
  nop                              #  104   0x11ab1e  1      OPC=nop             
  nop                              #  105   0x11ab1f  1      OPC=nop             
  nop                              #  106   0x11ab20  1      OPC=nop             
  nop                              #  107   0x11ab21  1      OPC=nop             
  nop                              #  108   0x11ab22  1      OPC=nop             
  nop                              #  109   0x11ab23  1      OPC=nop             
  nop                              #  110   0x11ab24  1      OPC=nop             
  nop                              #  111   0x11ab25  1      OPC=nop             
                                                                                 
.size __libc_fini_array, .-__libc_fini_array

