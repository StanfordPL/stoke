  .text
  .globl _ZNSt13runtime_errorC1ERKSs
  .type _ZNSt13runtime_errorC1ERKSs, @function

#! file-offset 0x129920
#! rip-offset  0xe9920
#! capacity    128 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSt13runtime_errorC1ERKSs:      #        0xe9920  0      OPC=<label>         
  pushq %rbx                       #  1     0xe9920  1      OPC=pushq_r64_1     
  movl %edi, %ebx                  #  2     0xe9921  2      OPC=movl_r32_r32    
  movl %esi, %esi                  #  3     0xe9923  2      OPC=movl_r32_r32    
  leal 0x4(%rbx), %edi             #  4     0xe9925  3      OPC=leal_r32_m16    
  subl $0x10, %esp                 #  5     0xe9928  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                  #  6     0xe992b  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                  #  7     0xe992e  2      OPC=movl_r32_r32    
  movl $0x1003db08, (%r15,%rbx,1)  #  8     0xe9930  8      OPC=movl_m32_imm32  
  nop                              #  9     0xe9938  1      OPC=nop             
  nop                              #  10    0xe9939  1      OPC=nop             
  nop                              #  11    0xe993a  1      OPC=nop             
  callq ._ZNSsC1ERKSs              #  12    0xe993b  5      OPC=callq_label     
  addl $0x10, %esp                 #  13    0xe9940  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                  #  14    0xe9943  3      OPC=addq_r64_r64    
  popq %rbx                        #  15    0xe9946  1      OPC=popq_r64_1      
  popq %r11                        #  16    0xe9947  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d          #  17    0xe9949  7      OPC=andl_r32_imm32  
  nop                              #  18    0xe9950  1      OPC=nop             
  nop                              #  19    0xe9951  1      OPC=nop             
  nop                              #  20    0xe9952  1      OPC=nop             
  nop                              #  21    0xe9953  1      OPC=nop             
  addq %r15, %r11                  #  22    0xe9954  3      OPC=addq_r64_r64    
  jmpq %r11                        #  23    0xe9957  3      OPC=jmpq_r64        
  nop                              #  24    0xe995a  1      OPC=nop             
  nop                              #  25    0xe995b  1      OPC=nop             
  nop                              #  26    0xe995c  1      OPC=nop             
  nop                              #  27    0xe995d  1      OPC=nop             
  nop                              #  28    0xe995e  1      OPC=nop             
  nop                              #  29    0xe995f  1      OPC=nop             
  nop                              #  30    0xe9960  1      OPC=nop             
  nop                              #  31    0xe9961  1      OPC=nop             
  nop                              #  32    0xe9962  1      OPC=nop             
  nop                              #  33    0xe9963  1      OPC=nop             
  nop                              #  34    0xe9964  1      OPC=nop             
  nop                              #  35    0xe9965  1      OPC=nop             
  nop                              #  36    0xe9966  1      OPC=nop             
  movl %ebx, %edi                  #  37    0xe9967  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)             #  38    0xe9969  4      OPC=movl_m32_r32    
  nop                              #  39    0xe996d  1      OPC=nop             
  nop                              #  40    0xe996e  1      OPC=nop             
  nop                              #  41    0xe996f  1      OPC=nop             
  nop                              #  42    0xe9970  1      OPC=nop             
  nop                              #  43    0xe9971  1      OPC=nop             
  nop                              #  44    0xe9972  1      OPC=nop             
  nop                              #  45    0xe9973  1      OPC=nop             
  nop                              #  46    0xe9974  1      OPC=nop             
  nop                              #  47    0xe9975  1      OPC=nop             
  nop                              #  48    0xe9976  1      OPC=nop             
  nop                              #  49    0xe9977  1      OPC=nop             
  nop                              #  50    0xe9978  1      OPC=nop             
  nop                              #  51    0xe9979  1      OPC=nop             
  nop                              #  52    0xe997a  1      OPC=nop             
  nop                              #  53    0xe997b  1      OPC=nop             
  nop                              #  54    0xe997c  1      OPC=nop             
  nop                              #  55    0xe997d  1      OPC=nop             
  nop                              #  56    0xe997e  1      OPC=nop             
  nop                              #  57    0xe997f  1      OPC=nop             
  nop                              #  58    0xe9980  1      OPC=nop             
  nop                              #  59    0xe9981  1      OPC=nop             
  callq ._ZNSt9exceptionD2Ev       #  60    0xe9982  5      OPC=callq_label     
  movl 0x8(%rsp), %eax             #  61    0xe9987  4      OPC=movl_r32_m32    
  movl %eax, %edi                  #  62    0xe998b  2      OPC=movl_r32_r32    
  nop                              #  63    0xe998d  1      OPC=nop             
  nop                              #  64    0xe998e  1      OPC=nop             
  nop                              #  65    0xe998f  1      OPC=nop             
  nop                              #  66    0xe9990  1      OPC=nop             
  nop                              #  67    0xe9991  1      OPC=nop             
  nop                              #  68    0xe9992  1      OPC=nop             
  nop                              #  69    0xe9993  1      OPC=nop             
  nop                              #  70    0xe9994  1      OPC=nop             
  nop                              #  71    0xe9995  1      OPC=nop             
  nop                              #  72    0xe9996  1      OPC=nop             
  nop                              #  73    0xe9997  1      OPC=nop             
  nop                              #  74    0xe9998  1      OPC=nop             
  nop                              #  75    0xe9999  1      OPC=nop             
  nop                              #  76    0xe999a  1      OPC=nop             
  nop                              #  77    0xe999b  1      OPC=nop             
  nop                              #  78    0xe999c  1      OPC=nop             
  nop                              #  79    0xe999d  1      OPC=nop             
  nop                              #  80    0xe999e  1      OPC=nop             
  nop                              #  81    0xe999f  1      OPC=nop             
  nop                              #  82    0xe99a0  1      OPC=nop             
  nop                              #  83    0xe99a1  1      OPC=nop             
  callq ._Unwind_Resume            #  84    0xe99a2  5      OPC=callq_label     
                                                                                
.size _ZNSt13runtime_errorC1ERKSs, .-_ZNSt13runtime_errorC1ERKSs

