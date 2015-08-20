  .text
  .globl _ZNSt13runtime_errorC1ERKSs
  .type _ZNSt13runtime_errorC1ERKSs, @function

#! file-offset 0x129200
#! rip-offset  0xe9200
#! capacity    128 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSt13runtime_errorC1ERKSs:      #        0xe9200  0      OPC=<label>         
  pushq %rbx                       #  1     0xe9200  1      OPC=pushq_r64_1     
  movl %edi, %ebx                  #  2     0xe9201  2      OPC=movl_r32_r32    
  movl %esi, %esi                  #  3     0xe9203  2      OPC=movl_r32_r32    
  leal 0x4(%rbx), %edi             #  4     0xe9205  3      OPC=leal_r32_m16    
  subl $0x10, %esp                 #  5     0xe9208  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                  #  6     0xe920b  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                  #  7     0xe920e  2      OPC=movl_r32_r32    
  movl $0x1003db08, (%r15,%rbx,1)  #  8     0xe9210  8      OPC=movl_m32_imm32  
  nop                              #  9     0xe9218  1      OPC=nop             
  nop                              #  10    0xe9219  1      OPC=nop             
  nop                              #  11    0xe921a  1      OPC=nop             
  callq ._ZNSsC1ERKSs              #  12    0xe921b  5      OPC=callq_label     
  addl $0x10, %esp                 #  13    0xe9220  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                  #  14    0xe9223  3      OPC=addq_r64_r64    
  popq %rbx                        #  15    0xe9226  1      OPC=popq_r64_1      
  popq %r11                        #  16    0xe9227  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d          #  17    0xe9229  7      OPC=andl_r32_imm32  
  nop                              #  18    0xe9230  1      OPC=nop             
  nop                              #  19    0xe9231  1      OPC=nop             
  nop                              #  20    0xe9232  1      OPC=nop             
  nop                              #  21    0xe9233  1      OPC=nop             
  addq %r15, %r11                  #  22    0xe9234  3      OPC=addq_r64_r64    
  jmpq %r11                        #  23    0xe9237  3      OPC=jmpq_r64        
  nop                              #  24    0xe923a  1      OPC=nop             
  nop                              #  25    0xe923b  1      OPC=nop             
  nop                              #  26    0xe923c  1      OPC=nop             
  nop                              #  27    0xe923d  1      OPC=nop             
  nop                              #  28    0xe923e  1      OPC=nop             
  nop                              #  29    0xe923f  1      OPC=nop             
  nop                              #  30    0xe9240  1      OPC=nop             
  nop                              #  31    0xe9241  1      OPC=nop             
  nop                              #  32    0xe9242  1      OPC=nop             
  nop                              #  33    0xe9243  1      OPC=nop             
  nop                              #  34    0xe9244  1      OPC=nop             
  nop                              #  35    0xe9245  1      OPC=nop             
  nop                              #  36    0xe9246  1      OPC=nop             
  movl %ebx, %edi                  #  37    0xe9247  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)             #  38    0xe9249  4      OPC=movl_m32_r32    
  nop                              #  39    0xe924d  1      OPC=nop             
  nop                              #  40    0xe924e  1      OPC=nop             
  nop                              #  41    0xe924f  1      OPC=nop             
  nop                              #  42    0xe9250  1      OPC=nop             
  nop                              #  43    0xe9251  1      OPC=nop             
  nop                              #  44    0xe9252  1      OPC=nop             
  nop                              #  45    0xe9253  1      OPC=nop             
  nop                              #  46    0xe9254  1      OPC=nop             
  nop                              #  47    0xe9255  1      OPC=nop             
  nop                              #  48    0xe9256  1      OPC=nop             
  nop                              #  49    0xe9257  1      OPC=nop             
  nop                              #  50    0xe9258  1      OPC=nop             
  nop                              #  51    0xe9259  1      OPC=nop             
  nop                              #  52    0xe925a  1      OPC=nop             
  nop                              #  53    0xe925b  1      OPC=nop             
  nop                              #  54    0xe925c  1      OPC=nop             
  nop                              #  55    0xe925d  1      OPC=nop             
  nop                              #  56    0xe925e  1      OPC=nop             
  nop                              #  57    0xe925f  1      OPC=nop             
  nop                              #  58    0xe9260  1      OPC=nop             
  nop                              #  59    0xe9261  1      OPC=nop             
  callq ._ZNSt9exceptionD2Ev       #  60    0xe9262  5      OPC=callq_label     
  movl 0x8(%rsp), %eax             #  61    0xe9267  4      OPC=movl_r32_m32    
  movl %eax, %edi                  #  62    0xe926b  2      OPC=movl_r32_r32    
  nop                              #  63    0xe926d  1      OPC=nop             
  nop                              #  64    0xe926e  1      OPC=nop             
  nop                              #  65    0xe926f  1      OPC=nop             
  nop                              #  66    0xe9270  1      OPC=nop             
  nop                              #  67    0xe9271  1      OPC=nop             
  nop                              #  68    0xe9272  1      OPC=nop             
  nop                              #  69    0xe9273  1      OPC=nop             
  nop                              #  70    0xe9274  1      OPC=nop             
  nop                              #  71    0xe9275  1      OPC=nop             
  nop                              #  72    0xe9276  1      OPC=nop             
  nop                              #  73    0xe9277  1      OPC=nop             
  nop                              #  74    0xe9278  1      OPC=nop             
  nop                              #  75    0xe9279  1      OPC=nop             
  nop                              #  76    0xe927a  1      OPC=nop             
  nop                              #  77    0xe927b  1      OPC=nop             
  nop                              #  78    0xe927c  1      OPC=nop             
  nop                              #  79    0xe927d  1      OPC=nop             
  nop                              #  80    0xe927e  1      OPC=nop             
  nop                              #  81    0xe927f  1      OPC=nop             
  nop                              #  82    0xe9280  1      OPC=nop             
  nop                              #  83    0xe9281  1      OPC=nop             
  callq ._Unwind_Resume            #  84    0xe9282  5      OPC=callq_label     
                                                                                
.size _ZNSt13runtime_errorC1ERKSs, .-_ZNSt13runtime_errorC1ERKSs

