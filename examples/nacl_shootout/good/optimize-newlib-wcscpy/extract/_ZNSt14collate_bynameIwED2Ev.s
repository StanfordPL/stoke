  .text
  .globl _ZNSt14collate_bynameIwED2Ev
  .type _ZNSt14collate_bynameIwED2Ev, @function

#! file-offset 0xf92c0
#! rip-offset  0xb92c0
#! capacity    128 bytes

# Text                                                #  Line  RIP      Bytes  Opcode              
._ZNSt14collate_bynameIwED2Ev:                        #        0xb92c0  0      OPC=<label>         
  pushq %rbx                                          #  1     0xb92c0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                     #  2     0xb92c1  2      OPC=movl_r32_r32    
  leal 0x8(%rbx), %edi                                #  3     0xb92c3  3      OPC=leal_r32_m16    
  subl $0x10, %esp                                    #  4     0xb92c6  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                     #  5     0xb92c9  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                     #  6     0xb92cc  2      OPC=movl_r32_r32    
  movl $0x1003c2c8, (%r15,%rbx,1)                     #  7     0xb92ce  8      OPC=movl_m32_imm32  
  nop                                                 #  8     0xb92d6  1      OPC=nop             
  nop                                                 #  9     0xb92d7  1      OPC=nop             
  nop                                                 #  10    0xb92d8  1      OPC=nop             
  nop                                                 #  11    0xb92d9  1      OPC=nop             
  nop                                                 #  12    0xb92da  1      OPC=nop             
  callq ._ZNSt6locale5facet19_S_destroy_c_localeERPi  #  13    0xb92db  5      OPC=callq_label     
  movl %ebx, %edi                                     #  14    0xb92e0  2      OPC=movl_r32_r32    
  addl $0x10, %esp                                    #  15    0xb92e2  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                     #  16    0xb92e5  3      OPC=addq_r64_r64    
  popq %rbx                                           #  17    0xb92e8  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev                        #  18    0xb92e9  5      OPC=jmpq_label_1    
  nop                                                 #  19    0xb92ee  1      OPC=nop             
  nop                                                 #  20    0xb92ef  1      OPC=nop             
  nop                                                 #  21    0xb92f0  1      OPC=nop             
  nop                                                 #  22    0xb92f1  1      OPC=nop             
  nop                                                 #  23    0xb92f2  1      OPC=nop             
  nop                                                 #  24    0xb92f3  1      OPC=nop             
  nop                                                 #  25    0xb92f4  1      OPC=nop             
  nop                                                 #  26    0xb92f5  1      OPC=nop             
  nop                                                 #  27    0xb92f6  1      OPC=nop             
  nop                                                 #  28    0xb92f7  1      OPC=nop             
  nop                                                 #  29    0xb92f8  1      OPC=nop             
  nop                                                 #  30    0xb92f9  1      OPC=nop             
  nop                                                 #  31    0xb92fa  1      OPC=nop             
  nop                                                 #  32    0xb92fb  1      OPC=nop             
  nop                                                 #  33    0xb92fc  1      OPC=nop             
  nop                                                 #  34    0xb92fd  1      OPC=nop             
  nop                                                 #  35    0xb92fe  1      OPC=nop             
  nop                                                 #  36    0xb92ff  1      OPC=nop             
  movl %ebx, %edi                                     #  37    0xb9300  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                #  38    0xb9302  4      OPC=movl_m32_r32    
  nop                                                 #  39    0xb9306  1      OPC=nop             
  nop                                                 #  40    0xb9307  1      OPC=nop             
  nop                                                 #  41    0xb9308  1      OPC=nop             
  nop                                                 #  42    0xb9309  1      OPC=nop             
  nop                                                 #  43    0xb930a  1      OPC=nop             
  nop                                                 #  44    0xb930b  1      OPC=nop             
  nop                                                 #  45    0xb930c  1      OPC=nop             
  nop                                                 #  46    0xb930d  1      OPC=nop             
  nop                                                 #  47    0xb930e  1      OPC=nop             
  nop                                                 #  48    0xb930f  1      OPC=nop             
  nop                                                 #  49    0xb9310  1      OPC=nop             
  nop                                                 #  50    0xb9311  1      OPC=nop             
  nop                                                 #  51    0xb9312  1      OPC=nop             
  nop                                                 #  52    0xb9313  1      OPC=nop             
  nop                                                 #  53    0xb9314  1      OPC=nop             
  nop                                                 #  54    0xb9315  1      OPC=nop             
  nop                                                 #  55    0xb9316  1      OPC=nop             
  nop                                                 #  56    0xb9317  1      OPC=nop             
  nop                                                 #  57    0xb9318  1      OPC=nop             
  nop                                                 #  58    0xb9319  1      OPC=nop             
  nop                                                 #  59    0xb931a  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                       #  60    0xb931b  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                #  61    0xb9320  4      OPC=movl_r32_m32    
  movl %eax, %edi                                     #  62    0xb9324  2      OPC=movl_r32_r32    
  nop                                                 #  63    0xb9326  1      OPC=nop             
  nop                                                 #  64    0xb9327  1      OPC=nop             
  nop                                                 #  65    0xb9328  1      OPC=nop             
  nop                                                 #  66    0xb9329  1      OPC=nop             
  nop                                                 #  67    0xb932a  1      OPC=nop             
  nop                                                 #  68    0xb932b  1      OPC=nop             
  nop                                                 #  69    0xb932c  1      OPC=nop             
  nop                                                 #  70    0xb932d  1      OPC=nop             
  nop                                                 #  71    0xb932e  1      OPC=nop             
  nop                                                 #  72    0xb932f  1      OPC=nop             
  nop                                                 #  73    0xb9330  1      OPC=nop             
  nop                                                 #  74    0xb9331  1      OPC=nop             
  nop                                                 #  75    0xb9332  1      OPC=nop             
  nop                                                 #  76    0xb9333  1      OPC=nop             
  nop                                                 #  77    0xb9334  1      OPC=nop             
  nop                                                 #  78    0xb9335  1      OPC=nop             
  nop                                                 #  79    0xb9336  1      OPC=nop             
  nop                                                 #  80    0xb9337  1      OPC=nop             
  nop                                                 #  81    0xb9338  1      OPC=nop             
  nop                                                 #  82    0xb9339  1      OPC=nop             
  nop                                                 #  83    0xb933a  1      OPC=nop             
  callq ._Unwind_Resume                               #  84    0xb933b  5      OPC=callq_label     
                                                                                                   
.size _ZNSt14collate_bynameIwED2Ev, .-_ZNSt14collate_bynameIwED2Ev

