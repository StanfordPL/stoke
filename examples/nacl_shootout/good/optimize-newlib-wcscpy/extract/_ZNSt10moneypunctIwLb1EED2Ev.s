  .text
  .globl _ZNSt10moneypunctIwLb1EED2Ev
  .type _ZNSt10moneypunctIwLb1EED2Ev, @function

#! file-offset 0x11b420
#! rip-offset  0xdb420
#! capacity    160 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSt10moneypunctIwLb1EED2Ev:     #        0xdb420  0      OPC=<label>         
  pushq %rbx                       #  1     0xdb420  1      OPC=pushq_r64_1     
  movl %edi, %ebx                  #  2     0xdb421  2      OPC=movl_r32_r32    
  subl $0x10, %esp                 #  3     0xdb423  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                  #  4     0xdb426  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                  #  5     0xdb429  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rbx,1), %edi      #  6     0xdb42b  5      OPC=movl_r32_m32    
  movl %ebx, %ebx                  #  7     0xdb430  2      OPC=movl_r32_r32    
  movl $0x1003c108, (%r15,%rbx,1)  #  8     0xdb432  8      OPC=movl_m32_imm32  
  testq %rdi, %rdi                 #  9     0xdb43a  3      OPC=testq_r64_r64   
  nop                              #  10    0xdb43d  1      OPC=nop             
  nop                              #  11    0xdb43e  1      OPC=nop             
  nop                              #  12    0xdb43f  1      OPC=nop             
  je .L_db460                      #  13    0xdb440  2      OPC=je_label        
  movl %edi, %edi                  #  14    0xdb442  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax         #  15    0xdb444  4      OPC=movl_r32_m32    
  movl %eax, %eax                  #  16    0xdb448  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rax,1), %eax      #  17    0xdb44a  5      OPC=movl_r32_m32    
  nop                              #  18    0xdb44f  1      OPC=nop             
  nop                              #  19    0xdb450  1      OPC=nop             
  nop                              #  20    0xdb451  1      OPC=nop             
  nop                              #  21    0xdb452  1      OPC=nop             
  nop                              #  22    0xdb453  1      OPC=nop             
  nop                              #  23    0xdb454  1      OPC=nop             
  nop                              #  24    0xdb455  1      OPC=nop             
  nop                              #  25    0xdb456  1      OPC=nop             
  nop                              #  26    0xdb457  1      OPC=nop             
  andl $0xffffffe0, %eax           #  27    0xdb458  6      OPC=andl_r32_imm32  
  nop                              #  28    0xdb45e  1      OPC=nop             
  nop                              #  29    0xdb45f  1      OPC=nop             
  nop                              #  30    0xdb460  1      OPC=nop             
  addq %r15, %rax                  #  31    0xdb461  3      OPC=addq_r64_r64    
  callq %rax                       #  32    0xdb464  2      OPC=callq_r64       
