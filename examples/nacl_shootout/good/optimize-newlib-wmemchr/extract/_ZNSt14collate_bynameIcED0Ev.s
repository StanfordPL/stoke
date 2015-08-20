  .text
  .globl _ZNSt14collate_bynameIcED0Ev
  .type _ZNSt14collate_bynameIcED0Ev, @function

#! file-offset 0xc0800
#! rip-offset  0x80800
#! capacity    160 bytes

# Text                                                #  Line  RIP      Bytes  Opcode              
._ZNSt14collate_bynameIcED0Ev:                        #        0x80800  0      OPC=<label>         
  pushq %rbx                                          #  1     0x80800  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                     #  2     0x80801  2      OPC=movl_r32_r32    
  leal 0x8(%rbx), %edi                                #  3     0x80803  3      OPC=leal_r32_m16    
  subl $0x10, %esp                                    #  4     0x80806  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                     #  5     0x80809  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                     #  6     0x8080c  2      OPC=movl_r32_r32    
  movl $0x1003aff8, (%r15,%rbx,1)                     #  7     0x8080e  8      OPC=movl_m32_imm32  
  nop                                                 #  8     0x80816  1      OPC=nop             
  nop                                                 #  9     0x80817  1      OPC=nop             
  nop                                                 #  10    0x80818  1      OPC=nop             
  nop                                                 #  11    0x80819  1      OPC=nop             
  nop                                                 #  12    0x8081a  1      OPC=nop             
  callq ._ZNSt6locale5facet19_S_destroy_c_localeERPi  #  13    0x8081b  5      OPC=callq_label     
  movl %ebx, %edi                                     #  14    0x80820  2      OPC=movl_r32_r32    
  nop                                                 #  15    0x80822  1      OPC=nop             
  nop                                                 #  16    0x80823  1      OPC=nop             
  nop                                                 #  17    0x80824  1      OPC=nop             
  nop                                                 #  18    0x80825  1      OPC=nop             
  nop                                                 #  19    0x80826  1      OPC=nop             
  nop                                                 #  20    0x80827  1      OPC=nop             
  nop                                                 #  21    0x80828  1      OPC=nop             
  nop                                                 #  22    0x80829  1      OPC=nop             
  nop                                                 #  23    0x8082a  1      OPC=nop             
  nop                                                 #  24    0x8082b  1      OPC=nop             
  nop                                                 #  25    0x8082c  1      OPC=nop             
  nop                                                 #  26    0x8082d  1      OPC=nop             
  nop                                                 #  27    0x8082e  1      OPC=nop             
  nop                                                 #  28    0x8082f  1      OPC=nop             
  nop                                                 #  29    0x80830  1      OPC=nop             
  nop                                                 #  30    0x80831  1      OPC=nop             
  nop                                                 #  31    0x80832  1      OPC=nop             
  nop                                                 #  32    0x80833  1      OPC=nop             
  nop                                                 #  33    0x80834  1      OPC=nop             
  nop                                                 #  34    0x80835  1      OPC=nop             
  nop                                                 #  35    0x80836  1      OPC=nop             
  nop                                                 #  36    0x80837  1      OPC=nop             
  nop                                                 #  37    0x80838  1      OPC=nop             
  nop                                                 #  38    0x80839  1      OPC=nop             
  nop                                                 #  39    0x8083a  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                       #  40    0x8083b  5      OPC=callq_label     
  movl %ebx, %edi                                     #  41    0x80840  2      OPC=movl_r32_r32    
  addl $0x10, %esp                                    #  42    0x80842  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                     #  43    0x80845  3      OPC=addq_r64_r64    
  popq %rbx                                           #  44    0x80848  1      OPC=popq_r64_1      
  jmpq ._ZdlPv                                        #  45    0x80849  5      OPC=jmpq_label_1    
  nop                                                 #  46    0x8084e  1      OPC=nop             
  nop                                                 #  47    0x8084f  1      OPC=nop             
  nop                                                 #  48    0x80850  1      OPC=nop             
  nop                                                 #  49    0x80851  1      OPC=nop             
  nop                                                 #  50    0x80852  1      OPC=nop             
  nop                                                 #  51    0x80853  1      OPC=nop             
  nop                                                 #  52    0x80854  1      OPC=nop             
  nop                                                 #  53    0x80855  1      OPC=nop             
  nop                                                 #  54    0x80856  1      OPC=nop             
  nop                                                 #  55    0x80857  1      OPC=nop             
  nop                                                 #  56    0x80858  1      OPC=nop             
  nop                                                 #  57    0x80859  1      OPC=nop             
  nop                                                 #  58    0x8085a  1      OPC=nop             
  nop                                                 #  59    0x8085b  1      OPC=nop             
  nop                                                 #  60    0x8085c  1      OPC=nop             
  nop                                                 #  61    0x8085d  1      OPC=nop             
  nop                                                 #  62    0x8085e  1      OPC=nop             
  nop                                                 #  63    0x8085f  1      OPC=nop             
  movl %ebx, %edi                                     #  64    0x80860  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                #  65    0x80862  4      OPC=movl_m32_r32    
  nop                                                 #  66    0x80866  1      OPC=nop             
  nop                                                 #  67    0x80867  1      OPC=nop             
  nop                                                 #  68    0x80868  1      OPC=nop             
  nop                                                 #  69    0x80869  1      OPC=nop             
  nop                                                 #  70    0x8086a  1      OPC=nop             
  nop                                                 #  71    0x8086b  1      OPC=nop             
  nop                                                 #  72    0x8086c  1      OPC=nop             
  nop                                                 #  73    0x8086d  1      OPC=nop             
  nop                                                 #  74    0x8086e  1      OPC=nop             
  nop                                                 #  75    0x8086f  1      OPC=nop             
  nop                                                 #  76    0x80870  1      OPC=nop             
  nop                                                 #  77    0x80871  1      OPC=nop             
  nop                                                 #  78    0x80872  1      OPC=nop             
  nop                                                 #  79    0x80873  1      OPC=nop             
  nop                                                 #  80    0x80874  1      OPC=nop             
  nop                                                 #  81    0x80875  1      OPC=nop             
  nop                                                 #  82    0x80876  1      OPC=nop             
  nop                                                 #  83    0x80877  1      OPC=nop             
  nop                                                 #  84    0x80878  1      OPC=nop             
  nop                                                 #  85    0x80879  1      OPC=nop             
  nop                                                 #  86    0x8087a  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                       #  87    0x8087b  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                #  88    0x80880  4      OPC=movl_r32_m32    
  movl %eax, %edi                                     #  89    0x80884  2      OPC=movl_r32_r32    
  nop                                                 #  90    0x80886  1      OPC=nop             
  nop                                                 #  91    0x80887  1      OPC=nop             
  nop                                                 #  92    0x80888  1      OPC=nop             
  nop                                                 #  93    0x80889  1      OPC=nop             
  nop                                                 #  94    0x8088a  1      OPC=nop             
  nop                                                 #  95    0x8088b  1      OPC=nop             
  nop                                                 #  96    0x8088c  1      OPC=nop             
  nop                                                 #  97    0x8088d  1      OPC=nop             
  nop                                                 #  98    0x8088e  1      OPC=nop             
  nop                                                 #  99    0x8088f  1      OPC=nop             
  nop                                                 #  100   0x80890  1      OPC=nop             
  nop                                                 #  101   0x80891  1      OPC=nop             
  nop                                                 #  102   0x80892  1      OPC=nop             
  nop                                                 #  103   0x80893  1      OPC=nop             
  nop                                                 #  104   0x80894  1      OPC=nop             
  nop                                                 #  105   0x80895  1      OPC=nop             
  nop                                                 #  106   0x80896  1      OPC=nop             
  nop                                                 #  107   0x80897  1      OPC=nop             
  nop                                                 #  108   0x80898  1      OPC=nop             
  nop                                                 #  109   0x80899  1      OPC=nop             
  nop                                                 #  110   0x8089a  1      OPC=nop             
  callq ._Unwind_Resume                               #  111   0x8089b  5      OPC=callq_label     
                                                                                                   
.size _ZNSt14collate_bynameIcED0Ev, .-_ZNSt14collate_bynameIcED0Ev

