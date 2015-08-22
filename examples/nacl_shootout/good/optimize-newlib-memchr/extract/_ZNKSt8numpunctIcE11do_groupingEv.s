  .text
  .globl _ZNKSt8numpunctIcE11do_groupingEv
  .type _ZNKSt8numpunctIcE11do_groupingEv, @function

#! file-offset 0xbe900
#! rip-offset  0x7e900
#! capacity    128 bytes

# Text                               #  Line  RIP      Bytes  Opcode              
._ZNKSt8numpunctIcE11do_groupingEv:  #        0x7e900  0      OPC=<label>         
  pushq %rbx                         #  1     0x7e900  1      OPC=pushq_r64_1     
  movl %esi, %esi                    #  2     0x7e901  2      OPC=movl_r32_r32    
  movl %edi, %ebx                    #  3     0x7e903  2      OPC=movl_r32_r32    
  movl %ebx, %edi                    #  4     0x7e905  2      OPC=movl_r32_r32    
  subl $0x10, %esp                   #  5     0x7e907  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                    #  6     0x7e90a  3      OPC=addq_r64_r64    
  movl %esi, %esi                    #  7     0x7e90d  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rsi,1), %eax        #  8     0x7e90f  5      OPC=movl_r32_m32    
  leal 0xf(%rsp), %edx               #  9     0x7e914  4      OPC=leal_r32_m16    
  movl %eax, %eax                    #  10    0x7e918  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %esi        #  11    0x7e91a  5      OPC=movl_r32_m32    
  nop                                #  12    0x7e91f  1      OPC=nop             
  nop                                #  13    0x7e920  1      OPC=nop             
  nop                                #  14    0x7e921  1      OPC=nop             
  nop                                #  15    0x7e922  1      OPC=nop             
  nop                                #  16    0x7e923  1      OPC=nop             
  nop                                #  17    0x7e924  1      OPC=nop             
  nop                                #  18    0x7e925  1      OPC=nop             
  nop                                #  19    0x7e926  1      OPC=nop             
  nop                                #  20    0x7e927  1      OPC=nop             
  nop                                #  21    0x7e928  1      OPC=nop             
  nop                                #  22    0x7e929  1      OPC=nop             
  nop                                #  23    0x7e92a  1      OPC=nop             
  nop                                #  24    0x7e92b  1      OPC=nop             
  nop                                #  25    0x7e92c  1      OPC=nop             
  nop                                #  26    0x7e92d  1      OPC=nop             
  nop                                #  27    0x7e92e  1      OPC=nop             
  nop                                #  28    0x7e92f  1      OPC=nop             
  nop                                #  29    0x7e930  1      OPC=nop             
  nop                                #  30    0x7e931  1      OPC=nop             
  nop                                #  31    0x7e932  1      OPC=nop             
  nop                                #  32    0x7e933  1      OPC=nop             
  nop                                #  33    0x7e934  1      OPC=nop             
  nop                                #  34    0x7e935  1      OPC=nop             
  nop                                #  35    0x7e936  1      OPC=nop             
  nop                                #  36    0x7e937  1      OPC=nop             
  nop                                #  37    0x7e938  1      OPC=nop             
  nop                                #  38    0x7e939  1      OPC=nop             
  nop                                #  39    0x7e93a  1      OPC=nop             
  callq ._ZNSsC1EPKcRKSaIcE          #  40    0x7e93b  5      OPC=callq_label     
  movl %ebx, %eax                    #  41    0x7e940  2      OPC=movl_r32_r32    
  addl $0x10, %esp                   #  42    0x7e942  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                    #  43    0x7e945  3      OPC=addq_r64_r64    
  popq %rbx                          #  44    0x7e948  1      OPC=popq_r64_1      
  popq %r11                          #  45    0x7e949  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d            #  46    0x7e94b  7      OPC=andl_r32_imm32  
  nop                                #  47    0x7e952  1      OPC=nop             
  nop                                #  48    0x7e953  1      OPC=nop             
  nop                                #  49    0x7e954  1      OPC=nop             
  nop                                #  50    0x7e955  1      OPC=nop             
  addq %r15, %r11                    #  51    0x7e956  3      OPC=addq_r64_r64    
  jmpq %r11                          #  52    0x7e959  3      OPC=jmpq_r64        
  nop                                #  53    0x7e95c  1      OPC=nop             
  nop                                #  54    0x7e95d  1      OPC=nop             
  nop                                #  55    0x7e95e  1      OPC=nop             
  nop                                #  56    0x7e95f  1      OPC=nop             
  nop                                #  57    0x7e960  1      OPC=nop             
  nop                                #  58    0x7e961  1      OPC=nop             
  nop                                #  59    0x7e962  1      OPC=nop             
  nop                                #  60    0x7e963  1      OPC=nop             
  nop                                #  61    0x7e964  1      OPC=nop             
  nop                                #  62    0x7e965  1      OPC=nop             
  nop                                #  63    0x7e966  1      OPC=nop             
  movl %eax, %edi                    #  64    0x7e967  2      OPC=movl_r32_r32    
  nop                                #  65    0x7e969  1      OPC=nop             
  nop                                #  66    0x7e96a  1      OPC=nop             
  nop                                #  67    0x7e96b  1      OPC=nop             
  nop                                #  68    0x7e96c  1      OPC=nop             
  nop                                #  69    0x7e96d  1      OPC=nop             
  nop                                #  70    0x7e96e  1      OPC=nop             
  nop                                #  71    0x7e96f  1      OPC=nop             
  nop                                #  72    0x7e970  1      OPC=nop             
  nop                                #  73    0x7e971  1      OPC=nop             
  nop                                #  74    0x7e972  1      OPC=nop             
  nop                                #  75    0x7e973  1      OPC=nop             
  nop                                #  76    0x7e974  1      OPC=nop             
  nop                                #  77    0x7e975  1      OPC=nop             
  nop                                #  78    0x7e976  1      OPC=nop             
  nop                                #  79    0x7e977  1      OPC=nop             
  nop                                #  80    0x7e978  1      OPC=nop             
  nop                                #  81    0x7e979  1      OPC=nop             
  nop                                #  82    0x7e97a  1      OPC=nop             
  nop                                #  83    0x7e97b  1      OPC=nop             
  nop                                #  84    0x7e97c  1      OPC=nop             
  nop                                #  85    0x7e97d  1      OPC=nop             
  nop                                #  86    0x7e97e  1      OPC=nop             
  nop                                #  87    0x7e97f  1      OPC=nop             
  nop                                #  88    0x7e980  1      OPC=nop             
  nop                                #  89    0x7e981  1      OPC=nop             
  callq ._Unwind_Resume              #  90    0x7e982  5      OPC=callq_label     
                                                                                  
.size _ZNKSt8numpunctIcE11do_groupingEv, .-_ZNKSt8numpunctIcE11do_groupingEv

