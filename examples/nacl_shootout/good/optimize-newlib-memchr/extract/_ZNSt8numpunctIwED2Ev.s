  .text
  .globl _ZNSt8numpunctIwED2Ev
  .type _ZNSt8numpunctIwED2Ev, @function

#! file-offset 0x11cf00
#! rip-offset  0xdcf00
#! capacity    160 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSt8numpunctIwED2Ev:            #        0xdcf00  0      OPC=<label>         
  pushq %rbx                       #  1     0xdcf00  1      OPC=pushq_r64_1     
  movl %edi, %ebx                  #  2     0xdcf01  2      OPC=movl_r32_r32    
  subl $0x10, %esp                 #  3     0xdcf03  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                  #  4     0xdcf06  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                  #  5     0xdcf09  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rbx,1), %edi      #  6     0xdcf0b  5      OPC=movl_r32_m32    
  movl %ebx, %ebx                  #  7     0xdcf10  2      OPC=movl_r32_r32    
  movl $0x1003c228, (%r15,%rbx,1)  #  8     0xdcf12  8      OPC=movl_m32_imm32  
  testq %rdi, %rdi                 #  9     0xdcf1a  3      OPC=testq_r64_r64   
  nop                              #  10    0xdcf1d  1      OPC=nop             
  nop                              #  11    0xdcf1e  1      OPC=nop             
  nop                              #  12    0xdcf1f  1      OPC=nop             
  je .L_dcf40                      #  13    0xdcf20  2      OPC=je_label        
  movl %edi, %edi                  #  14    0xdcf22  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax         #  15    0xdcf24  4      OPC=movl_r32_m32    
  movl %eax, %eax                  #  16    0xdcf28  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rax,1), %eax      #  17    0xdcf2a  5      OPC=movl_r32_m32    
  nop                              #  18    0xdcf2f  1      OPC=nop             
  nop                              #  19    0xdcf30  1      OPC=nop             
  nop                              #  20    0xdcf31  1      OPC=nop             
  nop                              #  21    0xdcf32  1      OPC=nop             
  nop                              #  22    0xdcf33  1      OPC=nop             
  nop                              #  23    0xdcf34  1      OPC=nop             
  nop                              #  24    0xdcf35  1      OPC=nop             
  nop                              #  25    0xdcf36  1      OPC=nop             
  nop                              #  26    0xdcf37  1      OPC=nop             
  andl $0xffffffe0, %eax           #  27    0xdcf38  6      OPC=andl_r32_imm32  
  nop                              #  28    0xdcf3e  1      OPC=nop             
  nop                              #  29    0xdcf3f  1      OPC=nop             
  nop                              #  30    0xdcf40  1      OPC=nop             
  addq %r15, %rax                  #  31    0xdcf41  3      OPC=addq_r64_r64    
  callq %rax                       #  32    0xdcf44  2      OPC=callq_r64       
