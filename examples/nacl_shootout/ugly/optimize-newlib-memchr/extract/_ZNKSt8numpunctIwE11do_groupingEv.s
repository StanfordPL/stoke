  .text
  .globl _ZNKSt8numpunctIwE11do_groupingEv
  .type _ZNKSt8numpunctIwE11do_groupingEv, @function

#! file-offset 0xf7720
#! rip-offset  0xb7720
#! capacity    128 bytes

# Text                               #  Line  RIP      Bytes  Opcode              
._ZNKSt8numpunctIwE11do_groupingEv:  #        0xb7720  0      OPC=<label>         
  pushq %rbx                         #  1     0xb7720  1      OPC=pushq_r64_1     
  movl %esi, %esi                    #  2     0xb7721  2      OPC=movl_r32_r32    
  movl %edi, %ebx                    #  3     0xb7723  2      OPC=movl_r32_r32    
  movl %ebx, %edi                    #  4     0xb7725  2      OPC=movl_r32_r32    
  subl $0x10, %esp                   #  5     0xb7727  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                    #  6     0xb772a  3      OPC=addq_r64_r64    
  movl %esi, %esi                    #  7     0xb772d  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rsi,1), %eax        #  8     0xb772f  5      OPC=movl_r32_m32    
  leal 0xf(%rsp), %edx               #  9     0xb7734  4      OPC=leal_r32_m16    
  movl %eax, %eax                    #  10    0xb7738  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %esi        #  11    0xb773a  5      OPC=movl_r32_m32    
  nop                                #  12    0xb773f  1      OPC=nop             
  nop                                #  13    0xb7740  1      OPC=nop             
  nop                                #  14    0xb7741  1      OPC=nop             
  nop                                #  15    0xb7742  1      OPC=nop             
  nop                                #  16    0xb7743  1      OPC=nop             
  nop                                #  17    0xb7744  1      OPC=nop             
  nop                                #  18    0xb7745  1      OPC=nop             
  nop                                #  19    0xb7746  1      OPC=nop             
  nop                                #  20    0xb7747  1      OPC=nop             
  nop                                #  21    0xb7748  1      OPC=nop             
  nop                                #  22    0xb7749  1      OPC=nop             
  nop                                #  23    0xb774a  1      OPC=nop             
  nop                                #  24    0xb774b  1      OPC=nop             
  nop                                #  25    0xb774c  1      OPC=nop             
  nop                                #  26    0xb774d  1      OPC=nop             
  nop                                #  27    0xb774e  1      OPC=nop             
  nop                                #  28    0xb774f  1      OPC=nop             
  nop                                #  29    0xb7750  1      OPC=nop             
  nop                                #  30    0xb7751  1      OPC=nop             
  nop                                #  31    0xb7752  1      OPC=nop             
  nop                                #  32    0xb7753  1      OPC=nop             
  nop                                #  33    0xb7754  1      OPC=nop             
  nop                                #  34    0xb7755  1      OPC=nop             
  nop                                #  35    0xb7756  1      OPC=nop             
  nop                                #  36    0xb7757  1      OPC=nop             
  nop                                #  37    0xb7758  1      OPC=nop             
  nop                                #  38    0xb7759  1      OPC=nop             
  nop                                #  39    0xb775a  1      OPC=nop             
  callq ._ZNSsC1EPKcRKSaIcE          #  40    0xb775b  5      OPC=callq_label     
  movl %ebx, %eax                    #  41    0xb7760  2      OPC=movl_r32_r32    
  addl $0x10, %esp                   #  42    0xb7762  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                    #  43    0xb7765  3      OPC=addq_r64_r64    
  popq %rbx                          #  44    0xb7768  1      OPC=popq_r64_1      
  popq %r11                          #  45    0xb7769  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d            #  46    0xb776b  7      OPC=andl_r32_imm32  
  nop                                #  47    0xb7772  1      OPC=nop             
  nop                                #  48    0xb7773  1      OPC=nop             
  nop                                #  49    0xb7774  1      OPC=nop             
  nop                                #  50    0xb7775  1      OPC=nop             
  addq %r15, %r11                    #  51    0xb7776  3      OPC=addq_r64_r64    
  jmpq %r11                          #  52    0xb7779  3      OPC=jmpq_r64        
  nop                                #  53    0xb777c  1      OPC=nop             
  nop                                #  54    0xb777d  1      OPC=nop             
  nop                                #  55    0xb777e  1      OPC=nop             
  nop                                #  56    0xb777f  1      OPC=nop             
  nop                                #  57    0xb7780  1      OPC=nop             
  nop                                #  58    0xb7781  1      OPC=nop             
  nop                                #  59    0xb7782  1      OPC=nop             
  nop                                #  60    0xb7783  1      OPC=nop             
  nop                                #  61    0xb7784  1      OPC=nop             
  nop                                #  62    0xb7785  1      OPC=nop             
  nop                                #  63    0xb7786  1      OPC=nop             
  movl %eax, %edi                    #  64    0xb7787  2      OPC=movl_r32_r32    
  nop                                #  65    0xb7789  1      OPC=nop             
  nop                                #  66    0xb778a  1      OPC=nop             
  nop                                #  67    0xb778b  1      OPC=nop             
  nop                                #  68    0xb778c  1      OPC=nop             
  nop                                #  69    0xb778d  1      OPC=nop             
  nop                                #  70    0xb778e  1      OPC=nop             
  nop                                #  71    0xb778f  1      OPC=nop             
  nop                                #  72    0xb7790  1      OPC=nop             
  nop                                #  73    0xb7791  1      OPC=nop             
  nop                                #  74    0xb7792  1      OPC=nop             
  nop                                #  75    0xb7793  1      OPC=nop             
  nop                                #  76    0xb7794  1      OPC=nop             
  nop                                #  77    0xb7795  1      OPC=nop             
  nop                                #  78    0xb7796  1      OPC=nop             
  nop                                #  79    0xb7797  1      OPC=nop             
  nop                                #  80    0xb7798  1      OPC=nop             
  nop                                #  81    0xb7799  1      OPC=nop             
  nop                                #  82    0xb779a  1      OPC=nop             
  nop                                #  83    0xb779b  1      OPC=nop             
  nop                                #  84    0xb779c  1      OPC=nop             
  nop                                #  85    0xb779d  1      OPC=nop             
  nop                                #  86    0xb779e  1      OPC=nop             
  nop                                #  87    0xb779f  1      OPC=nop             
  nop                                #  88    0xb77a0  1      OPC=nop             
  nop                                #  89    0xb77a1  1      OPC=nop             
  callq ._Unwind_Resume              #  90    0xb77a2  5      OPC=callq_label     
                                                                                  
.size _ZNKSt8numpunctIwE11do_groupingEv, .-_ZNKSt8numpunctIwE11do_groupingEv

