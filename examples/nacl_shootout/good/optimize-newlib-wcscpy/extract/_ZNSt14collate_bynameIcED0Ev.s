  .text
  .globl _ZNSt14collate_bynameIcED0Ev
  .type _ZNSt14collate_bynameIcED0Ev, @function

#! file-offset 0xc0500
#! rip-offset  0x80500
#! capacity    160 bytes

# Text                                                #  Line  RIP      Bytes  Opcode              
._ZNSt14collate_bynameIcED0Ev:                        #        0x80500  0      OPC=<label>         
  pushq %rbx                                          #  1     0x80500  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                     #  2     0x80501  2      OPC=movl_r32_r32    
  leal 0x8(%rbx), %edi                                #  3     0x80503  3      OPC=leal_r32_m16    
  subl $0x10, %esp                                    #  4     0x80506  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                     #  5     0x80509  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                     #  6     0x8050c  2      OPC=movl_r32_r32    
  movl $0x1003aff8, (%r15,%rbx,1)                     #  7     0x8050e  8      OPC=movl_m32_imm32  
  nop                                                 #  8     0x80516  1      OPC=nop             
  nop                                                 #  9     0x80517  1      OPC=nop             
  nop                                                 #  10    0x80518  1      OPC=nop             
  nop                                                 #  11    0x80519  1      OPC=nop             
  nop                                                 #  12    0x8051a  1      OPC=nop             
  callq ._ZNSt6locale5facet19_S_destroy_c_localeERPi  #  13    0x8051b  5      OPC=callq_label     
  movl %ebx, %edi                                     #  14    0x80520  2      OPC=movl_r32_r32    
  nop                                                 #  15    0x80522  1      OPC=nop             
  nop                                                 #  16    0x80523  1      OPC=nop             
  nop                                                 #  17    0x80524  1      OPC=nop             
  nop                                                 #  18    0x80525  1      OPC=nop             
  nop                                                 #  19    0x80526  1      OPC=nop             
  nop                                                 #  20    0x80527  1      OPC=nop             
  nop                                                 #  21    0x80528  1      OPC=nop             
  nop                                                 #  22    0x80529  1      OPC=nop             
  nop                                                 #  23    0x8052a  1      OPC=nop             
  nop                                                 #  24    0x8052b  1      OPC=nop             
  nop                                                 #  25    0x8052c  1      OPC=nop             
  nop                                                 #  26    0x8052d  1      OPC=nop             
  nop                                                 #  27    0x8052e  1      OPC=nop             
  nop                                                 #  28    0x8052f  1      OPC=nop             
  nop                                                 #  29    0x80530  1      OPC=nop             
  nop                                                 #  30    0x80531  1      OPC=nop             
  nop                                                 #  31    0x80532  1      OPC=nop             
  nop                                                 #  32    0x80533  1      OPC=nop             
  nop                                                 #  33    0x80534  1      OPC=nop             
  nop                                                 #  34    0x80535  1      OPC=nop             
  nop                                                 #  35    0x80536  1      OPC=nop             
  nop                                                 #  36    0x80537  1      OPC=nop             
  nop                                                 #  37    0x80538  1      OPC=nop             
  nop                                                 #  38    0x80539  1      OPC=nop             
  nop                                                 #  39    0x8053a  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                       #  40    0x8053b  5      OPC=callq_label     
  movl %ebx, %edi                                     #  41    0x80540  2      OPC=movl_r32_r32    
  addl $0x10, %esp                                    #  42    0x80542  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                     #  43    0x80545  3      OPC=addq_r64_r64    
  popq %rbx                                           #  44    0x80548  1      OPC=popq_r64_1      
  jmpq ._ZdlPv                                        #  45    0x80549  5      OPC=jmpq_label_1    
  nop                                                 #  46    0x8054e  1      OPC=nop             
  nop                                                 #  47    0x8054f  1      OPC=nop             
  nop                                                 #  48    0x80550  1      OPC=nop             
  nop                                                 #  49    0x80551  1      OPC=nop             
  nop                                                 #  50    0x80552  1      OPC=nop             
  nop                                                 #  51    0x80553  1      OPC=nop             
  nop                                                 #  52    0x80554  1      OPC=nop             
  nop                                                 #  53    0x80555  1      OPC=nop             
  nop                                                 #  54    0x80556  1      OPC=nop             
  nop                                                 #  55    0x80557  1      OPC=nop             
  nop                                                 #  56    0x80558  1      OPC=nop             
  nop                                                 #  57    0x80559  1      OPC=nop             
  nop                                                 #  58    0x8055a  1      OPC=nop             
  nop                                                 #  59    0x8055b  1      OPC=nop             
  nop                                                 #  60    0x8055c  1      OPC=nop             
  nop                                                 #  61    0x8055d  1      OPC=nop             
  nop                                                 #  62    0x8055e  1      OPC=nop             
  nop                                                 #  63    0x8055f  1      OPC=nop             
  movl %ebx, %edi                                     #  64    0x80560  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                #  65    0x80562  4      OPC=movl_m32_r32    
  nop                                                 #  66    0x80566  1      OPC=nop             
  nop                                                 #  67    0x80567  1      OPC=nop             
  nop                                                 #  68    0x80568  1      OPC=nop             
  nop                                                 #  69    0x80569  1      OPC=nop             
  nop                                                 #  70    0x8056a  1      OPC=nop             
  nop                                                 #  71    0x8056b  1      OPC=nop             
  nop                                                 #  72    0x8056c  1      OPC=nop             
  nop                                                 #  73    0x8056d  1      OPC=nop             
  nop                                                 #  74    0x8056e  1      OPC=nop             
  nop                                                 #  75    0x8056f  1      OPC=nop             
  nop                                                 #  76    0x80570  1      OPC=nop             
  nop                                                 #  77    0x80571  1      OPC=nop             
  nop                                                 #  78    0x80572  1      OPC=nop             
  nop                                                 #  79    0x80573  1      OPC=nop             
  nop                                                 #  80    0x80574  1      OPC=nop             
  nop                                                 #  81    0x80575  1      OPC=nop             
  nop                                                 #  82    0x80576  1      OPC=nop             
  nop                                                 #  83    0x80577  1      OPC=nop             
  nop                                                 #  84    0x80578  1      OPC=nop             
  nop                                                 #  85    0x80579  1      OPC=nop             
  nop                                                 #  86    0x8057a  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                       #  87    0x8057b  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                #  88    0x80580  4      OPC=movl_r32_m32    
  movl %eax, %edi                                     #  89    0x80584  2      OPC=movl_r32_r32    
  nop                                                 #  90    0x80586  1      OPC=nop             
  nop                                                 #  91    0x80587  1      OPC=nop             
  nop                                                 #  92    0x80588  1      OPC=nop             
  nop                                                 #  93    0x80589  1      OPC=nop             
  nop                                                 #  94    0x8058a  1      OPC=nop             
  nop                                                 #  95    0x8058b  1      OPC=nop             
  nop                                                 #  96    0x8058c  1      OPC=nop             
  nop                                                 #  97    0x8058d  1      OPC=nop             
  nop                                                 #  98    0x8058e  1      OPC=nop             
  nop                                                 #  99    0x8058f  1      OPC=nop             
  nop                                                 #  100   0x80590  1      OPC=nop             
  nop                                                 #  101   0x80591  1      OPC=nop             
  nop                                                 #  102   0x80592  1      OPC=nop             
  nop                                                 #  103   0x80593  1      OPC=nop             
  nop                                                 #  104   0x80594  1      OPC=nop             
  nop                                                 #  105   0x80595  1      OPC=nop             
  nop                                                 #  106   0x80596  1      OPC=nop             
  nop                                                 #  107   0x80597  1      OPC=nop             
  nop                                                 #  108   0x80598  1      OPC=nop             
  nop                                                 #  109   0x80599  1      OPC=nop             
  nop                                                 #  110   0x8059a  1      OPC=nop             
  callq ._Unwind_Resume                               #  111   0x8059b  5      OPC=callq_label     
                                                                                                   
.size _ZNSt14collate_bynameIcED0Ev, .-_ZNSt14collate_bynameIcED0Ev

