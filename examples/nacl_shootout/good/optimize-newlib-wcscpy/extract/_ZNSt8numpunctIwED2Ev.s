  .text
  .globl _ZNSt8numpunctIwED2Ev
  .type _ZNSt8numpunctIwED2Ev, @function

#! file-offset 0x11c4e0
#! rip-offset  0xdc4e0
#! capacity    160 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSt8numpunctIwED2Ev:            #        0xdc4e0  0      OPC=<label>         
  pushq %rbx                       #  1     0xdc4e0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                  #  2     0xdc4e1  2      OPC=movl_r32_r32    
  subl $0x10, %esp                 #  3     0xdc4e3  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                  #  4     0xdc4e6  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                  #  5     0xdc4e9  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rbx,1), %edi      #  6     0xdc4eb  5      OPC=movl_r32_m32    
  movl %ebx, %ebx                  #  7     0xdc4f0  2      OPC=movl_r32_r32    
  movl $0x1003c228, (%r15,%rbx,1)  #  8     0xdc4f2  8      OPC=movl_m32_imm32  
  testq %rdi, %rdi                 #  9     0xdc4fa  3      OPC=testq_r64_r64   
  nop                              #  10    0xdc4fd  1      OPC=nop             
  nop                              #  11    0xdc4fe  1      OPC=nop             
  nop                              #  12    0xdc4ff  1      OPC=nop             
  je .L_dc520                      #  13    0xdc500  2      OPC=je_label        
  movl %edi, %edi                  #  14    0xdc502  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax         #  15    0xdc504  4      OPC=movl_r32_m32    
  movl %eax, %eax                  #  16    0xdc508  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rax,1), %eax      #  17    0xdc50a  5      OPC=movl_r32_m32    
  nop                              #  18    0xdc50f  1      OPC=nop             
  nop                              #  19    0xdc510  1      OPC=nop             
  nop                              #  20    0xdc511  1      OPC=nop             
  nop                              #  21    0xdc512  1      OPC=nop             
  nop                              #  22    0xdc513  1      OPC=nop             
  nop                              #  23    0xdc514  1      OPC=nop             
  nop                              #  24    0xdc515  1      OPC=nop             
  nop                              #  25    0xdc516  1      OPC=nop             
  nop                              #  26    0xdc517  1      OPC=nop             
  andl $0xffffffe0, %eax           #  27    0xdc518  6      OPC=andl_r32_imm32  
  nop                              #  28    0xdc51e  1      OPC=nop             
  nop                              #  29    0xdc51f  1      OPC=nop             
  nop                              #  30    0xdc520  1      OPC=nop             
  addq %r15, %rax                  #  31    0xdc521  3      OPC=addq_r64_r64    
  callq %rax                       #  32    0xdc524  2      OPC=callq_r64       
.L_dc520:                          #        0xdc526  0      OPC=<label>         
  movl %ebx, %edi                  #  33    0xdc526  2      OPC=movl_r32_r32    
  addl $0x10, %esp                 #  34    0xdc528  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                  #  35    0xdc52b  3      OPC=addq_r64_r64    
  popq %rbx                        #  36    0xdc52e  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev     #  37    0xdc52f  5      OPC=jmpq_label_1    
  nop                              #  38    0xdc534  1      OPC=nop             
  nop                              #  39    0xdc535  1      OPC=nop             
  nop                              #  40    0xdc536  1      OPC=nop             
  nop                              #  41    0xdc537  1      OPC=nop             
  nop                              #  42    0xdc538  1      OPC=nop             
  nop                              #  43    0xdc539  1      OPC=nop             
  nop                              #  44    0xdc53a  1      OPC=nop             
  nop                              #  45    0xdc53b  1      OPC=nop             
  nop                              #  46    0xdc53c  1      OPC=nop             
  nop                              #  47    0xdc53d  1      OPC=nop             
  nop                              #  48    0xdc53e  1      OPC=nop             
  nop                              #  49    0xdc53f  1      OPC=nop             
  nop                              #  50    0xdc540  1      OPC=nop             
  nop                              #  51    0xdc541  1      OPC=nop             
  nop                              #  52    0xdc542  1      OPC=nop             
  nop                              #  53    0xdc543  1      OPC=nop             
  nop                              #  54    0xdc544  1      OPC=nop             
  nop                              #  55    0xdc545  1      OPC=nop             
  movl %ebx, %edi                  #  56    0xdc546  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)             #  57    0xdc548  4      OPC=movl_m32_r32    
  nop                              #  58    0xdc54c  1      OPC=nop             
  nop                              #  59    0xdc54d  1      OPC=nop             
  nop                              #  60    0xdc54e  1      OPC=nop             
  nop                              #  61    0xdc54f  1      OPC=nop             
  nop                              #  62    0xdc550  1      OPC=nop             
  nop                              #  63    0xdc551  1      OPC=nop             
  nop                              #  64    0xdc552  1      OPC=nop             
  nop                              #  65    0xdc553  1      OPC=nop             
  nop                              #  66    0xdc554  1      OPC=nop             
  nop                              #  67    0xdc555  1      OPC=nop             
  nop                              #  68    0xdc556  1      OPC=nop             
  nop                              #  69    0xdc557  1      OPC=nop             
  nop                              #  70    0xdc558  1      OPC=nop             
  nop                              #  71    0xdc559  1      OPC=nop             
  nop                              #  72    0xdc55a  1      OPC=nop             
  nop                              #  73    0xdc55b  1      OPC=nop             
  nop                              #  74    0xdc55c  1      OPC=nop             
  nop                              #  75    0xdc55d  1      OPC=nop             
  nop                              #  76    0xdc55e  1      OPC=nop             
  nop                              #  77    0xdc55f  1      OPC=nop             
  nop                              #  78    0xdc560  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev    #  79    0xdc561  5      OPC=callq_label     
  movl 0x8(%rsp), %eax             #  80    0xdc566  4      OPC=movl_r32_m32    
  movl %eax, %edi                  #  81    0xdc56a  2      OPC=movl_r32_r32    
  nop                              #  82    0xdc56c  1      OPC=nop             
  nop                              #  83    0xdc56d  1      OPC=nop             
  nop                              #  84    0xdc56e  1      OPC=nop             
  nop                              #  85    0xdc56f  1      OPC=nop             
  nop                              #  86    0xdc570  1      OPC=nop             
  nop                              #  87    0xdc571  1      OPC=nop             
  nop                              #  88    0xdc572  1      OPC=nop             
  nop                              #  89    0xdc573  1      OPC=nop             
  nop                              #  90    0xdc574  1      OPC=nop             
  nop                              #  91    0xdc575  1      OPC=nop             
  nop                              #  92    0xdc576  1      OPC=nop             
  nop                              #  93    0xdc577  1      OPC=nop             
  nop                              #  94    0xdc578  1      OPC=nop             
  nop                              #  95    0xdc579  1      OPC=nop             
  nop                              #  96    0xdc57a  1      OPC=nop             
  nop                              #  97    0xdc57b  1      OPC=nop             
  nop                              #  98    0xdc57c  1      OPC=nop             
  nop                              #  99    0xdc57d  1      OPC=nop             
  nop                              #  100   0xdc57e  1      OPC=nop             
  nop                              #  101   0xdc57f  1      OPC=nop             
  nop                              #  102   0xdc580  1      OPC=nop             
  callq ._Unwind_Resume            #  103   0xdc581  5      OPC=callq_label     
                                                                                
.size _ZNSt8numpunctIwED2Ev, .-_ZNSt8numpunctIwED2Ev

