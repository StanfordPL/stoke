  .text
  .globl _ZNSt14collate_bynameIwED0Ev
  .type _ZNSt14collate_bynameIwED0Ev, @function

#! file-offset 0xf9640
#! rip-offset  0xb9640
#! capacity    160 bytes

# Text                                                #  Line  RIP      Bytes  Opcode              
._ZNSt14collate_bynameIwED0Ev:                        #        0xb9640  0      OPC=<label>         
  pushq %rbx                                          #  1     0xb9640  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                     #  2     0xb9641  2      OPC=movl_r32_r32    
  leal 0x8(%rbx), %edi                                #  3     0xb9643  3      OPC=leal_r32_m16    
  subl $0x10, %esp                                    #  4     0xb9646  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                     #  5     0xb9649  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                     #  6     0xb964c  2      OPC=movl_r32_r32    
  movl $0x1003c2c8, (%r15,%rbx,1)                     #  7     0xb964e  8      OPC=movl_m32_imm32  
  nop                                                 #  8     0xb9656  1      OPC=nop             
  nop                                                 #  9     0xb9657  1      OPC=nop             
  nop                                                 #  10    0xb9658  1      OPC=nop             
  nop                                                 #  11    0xb9659  1      OPC=nop             
  nop                                                 #  12    0xb965a  1      OPC=nop             
  callq ._ZNSt6locale5facet19_S_destroy_c_localeERPi  #  13    0xb965b  5      OPC=callq_label     
  movl %ebx, %edi                                     #  14    0xb9660  2      OPC=movl_r32_r32    
  nop                                                 #  15    0xb9662  1      OPC=nop             
  nop                                                 #  16    0xb9663  1      OPC=nop             
  nop                                                 #  17    0xb9664  1      OPC=nop             
  nop                                                 #  18    0xb9665  1      OPC=nop             
  nop                                                 #  19    0xb9666  1      OPC=nop             
  nop                                                 #  20    0xb9667  1      OPC=nop             
  nop                                                 #  21    0xb9668  1      OPC=nop             
  nop                                                 #  22    0xb9669  1      OPC=nop             
  nop                                                 #  23    0xb966a  1      OPC=nop             
  nop                                                 #  24    0xb966b  1      OPC=nop             
  nop                                                 #  25    0xb966c  1      OPC=nop             
  nop                                                 #  26    0xb966d  1      OPC=nop             
  nop                                                 #  27    0xb966e  1      OPC=nop             
  nop                                                 #  28    0xb966f  1      OPC=nop             
  nop                                                 #  29    0xb9670  1      OPC=nop             
  nop                                                 #  30    0xb9671  1      OPC=nop             
  nop                                                 #  31    0xb9672  1      OPC=nop             
  nop                                                 #  32    0xb9673  1      OPC=nop             
  nop                                                 #  33    0xb9674  1      OPC=nop             
  nop                                                 #  34    0xb9675  1      OPC=nop             
  nop                                                 #  35    0xb9676  1      OPC=nop             
  nop                                                 #  36    0xb9677  1      OPC=nop             
  nop                                                 #  37    0xb9678  1      OPC=nop             
  nop                                                 #  38    0xb9679  1      OPC=nop             
  nop                                                 #  39    0xb967a  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                       #  40    0xb967b  5      OPC=callq_label     
  movl %ebx, %edi                                     #  41    0xb9680  2      OPC=movl_r32_r32    
  addl $0x10, %esp                                    #  42    0xb9682  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                     #  43    0xb9685  3      OPC=addq_r64_r64    
  popq %rbx                                           #  44    0xb9688  1      OPC=popq_r64_1      
  jmpq ._ZdlPv                                        #  45    0xb9689  5      OPC=jmpq_label_1    
  nop                                                 #  46    0xb968e  1      OPC=nop             
  nop                                                 #  47    0xb968f  1      OPC=nop             
  nop                                                 #  48    0xb9690  1      OPC=nop             
  nop                                                 #  49    0xb9691  1      OPC=nop             
  nop                                                 #  50    0xb9692  1      OPC=nop             
  nop                                                 #  51    0xb9693  1      OPC=nop             
  nop                                                 #  52    0xb9694  1      OPC=nop             
  nop                                                 #  53    0xb9695  1      OPC=nop             
  nop                                                 #  54    0xb9696  1      OPC=nop             
  nop                                                 #  55    0xb9697  1      OPC=nop             
  nop                                                 #  56    0xb9698  1      OPC=nop             
  nop                                                 #  57    0xb9699  1      OPC=nop             
  nop                                                 #  58    0xb969a  1      OPC=nop             
  nop                                                 #  59    0xb969b  1      OPC=nop             
  nop                                                 #  60    0xb969c  1      OPC=nop             
  nop                                                 #  61    0xb969d  1      OPC=nop             
  nop                                                 #  62    0xb969e  1      OPC=nop             
  nop                                                 #  63    0xb969f  1      OPC=nop             
  movl %ebx, %edi                                     #  64    0xb96a0  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                #  65    0xb96a2  4      OPC=movl_m32_r32    
  nop                                                 #  66    0xb96a6  1      OPC=nop             
  nop                                                 #  67    0xb96a7  1      OPC=nop             
  nop                                                 #  68    0xb96a8  1      OPC=nop             
  nop                                                 #  69    0xb96a9  1      OPC=nop             
  nop                                                 #  70    0xb96aa  1      OPC=nop             
  nop                                                 #  71    0xb96ab  1      OPC=nop             
  nop                                                 #  72    0xb96ac  1      OPC=nop             
  nop                                                 #  73    0xb96ad  1      OPC=nop             
  nop                                                 #  74    0xb96ae  1      OPC=nop             
  nop                                                 #  75    0xb96af  1      OPC=nop             
  nop                                                 #  76    0xb96b0  1      OPC=nop             
  nop                                                 #  77    0xb96b1  1      OPC=nop             
  nop                                                 #  78    0xb96b2  1      OPC=nop             
  nop                                                 #  79    0xb96b3  1      OPC=nop             
  nop                                                 #  80    0xb96b4  1      OPC=nop             
  nop                                                 #  81    0xb96b5  1      OPC=nop             
  nop                                                 #  82    0xb96b6  1      OPC=nop             
  nop                                                 #  83    0xb96b7  1      OPC=nop             
  nop                                                 #  84    0xb96b8  1      OPC=nop             
  nop                                                 #  85    0xb96b9  1      OPC=nop             
  nop                                                 #  86    0xb96ba  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                       #  87    0xb96bb  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                #  88    0xb96c0  4      OPC=movl_r32_m32    
  movl %eax, %edi                                     #  89    0xb96c4  2      OPC=movl_r32_r32    
  nop                                                 #  90    0xb96c6  1      OPC=nop             
  nop                                                 #  91    0xb96c7  1      OPC=nop             
  nop                                                 #  92    0xb96c8  1      OPC=nop             
  nop                                                 #  93    0xb96c9  1      OPC=nop             
  nop                                                 #  94    0xb96ca  1      OPC=nop             
  nop                                                 #  95    0xb96cb  1      OPC=nop             
  nop                                                 #  96    0xb96cc  1      OPC=nop             
  nop                                                 #  97    0xb96cd  1      OPC=nop             
  nop                                                 #  98    0xb96ce  1      OPC=nop             
  nop                                                 #  99    0xb96cf  1      OPC=nop             
  nop                                                 #  100   0xb96d0  1      OPC=nop             
  nop                                                 #  101   0xb96d1  1      OPC=nop             
  nop                                                 #  102   0xb96d2  1      OPC=nop             
  nop                                                 #  103   0xb96d3  1      OPC=nop             
  nop                                                 #  104   0xb96d4  1      OPC=nop             
  nop                                                 #  105   0xb96d5  1      OPC=nop             
  nop                                                 #  106   0xb96d6  1      OPC=nop             
  nop                                                 #  107   0xb96d7  1      OPC=nop             
  nop                                                 #  108   0xb96d8  1      OPC=nop             
  nop                                                 #  109   0xb96d9  1      OPC=nop             
  nop                                                 #  110   0xb96da  1      OPC=nop             
  callq ._Unwind_Resume                               #  111   0xb96db  5      OPC=callq_label     
                                                                                                   
.size _ZNSt14collate_bynameIwED0Ev, .-_ZNSt14collate_bynameIwED0Ev

