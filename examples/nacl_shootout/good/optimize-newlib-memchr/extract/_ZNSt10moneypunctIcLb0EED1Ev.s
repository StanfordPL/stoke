  .text
  .globl _ZNSt10moneypunctIcLb0EED1Ev
  .type _ZNSt10moneypunctIcLb0EED1Ev, @function

#! file-offset 0x11bee0
#! rip-offset  0xdbee0
#! capacity    160 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSt10moneypunctIcLb0EED1Ev:     #        0xdbee0  0      OPC=<label>         
  pushq %rbx                       #  1     0xdbee0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                  #  2     0xdbee1  2      OPC=movl_r32_r32    
  subl $0x10, %esp                 #  3     0xdbee3  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                  #  4     0xdbee6  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                  #  5     0xdbee9  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rbx,1), %edi      #  6     0xdbeeb  5      OPC=movl_r32_m32    
  movl %ebx, %ebx                  #  7     0xdbef0  2      OPC=movl_r32_r32    
  movl $0x1003ae48, (%r15,%rbx,1)  #  8     0xdbef2  8      OPC=movl_m32_imm32  
  testq %rdi, %rdi                 #  9     0xdbefa  3      OPC=testq_r64_r64   
  nop                              #  10    0xdbefd  1      OPC=nop             
  nop                              #  11    0xdbefe  1      OPC=nop             
  nop                              #  12    0xdbeff  1      OPC=nop             
  je .L_dbf20                      #  13    0xdbf00  2      OPC=je_label        
  movl %edi, %edi                  #  14    0xdbf02  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax         #  15    0xdbf04  4      OPC=movl_r32_m32    
  movl %eax, %eax                  #  16    0xdbf08  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rax,1), %eax      #  17    0xdbf0a  5      OPC=movl_r32_m32    
  nop                              #  18    0xdbf0f  1      OPC=nop             
  nop                              #  19    0xdbf10  1      OPC=nop             
  nop                              #  20    0xdbf11  1      OPC=nop             
  nop                              #  21    0xdbf12  1      OPC=nop             
  nop                              #  22    0xdbf13  1      OPC=nop             
  nop                              #  23    0xdbf14  1      OPC=nop             
  nop                              #  24    0xdbf15  1      OPC=nop             
  nop                              #  25    0xdbf16  1      OPC=nop             
  nop                              #  26    0xdbf17  1      OPC=nop             
  andl $0xffffffe0, %eax           #  27    0xdbf18  6      OPC=andl_r32_imm32  
  nop                              #  28    0xdbf1e  1      OPC=nop             
  nop                              #  29    0xdbf1f  1      OPC=nop             
  nop                              #  30    0xdbf20  1      OPC=nop             
  addq %r15, %rax                  #  31    0xdbf21  3      OPC=addq_r64_r64    
  callq %rax                       #  32    0xdbf24  2      OPC=callq_r64       
