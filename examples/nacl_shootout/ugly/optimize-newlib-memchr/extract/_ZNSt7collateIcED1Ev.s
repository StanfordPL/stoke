  .text
  .globl _ZNSt7collateIcED1Ev
  .type _ZNSt7collateIcED1Ev, @function

#! file-offset 0xbc040
#! rip-offset  0x7c040
#! capacity    128 bytes

# Text                                                #  Line  RIP      Bytes  Opcode              
._ZNSt7collateIcED1Ev:                                #        0x7c040  0      OPC=<label>         
  pushq %rbx                                          #  1     0x7c040  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                     #  2     0x7c041  2      OPC=movl_r32_r32    
  leal 0x8(%rbx), %edi                                #  3     0x7c043  3      OPC=leal_r32_m16    
  subl $0x10, %esp                                    #  4     0x7c046  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                     #  5     0x7c049  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                     #  6     0x7c04c  2      OPC=movl_r32_r32    
  movl $0x1003aff8, (%r15,%rbx,1)                     #  7     0x7c04e  8      OPC=movl_m32_imm32  
  nop                                                 #  8     0x7c056  1      OPC=nop             
  nop                                                 #  9     0x7c057  1      OPC=nop             
  nop                                                 #  10    0x7c058  1      OPC=nop             
  nop                                                 #  11    0x7c059  1      OPC=nop             
  nop                                                 #  12    0x7c05a  1      OPC=nop             
  callq ._ZNSt6locale5facet19_S_destroy_c_localeERPi  #  13    0x7c05b  5      OPC=callq_label     
  movl %ebx, %edi                                     #  14    0x7c060  2      OPC=movl_r32_r32    
  addl $0x10, %esp                                    #  15    0x7c062  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                     #  16    0x7c065  3      OPC=addq_r64_r64    
  popq %rbx                                           #  17    0x7c068  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev                        #  18    0x7c069  5      OPC=jmpq_label_1    
  nop                                                 #  19    0x7c06e  1      OPC=nop             
  nop                                                 #  20    0x7c06f  1      OPC=nop             
  nop                                                 #  21    0x7c070  1      OPC=nop             
  nop                                                 #  22    0x7c071  1      OPC=nop             
  nop                                                 #  23    0x7c072  1      OPC=nop             
  nop                                                 #  24    0x7c073  1      OPC=nop             
  nop                                                 #  25    0x7c074  1      OPC=nop             
  nop                                                 #  26    0x7c075  1      OPC=nop             
  nop                                                 #  27    0x7c076  1      OPC=nop             
  nop                                                 #  28    0x7c077  1      OPC=nop             
  nop                                                 #  29    0x7c078  1      OPC=nop             
  nop                                                 #  30    0x7c079  1      OPC=nop             
  nop                                                 #  31    0x7c07a  1      OPC=nop             
  nop                                                 #  32    0x7c07b  1      OPC=nop             
  nop                                                 #  33    0x7c07c  1      OPC=nop             
  nop                                                 #  34    0x7c07d  1      OPC=nop             
  nop                                                 #  35    0x7c07e  1      OPC=nop             
  nop                                                 #  36    0x7c07f  1      OPC=nop             
  movl %ebx, %edi                                     #  37    0x7c080  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                #  38    0x7c082  4      OPC=movl_m32_r32    
  nop                                                 #  39    0x7c086  1      OPC=nop             
  nop                                                 #  40    0x7c087  1      OPC=nop             
  nop                                                 #  41    0x7c088  1      OPC=nop             
  nop                                                 #  42    0x7c089  1      OPC=nop             
  nop                                                 #  43    0x7c08a  1      OPC=nop             
  nop                                                 #  44    0x7c08b  1      OPC=nop             
  nop                                                 #  45    0x7c08c  1      OPC=nop             
  nop                                                 #  46    0x7c08d  1      OPC=nop             
  nop                                                 #  47    0x7c08e  1      OPC=nop             
  nop                                                 #  48    0x7c08f  1      OPC=nop             
  nop                                                 #  49    0x7c090  1      OPC=nop             
  nop                                                 #  50    0x7c091  1      OPC=nop             
  nop                                                 #  51    0x7c092  1      OPC=nop             
  nop                                                 #  52    0x7c093  1      OPC=nop             
  nop                                                 #  53    0x7c094  1      OPC=nop             
  nop                                                 #  54    0x7c095  1      OPC=nop             
  nop                                                 #  55    0x7c096  1      OPC=nop             
  nop                                                 #  56    0x7c097  1      OPC=nop             
  nop                                                 #  57    0x7c098  1      OPC=nop             
  nop                                                 #  58    0x7c099  1      OPC=nop             
  nop                                                 #  59    0x7c09a  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                       #  60    0x7c09b  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                #  61    0x7c0a0  4      OPC=movl_r32_m32    
  movl %eax, %edi                                     #  62    0x7c0a4  2      OPC=movl_r32_r32    
  nop                                                 #  63    0x7c0a6  1      OPC=nop             
  nop                                                 #  64    0x7c0a7  1      OPC=nop             
  nop                                                 #  65    0x7c0a8  1      OPC=nop             
  nop                                                 #  66    0x7c0a9  1      OPC=nop             
  nop                                                 #  67    0x7c0aa  1      OPC=nop             
  nop                                                 #  68    0x7c0ab  1      OPC=nop             
  nop                                                 #  69    0x7c0ac  1      OPC=nop             
  nop                                                 #  70    0x7c0ad  1      OPC=nop             
  nop                                                 #  71    0x7c0ae  1      OPC=nop             
  nop                                                 #  72    0x7c0af  1      OPC=nop             
  nop                                                 #  73    0x7c0b0  1      OPC=nop             
  nop                                                 #  74    0x7c0b1  1      OPC=nop             
  nop                                                 #  75    0x7c0b2  1      OPC=nop             
  nop                                                 #  76    0x7c0b3  1      OPC=nop             
  nop                                                 #  77    0x7c0b4  1      OPC=nop             
  nop                                                 #  78    0x7c0b5  1      OPC=nop             
  nop                                                 #  79    0x7c0b6  1      OPC=nop             
  nop                                                 #  80    0x7c0b7  1      OPC=nop             
  nop                                                 #  81    0x7c0b8  1      OPC=nop             
  nop                                                 #  82    0x7c0b9  1      OPC=nop             
  nop                                                 #  83    0x7c0ba  1      OPC=nop             
  callq ._Unwind_Resume                               #  84    0x7c0bb  5      OPC=callq_label     
                                                                                                   
.size _ZNSt7collateIcED1Ev, .-_ZNSt7collateIcED1Ev

