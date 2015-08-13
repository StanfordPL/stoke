  .text
  .globl _ZNSt14collate_bynameIcED2Ev
  .type _ZNSt14collate_bynameIcED2Ev, @function

#! file-offset 0xc0620
#! rip-offset  0x80620
#! capacity    128 bytes

# Text                                                #  Line  RIP      Bytes  Opcode              
._ZNSt14collate_bynameIcED2Ev:                        #        0x80620  0      OPC=<label>         
  pushq %rbx                                          #  1     0x80620  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                     #  2     0x80621  2      OPC=movl_r32_r32    
  leal 0x8(%rbx), %edi                                #  3     0x80623  3      OPC=leal_r32_m16    
  subl $0x10, %esp                                    #  4     0x80626  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                     #  5     0x80629  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                     #  6     0x8062c  2      OPC=movl_r32_r32    
  movl $0x1003aff8, (%r15,%rbx,1)                     #  7     0x8062e  8      OPC=movl_m32_imm32  
  nop                                                 #  8     0x80636  1      OPC=nop             
  nop                                                 #  9     0x80637  1      OPC=nop             
  nop                                                 #  10    0x80638  1      OPC=nop             
  nop                                                 #  11    0x80639  1      OPC=nop             
  nop                                                 #  12    0x8063a  1      OPC=nop             
  callq ._ZNSt6locale5facet19_S_destroy_c_localeERPi  #  13    0x8063b  5      OPC=callq_label     
  movl %ebx, %edi                                     #  14    0x80640  2      OPC=movl_r32_r32    
  addl $0x10, %esp                                    #  15    0x80642  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                     #  16    0x80645  3      OPC=addq_r64_r64    
  popq %rbx                                           #  17    0x80648  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev                        #  18    0x80649  5      OPC=jmpq_label_1    
  nop                                                 #  19    0x8064e  1      OPC=nop             
  nop                                                 #  20    0x8064f  1      OPC=nop             
  nop                                                 #  21    0x80650  1      OPC=nop             
  nop                                                 #  22    0x80651  1      OPC=nop             
  nop                                                 #  23    0x80652  1      OPC=nop             
  nop                                                 #  24    0x80653  1      OPC=nop             
  nop                                                 #  25    0x80654  1      OPC=nop             
  nop                                                 #  26    0x80655  1      OPC=nop             
  nop                                                 #  27    0x80656  1      OPC=nop             
  nop                                                 #  28    0x80657  1      OPC=nop             
  nop                                                 #  29    0x80658  1      OPC=nop             
  nop                                                 #  30    0x80659  1      OPC=nop             
  nop                                                 #  31    0x8065a  1      OPC=nop             
  nop                                                 #  32    0x8065b  1      OPC=nop             
  nop                                                 #  33    0x8065c  1      OPC=nop             
  nop                                                 #  34    0x8065d  1      OPC=nop             
  nop                                                 #  35    0x8065e  1      OPC=nop             
  nop                                                 #  36    0x8065f  1      OPC=nop             
  movl %ebx, %edi                                     #  37    0x80660  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                #  38    0x80662  4      OPC=movl_m32_r32    
  nop                                                 #  39    0x80666  1      OPC=nop             
  nop                                                 #  40    0x80667  1      OPC=nop             
  nop                                                 #  41    0x80668  1      OPC=nop             
  nop                                                 #  42    0x80669  1      OPC=nop             
  nop                                                 #  43    0x8066a  1      OPC=nop             
  nop                                                 #  44    0x8066b  1      OPC=nop             
  nop                                                 #  45    0x8066c  1      OPC=nop             
  nop                                                 #  46    0x8066d  1      OPC=nop             
  nop                                                 #  47    0x8066e  1      OPC=nop             
  nop                                                 #  48    0x8066f  1      OPC=nop             
  nop                                                 #  49    0x80670  1      OPC=nop             
  nop                                                 #  50    0x80671  1      OPC=nop             
  nop                                                 #  51    0x80672  1      OPC=nop             
  nop                                                 #  52    0x80673  1      OPC=nop             
  nop                                                 #  53    0x80674  1      OPC=nop             
  nop                                                 #  54    0x80675  1      OPC=nop             
  nop                                                 #  55    0x80676  1      OPC=nop             
  nop                                                 #  56    0x80677  1      OPC=nop             
  nop                                                 #  57    0x80678  1      OPC=nop             
  nop                                                 #  58    0x80679  1      OPC=nop             
  nop                                                 #  59    0x8067a  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                       #  60    0x8067b  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                #  61    0x80680  4      OPC=movl_r32_m32    
  movl %eax, %edi                                     #  62    0x80684  2      OPC=movl_r32_r32    
  nop                                                 #  63    0x80686  1      OPC=nop             
  nop                                                 #  64    0x80687  1      OPC=nop             
  nop                                                 #  65    0x80688  1      OPC=nop             
  nop                                                 #  66    0x80689  1      OPC=nop             
  nop                                                 #  67    0x8068a  1      OPC=nop             
  nop                                                 #  68    0x8068b  1      OPC=nop             
  nop                                                 #  69    0x8068c  1      OPC=nop             
  nop                                                 #  70    0x8068d  1      OPC=nop             
  nop                                                 #  71    0x8068e  1      OPC=nop             
  nop                                                 #  72    0x8068f  1      OPC=nop             
  nop                                                 #  73    0x80690  1      OPC=nop             
  nop                                                 #  74    0x80691  1      OPC=nop             
  nop                                                 #  75    0x80692  1      OPC=nop             
  nop                                                 #  76    0x80693  1      OPC=nop             
  nop                                                 #  77    0x80694  1      OPC=nop             
  nop                                                 #  78    0x80695  1      OPC=nop             
  nop                                                 #  79    0x80696  1      OPC=nop             
  nop                                                 #  80    0x80697  1      OPC=nop             
  nop                                                 #  81    0x80698  1      OPC=nop             
  nop                                                 #  82    0x80699  1      OPC=nop             
  nop                                                 #  83    0x8069a  1      OPC=nop             
  callq ._Unwind_Resume                               #  84    0x8069b  5      OPC=callq_label     
                                                                                                   
.size _ZNSt14collate_bynameIcED2Ev, .-_ZNSt14collate_bynameIcED2Ev