.L_dbf20:                          #        0xdbf26  0      OPC=<label>         
  movl %ebx, %edi                  #  33    0xdbf26  2      OPC=movl_r32_r32    
  addl $0x10, %esp                 #  34    0xdbf28  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                  #  35    0xdbf2b  3      OPC=addq_r64_r64    
  popq %rbx                        #  36    0xdbf2e  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev     #  37    0xdbf2f  5      OPC=jmpq_label_1    
  nop                              #  38    0xdbf34  1      OPC=nop             
  nop                              #  39    0xdbf35  1      OPC=nop             
  nop                              #  40    0xdbf36  1      OPC=nop             
  nop                              #  41    0xdbf37  1      OPC=nop             
  nop                              #  42    0xdbf38  1      OPC=nop             
  nop                              #  43    0xdbf39  1      OPC=nop             
  nop                              #  44    0xdbf3a  1      OPC=nop             
  nop                              #  45    0xdbf3b  1      OPC=nop             
  nop                              #  46    0xdbf3c  1      OPC=nop             
  nop                              #  47    0xdbf3d  1      OPC=nop             
  nop                              #  48    0xdbf3e  1      OPC=nop             
  nop                              #  49    0xdbf3f  1      OPC=nop             
  nop                              #  50    0xdbf40  1      OPC=nop             
  nop                              #  51    0xdbf41  1      OPC=nop             
  nop                              #  52    0xdbf42  1      OPC=nop             
  nop                              #  53    0xdbf43  1      OPC=nop             
  nop                              #  54    0xdbf44  1      OPC=nop             
  nop                              #  55    0xdbf45  1      OPC=nop             
  movl %ebx, %edi                  #  56    0xdbf46  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)             #  57    0xdbf48  4      OPC=movl_m32_r32    
  nop                              #  58    0xdbf4c  1      OPC=nop             
  nop                              #  59    0xdbf4d  1      OPC=nop             
  nop                              #  60    0xdbf4e  1      OPC=nop             
  nop                              #  61    0xdbf4f  1      OPC=nop             
  nop                              #  62    0xdbf50  1      OPC=nop             
  nop                              #  63    0xdbf51  1      OPC=nop             
  nop                              #  64    0xdbf52  1      OPC=nop             
  nop                              #  65    0xdbf53  1      OPC=nop             
  nop                              #  66    0xdbf54  1      OPC=nop             
  nop                              #  67    0xdbf55  1      OPC=nop             
  nop                              #  68    0xdbf56  1      OPC=nop             
  nop                              #  69    0xdbf57  1      OPC=nop             
  nop                              #  70    0xdbf58  1      OPC=nop             
  nop                              #  71    0xdbf59  1      OPC=nop             
  nop                              #  72    0xdbf5a  1      OPC=nop             
  nop                              #  73    0xdbf5b  1      OPC=nop             
  nop                              #  74    0xdbf5c  1      OPC=nop             
  nop                              #  75    0xdbf5d  1      OPC=nop             
  nop                              #  76    0xdbf5e  1      OPC=nop             
  nop                              #  77    0xdbf5f  1      OPC=nop             
  nop                              #  78    0xdbf60  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev    #  79    0xdbf61  5      OPC=callq_label     
  movl 0x8(%rsp), %eax             #  80    0xdbf66  4      OPC=movl_r32_m32    
  movl %eax, %edi                  #  81    0xdbf6a  2      OPC=movl_r32_r32    
  nop                              #  82    0xdbf6c  1      OPC=nop             
  nop                              #  83    0xdbf6d  1      OPC=nop             
  nop                              #  84    0xdbf6e  1      OPC=nop             
  nop                              #  85    0xdbf6f  1      OPC=nop             
  nop                              #  86    0xdbf70  1      OPC=nop             
  nop                              #  87    0xdbf71  1      OPC=nop             
  nop                              #  88    0xdbf72  1      OPC=nop             
  nop                              #  89    0xdbf73  1      OPC=nop             
  nop                              #  90    0xdbf74  1      OPC=nop             
  nop                              #  91    0xdbf75  1      OPC=nop             
  nop                              #  92    0xdbf76  1      OPC=nop             
  nop                              #  93    0xdbf77  1      OPC=nop             
  nop                              #  94    0xdbf78  1      OPC=nop             
  nop                              #  95    0xdbf79  1      OPC=nop             
  nop                              #  96    0xdbf7a  1      OPC=nop             
  nop                              #  97    0xdbf7b  1      OPC=nop             
  nop                              #  98    0xdbf7c  1      OPC=nop             
  nop                              #  99    0xdbf7d  1      OPC=nop             
  nop                              #  100   0xdbf7e  1      OPC=nop             
  nop                              #  101   0xdbf7f  1      OPC=nop             
  nop                              #  102   0xdbf80  1      OPC=nop             
  callq ._Unwind_Resume            #  103   0xdbf81  5      OPC=callq_label     
                                                                                
.size _ZNSt10moneypunctIcLb0EED1Ev, .-_ZNSt10moneypunctIcLb0EED1Ev

