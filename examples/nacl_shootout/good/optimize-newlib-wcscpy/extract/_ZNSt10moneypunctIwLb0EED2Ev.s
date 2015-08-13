  .text
  .globl _ZNSt10moneypunctIwLb0EED2Ev
  .type _ZNSt10moneypunctIwLb0EED2Ev, @function

#! file-offset 0x11b2e0
#! rip-offset  0xdb2e0
#! capacity    160 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSt10moneypunctIwLb0EED2Ev:     #        0xdb2e0  0      OPC=<label>         
  pushq %rbx                       #  1     0xdb2e0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                  #  2     0xdb2e1  2      OPC=movl_r32_r32    
  subl $0x10, %esp                 #  3     0xdb2e3  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                  #  4     0xdb2e6  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                  #  5     0xdb2e9  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rbx,1), %edi      #  6     0xdb2eb  5      OPC=movl_r32_m32    
  movl %ebx, %ebx                  #  7     0xdb2f0  2      OPC=movl_r32_r32    
  movl $0x1003c0c8, (%r15,%rbx,1)  #  8     0xdb2f2  8      OPC=movl_m32_imm32  
  testq %rdi, %rdi                 #  9     0xdb2fa  3      OPC=testq_r64_r64   
  nop                              #  10    0xdb2fd  1      OPC=nop             
  nop                              #  11    0xdb2fe  1      OPC=nop             
  nop                              #  12    0xdb2ff  1      OPC=nop             
  je .L_db320                      #  13    0xdb300  2      OPC=je_label        
  movl %edi, %edi                  #  14    0xdb302  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax         #  15    0xdb304  4      OPC=movl_r32_m32    
  movl %eax, %eax                  #  16    0xdb308  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rax,1), %eax      #  17    0xdb30a  5      OPC=movl_r32_m32    
  nop                              #  18    0xdb30f  1      OPC=nop             
  nop                              #  19    0xdb310  1      OPC=nop             
  nop                              #  20    0xdb311  1      OPC=nop             
  nop                              #  21    0xdb312  1      OPC=nop             
  nop                              #  22    0xdb313  1      OPC=nop             
  nop                              #  23    0xdb314  1      OPC=nop             
  nop                              #  24    0xdb315  1      OPC=nop             
  nop                              #  25    0xdb316  1      OPC=nop             
  nop                              #  26    0xdb317  1      OPC=nop             
  andl $0xffffffe0, %eax           #  27    0xdb318  6      OPC=andl_r32_imm32  
  nop                              #  28    0xdb31e  1      OPC=nop             
  nop                              #  29    0xdb31f  1      OPC=nop             
  nop                              #  30    0xdb320  1      OPC=nop             
  addq %r15, %rax                  #  31    0xdb321  3      OPC=addq_r64_r64    
  callq %rax                       #  32    0xdb324  2      OPC=callq_r64       
.L_db320:                          #        0xdb326  0      OPC=<label>         
  movl %ebx, %edi                  #  33    0xdb326  2      OPC=movl_r32_r32    
  addl $0x10, %esp                 #  34    0xdb328  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                  #  35    0xdb32b  3      OPC=addq_r64_r64    
  popq %rbx                        #  36    0xdb32e  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev     #  37    0xdb32f  5      OPC=jmpq_label_1    
  nop                              #  38    0xdb334  1      OPC=nop             
  nop                              #  39    0xdb335  1      OPC=nop             
  nop                              #  40    0xdb336  1      OPC=nop             
  nop                              #  41    0xdb337  1      OPC=nop             
  nop                              #  42    0xdb338  1      OPC=nop             
  nop                              #  43    0xdb339  1      OPC=nop             
  nop                              #  44    0xdb33a  1      OPC=nop             
  nop                              #  45    0xdb33b  1      OPC=nop             
  nop                              #  46    0xdb33c  1      OPC=nop             
  nop                              #  47    0xdb33d  1      OPC=nop             
  nop                              #  48    0xdb33e  1      OPC=nop             
  nop                              #  49    0xdb33f  1      OPC=nop             
  nop                              #  50    0xdb340  1      OPC=nop             
  nop                              #  51    0xdb341  1      OPC=nop             
  nop                              #  52    0xdb342  1      OPC=nop             
  nop                              #  53    0xdb343  1      OPC=nop             
  nop                              #  54    0xdb344  1      OPC=nop             
  nop                              #  55    0xdb345  1      OPC=nop             
  movl %ebx, %edi                  #  56    0xdb346  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)             #  57    0xdb348  4      OPC=movl_m32_r32    
  nop                              #  58    0xdb34c  1      OPC=nop             
  nop                              #  59    0xdb34d  1      OPC=nop             
  nop                              #  60    0xdb34e  1      OPC=nop             
  nop                              #  61    0xdb34f  1      OPC=nop             
  nop                              #  62    0xdb350  1      OPC=nop             
  nop                              #  63    0xdb351  1      OPC=nop             
  nop                              #  64    0xdb352  1      OPC=nop             
  nop                              #  65    0xdb353  1      OPC=nop             
  nop                              #  66    0xdb354  1      OPC=nop             
  nop                              #  67    0xdb355  1      OPC=nop             
  nop                              #  68    0xdb356  1      OPC=nop             
  nop                              #  69    0xdb357  1      OPC=nop             
  nop                              #  70    0xdb358  1      OPC=nop             
  nop                              #  71    0xdb359  1      OPC=nop             
  nop                              #  72    0xdb35a  1      OPC=nop             
  nop                              #  73    0xdb35b  1      OPC=nop             
  nop                              #  74    0xdb35c  1      OPC=nop             
  nop                              #  75    0xdb35d  1      OPC=nop             
  nop                              #  76    0xdb35e  1      OPC=nop             
  nop                              #  77    0xdb35f  1      OPC=nop             
  nop                              #  78    0xdb360  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev    #  79    0xdb361  5      OPC=callq_label     
  movl 0x8(%rsp), %eax             #  80    0xdb366  4      OPC=movl_r32_m32    
  movl %eax, %edi                  #  81    0xdb36a  2      OPC=movl_r32_r32    
  nop                              #  82    0xdb36c  1      OPC=nop             
  nop                              #  83    0xdb36d  1      OPC=nop             
  nop                              #  84    0xdb36e  1      OPC=nop             
  nop                              #  85    0xdb36f  1      OPC=nop             
  nop                              #  86    0xdb370  1      OPC=nop             
  nop                              #  87    0xdb371  1      OPC=nop             
  nop                              #  88    0xdb372  1      OPC=nop             
  nop                              #  89    0xdb373  1      OPC=nop             
  nop                              #  90    0xdb374  1      OPC=nop             
  nop                              #  91    0xdb375  1      OPC=nop             
  nop                              #  92    0xdb376  1      OPC=nop             
  nop                              #  93    0xdb377  1      OPC=nop             
  nop                              #  94    0xdb378  1      OPC=nop             
  nop                              #  95    0xdb379  1      OPC=nop             
  nop                              #  96    0xdb37a  1      OPC=nop             
  nop                              #  97    0xdb37b  1      OPC=nop             
  nop                              #  98    0xdb37c  1      OPC=nop             
  nop                              #  99    0xdb37d  1      OPC=nop             
  nop                              #  100   0xdb37e  1      OPC=nop             
  nop                              #  101   0xdb37f  1      OPC=nop             
  nop                              #  102   0xdb380  1      OPC=nop             
  callq ._Unwind_Resume            #  103   0xdb381  5      OPC=callq_label     
                                                                                
.size _ZNSt10moneypunctIwLb0EED2Ev, .-_ZNSt10moneypunctIwLb0EED2Ev

