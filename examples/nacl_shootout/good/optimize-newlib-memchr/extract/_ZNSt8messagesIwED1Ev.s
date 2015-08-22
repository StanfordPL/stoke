  .text
  .globl _ZNSt8messagesIwED1Ev
  .type _ZNSt8messagesIwED1Ev, @function

#! file-offset 0xf4fa0
#! rip-offset  0xb4fa0
#! capacity    128 bytes

# Text                                                #  Line  RIP      Bytes  Opcode              
._ZNSt8messagesIwED1Ev:                               #        0xb4fa0  0      OPC=<label>         
  pushq %rbx                                          #  1     0xb4fa0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                     #  2     0xb4fa1  2      OPC=movl_r32_r32    
  leal 0x8(%rbx), %edi                                #  3     0xb4fa3  3      OPC=leal_r32_m16    
  subl $0x10, %esp                                    #  4     0xb4fa6  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                     #  5     0xb4fa9  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                     #  6     0xb4fac  2      OPC=movl_r32_r32    
  movl $0x1003c098, (%r15,%rbx,1)                     #  7     0xb4fae  8      OPC=movl_m32_imm32  
  nop                                                 #  8     0xb4fb6  1      OPC=nop             
  nop                                                 #  9     0xb4fb7  1      OPC=nop             
  nop                                                 #  10    0xb4fb8  1      OPC=nop             
  nop                                                 #  11    0xb4fb9  1      OPC=nop             
  nop                                                 #  12    0xb4fba  1      OPC=nop             
  callq ._ZNSt6locale5facet19_S_destroy_c_localeERPi  #  13    0xb4fbb  5      OPC=callq_label     
  movl %ebx, %edi                                     #  14    0xb4fc0  2      OPC=movl_r32_r32    
  addl $0x10, %esp                                    #  15    0xb4fc2  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                     #  16    0xb4fc5  3      OPC=addq_r64_r64    
  popq %rbx                                           #  17    0xb4fc8  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev                        #  18    0xb4fc9  5      OPC=jmpq_label_1    
  nop                                                 #  19    0xb4fce  1      OPC=nop             
  nop                                                 #  20    0xb4fcf  1      OPC=nop             
  nop                                                 #  21    0xb4fd0  1      OPC=nop             
  nop                                                 #  22    0xb4fd1  1      OPC=nop             
  nop                                                 #  23    0xb4fd2  1      OPC=nop             
  nop                                                 #  24    0xb4fd3  1      OPC=nop             
  nop                                                 #  25    0xb4fd4  1      OPC=nop             
  nop                                                 #  26    0xb4fd5  1      OPC=nop             
  nop                                                 #  27    0xb4fd6  1      OPC=nop             
  nop                                                 #  28    0xb4fd7  1      OPC=nop             
  nop                                                 #  29    0xb4fd8  1      OPC=nop             
  nop                                                 #  30    0xb4fd9  1      OPC=nop             
  nop                                                 #  31    0xb4fda  1      OPC=nop             
  nop                                                 #  32    0xb4fdb  1      OPC=nop             
  nop                                                 #  33    0xb4fdc  1      OPC=nop             
  nop                                                 #  34    0xb4fdd  1      OPC=nop             
  nop                                                 #  35    0xb4fde  1      OPC=nop             
  nop                                                 #  36    0xb4fdf  1      OPC=nop             
  movl %ebx, %edi                                     #  37    0xb4fe0  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                #  38    0xb4fe2  4      OPC=movl_m32_r32    
  nop                                                 #  39    0xb4fe6  1      OPC=nop             
  nop                                                 #  40    0xb4fe7  1      OPC=nop             
  nop                                                 #  41    0xb4fe8  1      OPC=nop             
  nop                                                 #  42    0xb4fe9  1      OPC=nop             
  nop                                                 #  43    0xb4fea  1      OPC=nop             
  nop                                                 #  44    0xb4feb  1      OPC=nop             
  nop                                                 #  45    0xb4fec  1      OPC=nop             
  nop                                                 #  46    0xb4fed  1      OPC=nop             
  nop                                                 #  47    0xb4fee  1      OPC=nop             
  nop                                                 #  48    0xb4fef  1      OPC=nop             
  nop                                                 #  49    0xb4ff0  1      OPC=nop             
  nop                                                 #  50    0xb4ff1  1      OPC=nop             
  nop                                                 #  51    0xb4ff2  1      OPC=nop             
  nop                                                 #  52    0xb4ff3  1      OPC=nop             
  nop                                                 #  53    0xb4ff4  1      OPC=nop             
  nop                                                 #  54    0xb4ff5  1      OPC=nop             
  nop                                                 #  55    0xb4ff6  1      OPC=nop             
  nop                                                 #  56    0xb4ff7  1      OPC=nop             
  nop                                                 #  57    0xb4ff8  1      OPC=nop             
  nop                                                 #  58    0xb4ff9  1      OPC=nop             
  nop                                                 #  59    0xb4ffa  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                       #  60    0xb4ffb  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                #  61    0xb5000  4      OPC=movl_r32_m32    
  movl %eax, %edi                                     #  62    0xb5004  2      OPC=movl_r32_r32    
  nop                                                 #  63    0xb5006  1      OPC=nop             
  nop                                                 #  64    0xb5007  1      OPC=nop             
  nop                                                 #  65    0xb5008  1      OPC=nop             
  nop                                                 #  66    0xb5009  1      OPC=nop             
  nop                                                 #  67    0xb500a  1      OPC=nop             
  nop                                                 #  68    0xb500b  1      OPC=nop             
  nop                                                 #  69    0xb500c  1      OPC=nop             
  nop                                                 #  70    0xb500d  1      OPC=nop             
  nop                                                 #  71    0xb500e  1      OPC=nop             
  nop                                                 #  72    0xb500f  1      OPC=nop             
  nop                                                 #  73    0xb5010  1      OPC=nop             
  nop                                                 #  74    0xb5011  1      OPC=nop             
  nop                                                 #  75    0xb5012  1      OPC=nop             
  nop                                                 #  76    0xb5013  1      OPC=nop             
  nop                                                 #  77    0xb5014  1      OPC=nop             
  nop                                                 #  78    0xb5015  1      OPC=nop             
  nop                                                 #  79    0xb5016  1      OPC=nop             
  nop                                                 #  80    0xb5017  1      OPC=nop             
  nop                                                 #  81    0xb5018  1      OPC=nop             
  nop                                                 #  82    0xb5019  1      OPC=nop             
  nop                                                 #  83    0xb501a  1      OPC=nop             
  callq ._Unwind_Resume                               #  84    0xb501b  5      OPC=callq_label     
                                                                                                   
.size _ZNSt8messagesIwED1Ev, .-_ZNSt8messagesIwED1Ev

