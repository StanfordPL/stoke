  .text
  .globl _ZNSt5ctypeIcED1Ev
  .type _ZNSt5ctypeIcED1Ev, @function

#! file-offset 0x1257c0
#! rip-offset  0xe57c0
#! capacity    160 bytes

# Text                                                #  Line  RIP      Bytes  Opcode              
._ZNSt5ctypeIcED1Ev:                                  #        0xe57c0  0      OPC=<label>         
  pushq %rbx                                          #  1     0xe57c0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                     #  2     0xe57c1  2      OPC=movl_r32_r32    
  leal 0x8(%rbx), %edi                                #  3     0xe57c3  3      OPC=leal_r32_m16    
  subl $0x10, %esp                                    #  4     0xe57c6  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                     #  5     0xe57c9  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                     #  6     0xe57cc  2      OPC=movl_r32_r32    
  movl $0x1003d608, (%r15,%rbx,1)                     #  7     0xe57ce  8      OPC=movl_m32_imm32  
  nop                                                 #  8     0xe57d6  1      OPC=nop             
  nop                                                 #  9     0xe57d7  1      OPC=nop             
  nop                                                 #  10    0xe57d8  1      OPC=nop             
  nop                                                 #  11    0xe57d9  1      OPC=nop             
  nop                                                 #  12    0xe57da  1      OPC=nop             
  callq ._ZNSt6locale5facet19_S_destroy_c_localeERPi  #  13    0xe57db  5      OPC=callq_label     
  movl %ebx, %ebx                                     #  14    0xe57e0  2      OPC=movl_r32_r32    
  cmpb $0x0, 0xc(%r15,%rbx,1)                         #  15    0xe57e2  6      OPC=cmpb_m8_imm8    
  je .L_e5800                                         #  16    0xe57e8  2      OPC=je_label        
  movl %ebx, %ebx                                     #  17    0xe57ea  2      OPC=movl_r32_r32    
  movl 0x18(%r15,%rbx,1), %edi                        #  18    0xe57ec  5      OPC=movl_r32_m32    
  testq %rdi, %rdi                                    #  19    0xe57f1  3      OPC=testq_r64_r64   
  je .L_e5800                                         #  20    0xe57f4  2      OPC=je_label        
  nop                                                 #  21    0xe57f6  1      OPC=nop             
  nop                                                 #  22    0xe57f7  1      OPC=nop             
  nop                                                 #  23    0xe57f8  1      OPC=nop             
  nop                                                 #  24    0xe57f9  1      OPC=nop             
  nop                                                 #  25    0xe57fa  1      OPC=nop             
  callq ._ZdaPv                                       #  26    0xe57fb  5      OPC=callq_label     
.L_e5800:                                             #        0xe5800  0      OPC=<label>         
  movl %ebx, %edi                                     #  27    0xe5800  2      OPC=movl_r32_r32    
  addl $0x10, %esp                                    #  28    0xe5802  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                     #  29    0xe5805  3      OPC=addq_r64_r64    
  popq %rbx                                           #  30    0xe5808  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev                        #  31    0xe5809  5      OPC=jmpq_label_1    
  nop                                                 #  32    0xe580e  1      OPC=nop             
  nop                                                 #  33    0xe580f  1      OPC=nop             
  nop                                                 #  34    0xe5810  1      OPC=nop             
  nop                                                 #  35    0xe5811  1      OPC=nop             
  nop                                                 #  36    0xe5812  1      OPC=nop             
  nop                                                 #  37    0xe5813  1      OPC=nop             
  nop                                                 #  38    0xe5814  1      OPC=nop             
  nop                                                 #  39    0xe5815  1      OPC=nop             
  nop                                                 #  40    0xe5816  1      OPC=nop             
  nop                                                 #  41    0xe5817  1      OPC=nop             
  nop                                                 #  42    0xe5818  1      OPC=nop             
  nop                                                 #  43    0xe5819  1      OPC=nop             
  nop                                                 #  44    0xe581a  1      OPC=nop             
  nop                                                 #  45    0xe581b  1      OPC=nop             
  nop                                                 #  46    0xe581c  1      OPC=nop             
  nop                                                 #  47    0xe581d  1      OPC=nop             
  nop                                                 #  48    0xe581e  1      OPC=nop             
  nop                                                 #  49    0xe581f  1      OPC=nop             
  movl %ebx, %edi                                     #  50    0xe5820  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                #  51    0xe5822  4      OPC=movl_m32_r32    
  nop                                                 #  52    0xe5826  1      OPC=nop             
  nop                                                 #  53    0xe5827  1      OPC=nop             
  nop                                                 #  54    0xe5828  1      OPC=nop             
  nop                                                 #  55    0xe5829  1      OPC=nop             
  nop                                                 #  56    0xe582a  1      OPC=nop             
  nop                                                 #  57    0xe582b  1      OPC=nop             
  nop                                                 #  58    0xe582c  1      OPC=nop             
  nop                                                 #  59    0xe582d  1      OPC=nop             
  nop                                                 #  60    0xe582e  1      OPC=nop             
  nop                                                 #  61    0xe582f  1      OPC=nop             
  nop                                                 #  62    0xe5830  1      OPC=nop             
  nop                                                 #  63    0xe5831  1      OPC=nop             
  nop                                                 #  64    0xe5832  1      OPC=nop             
  nop                                                 #  65    0xe5833  1      OPC=nop             
  nop                                                 #  66    0xe5834  1      OPC=nop             
  nop                                                 #  67    0xe5835  1      OPC=nop             
  nop                                                 #  68    0xe5836  1      OPC=nop             
  nop                                                 #  69    0xe5837  1      OPC=nop             
  nop                                                 #  70    0xe5838  1      OPC=nop             
  nop                                                 #  71    0xe5839  1      OPC=nop             
  nop                                                 #  72    0xe583a  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                       #  73    0xe583b  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                #  74    0xe5840  4      OPC=movl_r32_m32    
  movl %eax, %edi                                     #  75    0xe5844  2      OPC=movl_r32_r32    
  nop                                                 #  76    0xe5846  1      OPC=nop             
  nop                                                 #  77    0xe5847  1      OPC=nop             
  nop                                                 #  78    0xe5848  1      OPC=nop             
  nop                                                 #  79    0xe5849  1      OPC=nop             
  nop                                                 #  80    0xe584a  1      OPC=nop             
  nop                                                 #  81    0xe584b  1      OPC=nop             
  nop                                                 #  82    0xe584c  1      OPC=nop             
  nop                                                 #  83    0xe584d  1      OPC=nop             
  nop                                                 #  84    0xe584e  1      OPC=nop             
  nop                                                 #  85    0xe584f  1      OPC=nop             
  nop                                                 #  86    0xe5850  1      OPC=nop             
  nop                                                 #  87    0xe5851  1      OPC=nop             
  nop                                                 #  88    0xe5852  1      OPC=nop             
  nop                                                 #  89    0xe5853  1      OPC=nop             
  nop                                                 #  90    0xe5854  1      OPC=nop             
  nop                                                 #  91    0xe5855  1      OPC=nop             
  nop                                                 #  92    0xe5856  1      OPC=nop             
  nop                                                 #  93    0xe5857  1      OPC=nop             
  nop                                                 #  94    0xe5858  1      OPC=nop             
  nop                                                 #  95    0xe5859  1      OPC=nop             
  nop                                                 #  96    0xe585a  1      OPC=nop             
  callq ._Unwind_Resume                               #  97    0xe585b  5      OPC=callq_label     
                                                                                                   
.size _ZNSt5ctypeIcED1Ev, .-_ZNSt5ctypeIcED1Ev

