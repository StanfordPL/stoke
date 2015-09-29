  .text
  .globl _ZNSt14collate_bynameIcED1Ev
  .type _ZNSt14collate_bynameIcED1Ev, @function

#! file-offset 0xc0fc0
#! rip-offset  0x80fc0
#! capacity    128 bytes

# Text                                                #  Line  RIP      Bytes  Opcode              
._ZNSt14collate_bynameIcED1Ev:                        #        0x80fc0  0      OPC=<label>         
  pushq %rbx                                          #  1     0x80fc0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                     #  2     0x80fc1  2      OPC=movl_r32_r32    
  leal 0x8(%rbx), %edi                                #  3     0x80fc3  3      OPC=leal_r32_m16    
  subl $0x10, %esp                                    #  4     0x80fc6  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                     #  5     0x80fc9  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                     #  6     0x80fcc  2      OPC=movl_r32_r32    
  movl $0x1003aff8, (%r15,%rbx,1)                     #  7     0x80fce  8      OPC=movl_m32_imm32  
  nop                                                 #  8     0x80fd6  1      OPC=nop             
  nop                                                 #  9     0x80fd7  1      OPC=nop             
  nop                                                 #  10    0x80fd8  1      OPC=nop             
  nop                                                 #  11    0x80fd9  1      OPC=nop             
  nop                                                 #  12    0x80fda  1      OPC=nop             
  callq ._ZNSt6locale5facet19_S_destroy_c_localeERPi  #  13    0x80fdb  5      OPC=callq_label     
  movl %ebx, %edi                                     #  14    0x80fe0  2      OPC=movl_r32_r32    
  addl $0x10, %esp                                    #  15    0x80fe2  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                     #  16    0x80fe5  3      OPC=addq_r64_r64    
  popq %rbx                                           #  17    0x80fe8  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev                        #  18    0x80fe9  5      OPC=jmpq_label_1    
  nop                                                 #  19    0x80fee  1      OPC=nop             
  nop                                                 #  20    0x80fef  1      OPC=nop             
  nop                                                 #  21    0x80ff0  1      OPC=nop             
  nop                                                 #  22    0x80ff1  1      OPC=nop             
  nop                                                 #  23    0x80ff2  1      OPC=nop             
  nop                                                 #  24    0x80ff3  1      OPC=nop             
  nop                                                 #  25    0x80ff4  1      OPC=nop             
  nop                                                 #  26    0x80ff5  1      OPC=nop             
  nop                                                 #  27    0x80ff6  1      OPC=nop             
  nop                                                 #  28    0x80ff7  1      OPC=nop             
  nop                                                 #  29    0x80ff8  1      OPC=nop             
  nop                                                 #  30    0x80ff9  1      OPC=nop             
  nop                                                 #  31    0x80ffa  1      OPC=nop             
  nop                                                 #  32    0x80ffb  1      OPC=nop             
  nop                                                 #  33    0x80ffc  1      OPC=nop             
  nop                                                 #  34    0x80ffd  1      OPC=nop             
  nop                                                 #  35    0x80ffe  1      OPC=nop             
  nop                                                 #  36    0x80fff  1      OPC=nop             
  movl %ebx, %edi                                     #  37    0x81000  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                #  38    0x81002  4      OPC=movl_m32_r32    
  nop                                                 #  39    0x81006  1      OPC=nop             
  nop                                                 #  40    0x81007  1      OPC=nop             
  nop                                                 #  41    0x81008  1      OPC=nop             
  nop                                                 #  42    0x81009  1      OPC=nop             
  nop                                                 #  43    0x8100a  1      OPC=nop             
  nop                                                 #  44    0x8100b  1      OPC=nop             
  nop                                                 #  45    0x8100c  1      OPC=nop             
  nop                                                 #  46    0x8100d  1      OPC=nop             
  nop                                                 #  47    0x8100e  1      OPC=nop             
  nop                                                 #  48    0x8100f  1      OPC=nop             
  nop                                                 #  49    0x81010  1      OPC=nop             
  nop                                                 #  50    0x81011  1      OPC=nop             
  nop                                                 #  51    0x81012  1      OPC=nop             
  nop                                                 #  52    0x81013  1      OPC=nop             
  nop                                                 #  53    0x81014  1      OPC=nop             
  nop                                                 #  54    0x81015  1      OPC=nop             
  nop                                                 #  55    0x81016  1      OPC=nop             
  nop                                                 #  56    0x81017  1      OPC=nop             
  nop                                                 #  57    0x81018  1      OPC=nop             
  nop                                                 #  58    0x81019  1      OPC=nop             
  nop                                                 #  59    0x8101a  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                       #  60    0x8101b  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                #  61    0x81020  4      OPC=movl_r32_m32    
  movl %eax, %edi                                     #  62    0x81024  2      OPC=movl_r32_r32    
  nop                                                 #  63    0x81026  1      OPC=nop             
  nop                                                 #  64    0x81027  1      OPC=nop             
  nop                                                 #  65    0x81028  1      OPC=nop             
  nop                                                 #  66    0x81029  1      OPC=nop             
  nop                                                 #  67    0x8102a  1      OPC=nop             
  nop                                                 #  68    0x8102b  1      OPC=nop             
  nop                                                 #  69    0x8102c  1      OPC=nop             
  nop                                                 #  70    0x8102d  1      OPC=nop             
  nop                                                 #  71    0x8102e  1      OPC=nop             
  nop                                                 #  72    0x8102f  1      OPC=nop             
  nop                                                 #  73    0x81030  1      OPC=nop             
  nop                                                 #  74    0x81031  1      OPC=nop             
  nop                                                 #  75    0x81032  1      OPC=nop             
  nop                                                 #  76    0x81033  1      OPC=nop             
  nop                                                 #  77    0x81034  1      OPC=nop             
  nop                                                 #  78    0x81035  1      OPC=nop             
  nop                                                 #  79    0x81036  1      OPC=nop             
  nop                                                 #  80    0x81037  1      OPC=nop             
  nop                                                 #  81    0x81038  1      OPC=nop             
  nop                                                 #  82    0x81039  1      OPC=nop             
  nop                                                 #  83    0x8103a  1      OPC=nop             
  callq ._Unwind_Resume                               #  84    0x8103b  5      OPC=callq_label     
                                                                                                   
.size _ZNSt14collate_bynameIcED1Ev, .-_ZNSt14collate_bynameIcED1Ev

