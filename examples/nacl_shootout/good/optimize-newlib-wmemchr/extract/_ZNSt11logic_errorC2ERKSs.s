  .text
  .globl _ZNSt11logic_errorC2ERKSs
  .type _ZNSt11logic_errorC2ERKSs, @function

#! file-offset 0x129500
#! rip-offset  0xe9500
#! capacity    128 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSt11logic_errorC2ERKSs:        #        0xe9500  0      OPC=<label>         
  pushq %rbx                       #  1     0xe9500  1      OPC=pushq_r64_1     
  movl %edi, %ebx                  #  2     0xe9501  2      OPC=movl_r32_r32    
  movl %esi, %esi                  #  3     0xe9503  2      OPC=movl_r32_r32    
  leal 0x4(%rbx), %edi             #  4     0xe9505  3      OPC=leal_r32_m16    
  subl $0x10, %esp                 #  5     0xe9508  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                  #  6     0xe950b  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                  #  7     0xe950e  2      OPC=movl_r32_r32    
  movl $0x1003db28, (%r15,%rbx,1)  #  8     0xe9510  8      OPC=movl_m32_imm32  
  nop                              #  9     0xe9518  1      OPC=nop             
  nop                              #  10    0xe9519  1      OPC=nop             
  nop                              #  11    0xe951a  1      OPC=nop             
  callq ._ZNSsC1ERKSs              #  12    0xe951b  5      OPC=callq_label     
  addl $0x10, %esp                 #  13    0xe9520  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                  #  14    0xe9523  3      OPC=addq_r64_r64    
  popq %rbx                        #  15    0xe9526  1      OPC=popq_r64_1      
  popq %r11                        #  16    0xe9527  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d          #  17    0xe9529  7      OPC=andl_r32_imm32  
  nop                              #  18    0xe9530  1      OPC=nop             
  nop                              #  19    0xe9531  1      OPC=nop             
  nop                              #  20    0xe9532  1      OPC=nop             
  nop                              #  21    0xe9533  1      OPC=nop             
  addq %r15, %r11                  #  22    0xe9534  3      OPC=addq_r64_r64    
  jmpq %r11                        #  23    0xe9537  3      OPC=jmpq_r64        
  nop                              #  24    0xe953a  1      OPC=nop             
  nop                              #  25    0xe953b  1      OPC=nop             
  nop                              #  26    0xe953c  1      OPC=nop             
  nop                              #  27    0xe953d  1      OPC=nop             
  nop                              #  28    0xe953e  1      OPC=nop             
  nop                              #  29    0xe953f  1      OPC=nop             
  nop                              #  30    0xe9540  1      OPC=nop             
  nop                              #  31    0xe9541  1      OPC=nop             
  nop                              #  32    0xe9542  1      OPC=nop             
  nop                              #  33    0xe9543  1      OPC=nop             
  nop                              #  34    0xe9544  1      OPC=nop             
  nop                              #  35    0xe9545  1      OPC=nop             
  nop                              #  36    0xe9546  1      OPC=nop             
  movl %ebx, %edi                  #  37    0xe9547  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)             #  38    0xe9549  4      OPC=movl_m32_r32    
  nop                              #  39    0xe954d  1      OPC=nop             
  nop                              #  40    0xe954e  1      OPC=nop             
  nop                              #  41    0xe954f  1      OPC=nop             
  nop                              #  42    0xe9550  1      OPC=nop             
  nop                              #  43    0xe9551  1      OPC=nop             
  nop                              #  44    0xe9552  1      OPC=nop             
  nop                              #  45    0xe9553  1      OPC=nop             
  nop                              #  46    0xe9554  1      OPC=nop             
  nop                              #  47    0xe9555  1      OPC=nop             
  nop                              #  48    0xe9556  1      OPC=nop             
  nop                              #  49    0xe9557  1      OPC=nop             
  nop                              #  50    0xe9558  1      OPC=nop             
  nop                              #  51    0xe9559  1      OPC=nop             
  nop                              #  52    0xe955a  1      OPC=nop             
  nop                              #  53    0xe955b  1      OPC=nop             
  nop                              #  54    0xe955c  1      OPC=nop             
  nop                              #  55    0xe955d  1      OPC=nop             
  nop                              #  56    0xe955e  1      OPC=nop             
  nop                              #  57    0xe955f  1      OPC=nop             
  nop                              #  58    0xe9560  1      OPC=nop             
  nop                              #  59    0xe9561  1      OPC=nop             
  callq ._ZNSt9exceptionD2Ev       #  60    0xe9562  5      OPC=callq_label     
  movl 0x8(%rsp), %eax             #  61    0xe9567  4      OPC=movl_r32_m32    
  movl %eax, %edi                  #  62    0xe956b  2      OPC=movl_r32_r32    
  nop                              #  63    0xe956d  1      OPC=nop             
  nop                              #  64    0xe956e  1      OPC=nop             
  nop                              #  65    0xe956f  1      OPC=nop             
  nop                              #  66    0xe9570  1      OPC=nop             
  nop                              #  67    0xe9571  1      OPC=nop             
  nop                              #  68    0xe9572  1      OPC=nop             
  nop                              #  69    0xe9573  1      OPC=nop             
  nop                              #  70    0xe9574  1      OPC=nop             
  nop                              #  71    0xe9575  1      OPC=nop             
  nop                              #  72    0xe9576  1      OPC=nop             
  nop                              #  73    0xe9577  1      OPC=nop             
  nop                              #  74    0xe9578  1      OPC=nop             
  nop                              #  75    0xe9579  1      OPC=nop             
  nop                              #  76    0xe957a  1      OPC=nop             
  nop                              #  77    0xe957b  1      OPC=nop             
  nop                              #  78    0xe957c  1      OPC=nop             
  nop                              #  79    0xe957d  1      OPC=nop             
  nop                              #  80    0xe957e  1      OPC=nop             
  nop                              #  81    0xe957f  1      OPC=nop             
  nop                              #  82    0xe9580  1      OPC=nop             
  nop                              #  83    0xe9581  1      OPC=nop             
  callq ._Unwind_Resume            #  84    0xe9582  5      OPC=callq_label     
                                                                                
.size _ZNSt11logic_errorC2ERKSs, .-_ZNSt11logic_errorC2ERKSs

