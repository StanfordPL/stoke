  .text
  .globl _ZNSt7collateIwED0Ev
  .type _ZNSt7collateIwED0Ev, @function

#! file-offset 0xf4640
#! rip-offset  0xb4640
#! capacity    160 bytes

# Text                                                #  Line  RIP      Bytes  Opcode              
._ZNSt7collateIwED0Ev:                                #        0xb4640  0      OPC=<label>         
  pushq %rbx                                          #  1     0xb4640  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                     #  2     0xb4641  2      OPC=movl_r32_r32    
  leal 0x8(%rbx), %edi                                #  3     0xb4643  3      OPC=leal_r32_m16    
  subl $0x10, %esp                                    #  4     0xb4646  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                     #  5     0xb4649  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                     #  6     0xb464c  2      OPC=movl_r32_r32    
  movl $0x1003c2c8, (%r15,%rbx,1)                     #  7     0xb464e  8      OPC=movl_m32_imm32  
  nop                                                 #  8     0xb4656  1      OPC=nop             
  nop                                                 #  9     0xb4657  1      OPC=nop             
  nop                                                 #  10    0xb4658  1      OPC=nop             
  nop                                                 #  11    0xb4659  1      OPC=nop             
  nop                                                 #  12    0xb465a  1      OPC=nop             
  callq ._ZNSt6locale5facet19_S_destroy_c_localeERPi  #  13    0xb465b  5      OPC=callq_label     
  movl %ebx, %edi                                     #  14    0xb4660  2      OPC=movl_r32_r32    
  nop                                                 #  15    0xb4662  1      OPC=nop             
  nop                                                 #  16    0xb4663  1      OPC=nop             
  nop                                                 #  17    0xb4664  1      OPC=nop             
  nop                                                 #  18    0xb4665  1      OPC=nop             
  nop                                                 #  19    0xb4666  1      OPC=nop             
  nop                                                 #  20    0xb4667  1      OPC=nop             
  nop                                                 #  21    0xb4668  1      OPC=nop             
  nop                                                 #  22    0xb4669  1      OPC=nop             
  nop                                                 #  23    0xb466a  1      OPC=nop             
  nop                                                 #  24    0xb466b  1      OPC=nop             
  nop                                                 #  25    0xb466c  1      OPC=nop             
  nop                                                 #  26    0xb466d  1      OPC=nop             
  nop                                                 #  27    0xb466e  1      OPC=nop             
  nop                                                 #  28    0xb466f  1      OPC=nop             
  nop                                                 #  29    0xb4670  1      OPC=nop             
  nop                                                 #  30    0xb4671  1      OPC=nop             
  nop                                                 #  31    0xb4672  1      OPC=nop             
  nop                                                 #  32    0xb4673  1      OPC=nop             
  nop                                                 #  33    0xb4674  1      OPC=nop             
  nop                                                 #  34    0xb4675  1      OPC=nop             
  nop                                                 #  35    0xb4676  1      OPC=nop             
  nop                                                 #  36    0xb4677  1      OPC=nop             
  nop                                                 #  37    0xb4678  1      OPC=nop             
  nop                                                 #  38    0xb4679  1      OPC=nop             
  nop                                                 #  39    0xb467a  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                       #  40    0xb467b  5      OPC=callq_label     
  movl %ebx, %edi                                     #  41    0xb4680  2      OPC=movl_r32_r32    
  addl $0x10, %esp                                    #  42    0xb4682  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                     #  43    0xb4685  3      OPC=addq_r64_r64    
  popq %rbx                                           #  44    0xb4688  1      OPC=popq_r64_1      
  jmpq ._ZdlPv                                        #  45    0xb4689  5      OPC=jmpq_label_1    
  nop                                                 #  46    0xb468e  1      OPC=nop             
  nop                                                 #  47    0xb468f  1      OPC=nop             
  nop                                                 #  48    0xb4690  1      OPC=nop             
  nop                                                 #  49    0xb4691  1      OPC=nop             
  nop                                                 #  50    0xb4692  1      OPC=nop             
  nop                                                 #  51    0xb4693  1      OPC=nop             
  nop                                                 #  52    0xb4694  1      OPC=nop             
  nop                                                 #  53    0xb4695  1      OPC=nop             
  nop                                                 #  54    0xb4696  1      OPC=nop             
  nop                                                 #  55    0xb4697  1      OPC=nop             
  nop                                                 #  56    0xb4698  1      OPC=nop             
  nop                                                 #  57    0xb4699  1      OPC=nop             
  nop                                                 #  58    0xb469a  1      OPC=nop             
  nop                                                 #  59    0xb469b  1      OPC=nop             
  nop                                                 #  60    0xb469c  1      OPC=nop             
  nop                                                 #  61    0xb469d  1      OPC=nop             
  nop                                                 #  62    0xb469e  1      OPC=nop             
  nop                                                 #  63    0xb469f  1      OPC=nop             
  movl %ebx, %edi                                     #  64    0xb46a0  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                #  65    0xb46a2  4      OPC=movl_m32_r32    
  nop                                                 #  66    0xb46a6  1      OPC=nop             
  nop                                                 #  67    0xb46a7  1      OPC=nop             
  nop                                                 #  68    0xb46a8  1      OPC=nop             
  nop                                                 #  69    0xb46a9  1      OPC=nop             
  nop                                                 #  70    0xb46aa  1      OPC=nop             
  nop                                                 #  71    0xb46ab  1      OPC=nop             
  nop                                                 #  72    0xb46ac  1      OPC=nop             
  nop                                                 #  73    0xb46ad  1      OPC=nop             
  nop                                                 #  74    0xb46ae  1      OPC=nop             
  nop                                                 #  75    0xb46af  1      OPC=nop             
  nop                                                 #  76    0xb46b0  1      OPC=nop             
  nop                                                 #  77    0xb46b1  1      OPC=nop             
  nop                                                 #  78    0xb46b2  1      OPC=nop             
  nop                                                 #  79    0xb46b3  1      OPC=nop             
  nop                                                 #  80    0xb46b4  1      OPC=nop             
  nop                                                 #  81    0xb46b5  1      OPC=nop             
  nop                                                 #  82    0xb46b6  1      OPC=nop             
  nop                                                 #  83    0xb46b7  1      OPC=nop             
  nop                                                 #  84    0xb46b8  1      OPC=nop             
  nop                                                 #  85    0xb46b9  1      OPC=nop             
  nop                                                 #  86    0xb46ba  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                       #  87    0xb46bb  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                #  88    0xb46c0  4      OPC=movl_r32_m32    
  movl %eax, %edi                                     #  89    0xb46c4  2      OPC=movl_r32_r32    
  nop                                                 #  90    0xb46c6  1      OPC=nop             
  nop                                                 #  91    0xb46c7  1      OPC=nop             
  nop                                                 #  92    0xb46c8  1      OPC=nop             
  nop                                                 #  93    0xb46c9  1      OPC=nop             
  nop                                                 #  94    0xb46ca  1      OPC=nop             
  nop                                                 #  95    0xb46cb  1      OPC=nop             
  nop                                                 #  96    0xb46cc  1      OPC=nop             
  nop                                                 #  97    0xb46cd  1      OPC=nop             
  nop                                                 #  98    0xb46ce  1      OPC=nop             
  nop                                                 #  99    0xb46cf  1      OPC=nop             
  nop                                                 #  100   0xb46d0  1      OPC=nop             
  nop                                                 #  101   0xb46d1  1      OPC=nop             
  nop                                                 #  102   0xb46d2  1      OPC=nop             
  nop                                                 #  103   0xb46d3  1      OPC=nop             
  nop                                                 #  104   0xb46d4  1      OPC=nop             
  nop                                                 #  105   0xb46d5  1      OPC=nop             
  nop                                                 #  106   0xb46d6  1      OPC=nop             
  nop                                                 #  107   0xb46d7  1      OPC=nop             
  nop                                                 #  108   0xb46d8  1      OPC=nop             
  nop                                                 #  109   0xb46d9  1      OPC=nop             
  nop                                                 #  110   0xb46da  1      OPC=nop             
  callq ._Unwind_Resume                               #  111   0xb46db  5      OPC=callq_label     
                                                                                                   
.size _ZNSt7collateIwED0Ev, .-_ZNSt7collateIwED0Ev