.L_dcf40:                          #        0xdcf46  0      OPC=<label>         
  movl %ebx, %edi                  #  33    0xdcf46  2      OPC=movl_r32_r32    
  addl $0x10, %esp                 #  34    0xdcf48  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                  #  35    0xdcf4b  3      OPC=addq_r64_r64    
  popq %rbx                        #  36    0xdcf4e  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev     #  37    0xdcf4f  5      OPC=jmpq_label_1    
  nop                              #  38    0xdcf54  1      OPC=nop             
  nop                              #  39    0xdcf55  1      OPC=nop             
  nop                              #  40    0xdcf56  1      OPC=nop             
  nop                              #  41    0xdcf57  1      OPC=nop             
  nop                              #  42    0xdcf58  1      OPC=nop             
  nop                              #  43    0xdcf59  1      OPC=nop             
  nop                              #  44    0xdcf5a  1      OPC=nop             
  nop                              #  45    0xdcf5b  1      OPC=nop             
  nop                              #  46    0xdcf5c  1      OPC=nop             
  nop                              #  47    0xdcf5d  1      OPC=nop             
  nop                              #  48    0xdcf5e  1      OPC=nop             
  nop                              #  49    0xdcf5f  1      OPC=nop             
  nop                              #  50    0xdcf60  1      OPC=nop             
  nop                              #  51    0xdcf61  1      OPC=nop             
  nop                              #  52    0xdcf62  1      OPC=nop             
  nop                              #  53    0xdcf63  1      OPC=nop             
  nop                              #  54    0xdcf64  1      OPC=nop             
  nop                              #  55    0xdcf65  1      OPC=nop             
  movl %ebx, %edi                  #  56    0xdcf66  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)             #  57    0xdcf68  4      OPC=movl_m32_r32    
  nop                              #  58    0xdcf6c  1      OPC=nop             
  nop                              #  59    0xdcf6d  1      OPC=nop             
  nop                              #  60    0xdcf6e  1      OPC=nop             
  nop                              #  61    0xdcf6f  1      OPC=nop             
  nop                              #  62    0xdcf70  1      OPC=nop             
  nop                              #  63    0xdcf71  1      OPC=nop             
  nop                              #  64    0xdcf72  1      OPC=nop             
  nop                              #  65    0xdcf73  1      OPC=nop             
  nop                              #  66    0xdcf74  1      OPC=nop             
  nop                              #  67    0xdcf75  1      OPC=nop             
  nop                              #  68    0xdcf76  1      OPC=nop             
  nop                              #  69    0xdcf77  1      OPC=nop             
  nop                              #  70    0xdcf78  1      OPC=nop             
  nop                              #  71    0xdcf79  1      OPC=nop             
  nop                              #  72    0xdcf7a  1      OPC=nop             
  nop                              #  73    0xdcf7b  1      OPC=nop             
  nop                              #  74    0xdcf7c  1      OPC=nop             
  nop                              #  75    0xdcf7d  1      OPC=nop             
  nop                              #  76    0xdcf7e  1      OPC=nop             
  nop                              #  77    0xdcf7f  1      OPC=nop             
  nop                              #  78    0xdcf80  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev    #  79    0xdcf81  5      OPC=callq_label     
  movl 0x8(%rsp), %eax             #  80    0xdcf86  4      OPC=movl_r32_m32    
  movl %eax, %edi                  #  81    0xdcf8a  2      OPC=movl_r32_r32    
  nop                              #  82    0xdcf8c  1      OPC=nop             
  nop                              #  83    0xdcf8d  1      OPC=nop             
  nop                              #  84    0xdcf8e  1      OPC=nop             
  nop                              #  85    0xdcf8f  1      OPC=nop             
  nop                              #  86    0xdcf90  1      OPC=nop             
  nop                              #  87    0xdcf91  1      OPC=nop             
  nop                              #  88    0xdcf92  1      OPC=nop             
  nop                              #  89    0xdcf93  1      OPC=nop             
  nop                              #  90    0xdcf94  1      OPC=nop             
  nop                              #  91    0xdcf95  1      OPC=nop             
  nop                              #  92    0xdcf96  1      OPC=nop             
  nop                              #  93    0xdcf97  1      OPC=nop             
  nop                              #  94    0xdcf98  1      OPC=nop             
  nop                              #  95    0xdcf99  1      OPC=nop             
  nop                              #  96    0xdcf9a  1      OPC=nop             
  nop                              #  97    0xdcf9b  1      OPC=nop             
  nop                              #  98    0xdcf9c  1      OPC=nop             
  nop                              #  99    0xdcf9d  1      OPC=nop             
  nop                              #  100   0xdcf9e  1      OPC=nop             
  nop                              #  101   0xdcf9f  1      OPC=nop             
  nop                              #  102   0xdcfa0  1      OPC=nop             
  callq ._Unwind_Resume            #  103   0xdcfa1  5      OPC=callq_label     
                                                                                
.size _ZNSt8numpunctIwED2Ev, .-_ZNSt8numpunctIwED2Ev

