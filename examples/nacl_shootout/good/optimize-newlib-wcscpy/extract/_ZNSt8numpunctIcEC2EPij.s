  .text
  .globl _ZNSt8numpunctIcEC2EPij
  .type _ZNSt8numpunctIcEC2EPij, @function

#! file-offset 0xbdac0
#! rip-offset  0x7dac0
#! capacity    160 bytes

# Text                                                 #  Line  RIP      Bytes  Opcode              
._ZNSt8numpunctIcEC2EPij:                              #        0x7dac0  0      OPC=<label>         
  pushq %rbx                                           #  1     0x7dac0  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                      #  2     0x7dac1  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                      #  3     0x7dac3  2      OPC=movl_r32_r32    
  movl %esi, %esi                                      #  4     0x7dac5  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                      #  5     0x7dac7  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                     #  6     0x7dac9  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                      #  7     0x7dacc  3      OPC=addq_r64_r64    
  testl %edx, %edx                                     #  8     0x7dacf  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                      #  9     0x7dad1  2      OPC=movl_r32_r32    
  movl $0x1003afa8, (%r15,%rbx,1)                      #  10    0x7dad3  8      OPC=movl_m32_imm32  
  setne %al                                            #  11    0x7dadb  3      OPC=setne_r8        
  xchgw %ax, %ax                                       #  12    0x7dade  2      OPC=xchgw_ax_r16    
  movl %ebx, %ebx                                      #  13    0x7dae0  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rbx,1)                          #  14    0x7dae2  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                                      #  15    0x7daeb  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                          #  16    0x7daed  5      OPC=movl_m32_r32    
  nop                                                  #  17    0x7daf2  1      OPC=nop             
  nop                                                  #  18    0x7daf3  1      OPC=nop             
  nop                                                  #  19    0x7daf4  1      OPC=nop             
  nop                                                  #  20    0x7daf5  1      OPC=nop             
  nop                                                  #  21    0x7daf6  1      OPC=nop             
  nop                                                  #  22    0x7daf7  1      OPC=nop             
  nop                                                  #  23    0x7daf8  1      OPC=nop             
  nop                                                  #  24    0x7daf9  1      OPC=nop             
  nop                                                  #  25    0x7dafa  1      OPC=nop             
  callq ._ZNSt8numpunctIcE22_M_initialize_numpunctEPi  #  26    0x7dafb  5      OPC=callq_label     
  addl $0x10, %esp                                     #  27    0x7db00  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                      #  28    0x7db03  3      OPC=addq_r64_r64    
  popq %rbx                                            #  29    0x7db06  1      OPC=popq_r64_1      
  popq %r11                                            #  30    0x7db07  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                              #  31    0x7db09  7      OPC=andl_r32_imm32  
  nop                                                  #  32    0x7db10  1      OPC=nop             
  nop                                                  #  33    0x7db11  1      OPC=nop             
  nop                                                  #  34    0x7db12  1      OPC=nop             
  nop                                                  #  35    0x7db13  1      OPC=nop             
  addq %r15, %r11                                      #  36    0x7db14  3      OPC=addq_r64_r64    
  jmpq %r11                                            #  37    0x7db17  3      OPC=jmpq_r64        
  nop                                                  #  38    0x7db1a  1      OPC=nop             
  nop                                                  #  39    0x7db1b  1      OPC=nop             
  nop                                                  #  40    0x7db1c  1      OPC=nop             
  nop                                                  #  41    0x7db1d  1      OPC=nop             
  nop                                                  #  42    0x7db1e  1      OPC=nop             
  nop                                                  #  43    0x7db1f  1      OPC=nop             
  nop                                                  #  44    0x7db20  1      OPC=nop             
  nop                                                  #  45    0x7db21  1      OPC=nop             
  nop                                                  #  46    0x7db22  1      OPC=nop             
  nop                                                  #  47    0x7db23  1      OPC=nop             
  nop                                                  #  48    0x7db24  1      OPC=nop             
  nop                                                  #  49    0x7db25  1      OPC=nop             
  nop                                                  #  50    0x7db26  1      OPC=nop             
  movl %ebx, %edi                                      #  51    0x7db27  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                 #  52    0x7db29  4      OPC=movl_m32_r32    
  nop                                                  #  53    0x7db2d  1      OPC=nop             
  nop                                                  #  54    0x7db2e  1      OPC=nop             
  nop                                                  #  55    0x7db2f  1      OPC=nop             
  nop                                                  #  56    0x7db30  1      OPC=nop             
  nop                                                  #  57    0x7db31  1      OPC=nop             
  nop                                                  #  58    0x7db32  1      OPC=nop             
  nop                                                  #  59    0x7db33  1      OPC=nop             
  nop                                                  #  60    0x7db34  1      OPC=nop             
  nop                                                  #  61    0x7db35  1      OPC=nop             
  nop                                                  #  62    0x7db36  1      OPC=nop             
  nop                                                  #  63    0x7db37  1      OPC=nop             
  nop                                                  #  64    0x7db38  1      OPC=nop             
  nop                                                  #  65    0x7db39  1      OPC=nop             
  nop                                                  #  66    0x7db3a  1      OPC=nop             
  nop                                                  #  67    0x7db3b  1      OPC=nop             
  nop                                                  #  68    0x7db3c  1      OPC=nop             
  nop                                                  #  69    0x7db3d  1      OPC=nop             
  nop                                                  #  70    0x7db3e  1      OPC=nop             
  nop                                                  #  71    0x7db3f  1      OPC=nop             
  nop                                                  #  72    0x7db40  1      OPC=nop             
  nop                                                  #  73    0x7db41  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                        #  74    0x7db42  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                 #  75    0x7db47  4      OPC=movl_r32_m32    
  movl %eax, %edi                                      #  76    0x7db4b  2      OPC=movl_r32_r32    
  nop                                                  #  77    0x7db4d  1      OPC=nop             
  nop                                                  #  78    0x7db4e  1      OPC=nop             
  nop                                                  #  79    0x7db4f  1      OPC=nop             
  nop                                                  #  80    0x7db50  1      OPC=nop             
  nop                                                  #  81    0x7db51  1      OPC=nop             
  nop                                                  #  82    0x7db52  1      OPC=nop             
  nop                                                  #  83    0x7db53  1      OPC=nop             
  nop                                                  #  84    0x7db54  1      OPC=nop             
  nop                                                  #  85    0x7db55  1      OPC=nop             
  nop                                                  #  86    0x7db56  1      OPC=nop             
  nop                                                  #  87    0x7db57  1      OPC=nop             
  nop                                                  #  88    0x7db58  1      OPC=nop             
  nop                                                  #  89    0x7db59  1      OPC=nop             
  nop                                                  #  90    0x7db5a  1      OPC=nop             
  nop                                                  #  91    0x7db5b  1      OPC=nop             
  nop                                                  #  92    0x7db5c  1      OPC=nop             
  nop                                                  #  93    0x7db5d  1      OPC=nop             
  nop                                                  #  94    0x7db5e  1      OPC=nop             
  nop                                                  #  95    0x7db5f  1      OPC=nop             
  nop                                                  #  96    0x7db60  1      OPC=nop             
  nop                                                  #  97    0x7db61  1      OPC=nop             
  callq ._Unwind_Resume                                #  98    0x7db62  5      OPC=callq_label     
                                                                                                    
.size _ZNSt8numpunctIcEC2EPij, .-_ZNSt8numpunctIcEC2EPij