.L_db460:                          #        0xdb466  0      OPC=<label>         
  movl %ebx, %edi                  #  33    0xdb466  2      OPC=movl_r32_r32    
  addl $0x10, %esp                 #  34    0xdb468  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                  #  35    0xdb46b  3      OPC=addq_r64_r64    
  popq %rbx                        #  36    0xdb46e  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev     #  37    0xdb46f  5      OPC=jmpq_label_1    
  nop                              #  38    0xdb474  1      OPC=nop             
  nop                              #  39    0xdb475  1      OPC=nop             
  nop                              #  40    0xdb476  1      OPC=nop             
  nop                              #  41    0xdb477  1      OPC=nop             
  nop                              #  42    0xdb478  1      OPC=nop             
  nop                              #  43    0xdb479  1      OPC=nop             
  nop                              #  44    0xdb47a  1      OPC=nop             
  nop                              #  45    0xdb47b  1      OPC=nop             
  nop                              #  46    0xdb47c  1      OPC=nop             
  nop                              #  47    0xdb47d  1      OPC=nop             
  nop                              #  48    0xdb47e  1      OPC=nop             
  nop                              #  49    0xdb47f  1      OPC=nop             
  nop                              #  50    0xdb480  1      OPC=nop             
  nop                              #  51    0xdb481  1      OPC=nop             
  nop                              #  52    0xdb482  1      OPC=nop             
  nop                              #  53    0xdb483  1      OPC=nop             
  nop                              #  54    0xdb484  1      OPC=nop             
  nop                              #  55    0xdb485  1      OPC=nop             
  movl %ebx, %edi                  #  56    0xdb486  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)             #  57    0xdb488  4      OPC=movl_m32_r32    
  nop                              #  58    0xdb48c  1      OPC=nop             
  nop                              #  59    0xdb48d  1      OPC=nop             
  nop                              #  60    0xdb48e  1      OPC=nop             
  nop                              #  61    0xdb48f  1      OPC=nop             
  nop                              #  62    0xdb490  1      OPC=nop             
  nop                              #  63    0xdb491  1      OPC=nop             
  nop                              #  64    0xdb492  1      OPC=nop             
  nop                              #  65    0xdb493  1      OPC=nop             
  nop                              #  66    0xdb494  1      OPC=nop             
  nop                              #  67    0xdb495  1      OPC=nop             
  nop                              #  68    0xdb496  1      OPC=nop             
  nop                              #  69    0xdb497  1      OPC=nop             
  nop                              #  70    0xdb498  1      OPC=nop             
  nop                              #  71    0xdb499  1      OPC=nop             
  nop                              #  72    0xdb49a  1      OPC=nop             
  nop                              #  73    0xdb49b  1      OPC=nop             
  nop                              #  74    0xdb49c  1      OPC=nop             
  nop                              #  75    0xdb49d  1      OPC=nop             
  nop                              #  76    0xdb49e  1      OPC=nop             
  nop                              #  77    0xdb49f  1      OPC=nop             
  nop                              #  78    0xdb4a0  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev    #  79    0xdb4a1  5      OPC=callq_label     
  movl 0x8(%rsp), %eax             #  80    0xdb4a6  4      OPC=movl_r32_m32    
  movl %eax, %edi                  #  81    0xdb4aa  2      OPC=movl_r32_r32    
  nop                              #  82    0xdb4ac  1      OPC=nop             
  nop                              #  83    0xdb4ad  1      OPC=nop             
  nop                              #  84    0xdb4ae  1      OPC=nop             
  nop                              #  85    0xdb4af  1      OPC=nop             
  nop                              #  86    0xdb4b0  1      OPC=nop             
  nop                              #  87    0xdb4b1  1      OPC=nop             
  nop                              #  88    0xdb4b2  1      OPC=nop             
  nop                              #  89    0xdb4b3  1      OPC=nop             
  nop                              #  90    0xdb4b4  1      OPC=nop             
  nop                              #  91    0xdb4b5  1      OPC=nop             
  nop                              #  92    0xdb4b6  1      OPC=nop             
  nop                              #  93    0xdb4b7  1      OPC=nop             
  nop                              #  94    0xdb4b8  1      OPC=nop             
  nop                              #  95    0xdb4b9  1      OPC=nop             
  nop                              #  96    0xdb4ba  1      OPC=nop             
  nop                              #  97    0xdb4bb  1      OPC=nop             
  nop                              #  98    0xdb4bc  1      OPC=nop             
  nop                              #  99    0xdb4bd  1      OPC=nop             
  nop                              #  100   0xdb4be  1      OPC=nop             
  nop                              #  101   0xdb4bf  1      OPC=nop             
  nop                              #  102   0xdb4c0  1      OPC=nop             
  callq ._Unwind_Resume            #  103   0xdb4c1  5      OPC=callq_label     
                                                                                
.size _ZNSt10moneypunctIwLb1EED2Ev, .-_ZNSt10moneypunctIwLb1EED2Ev

