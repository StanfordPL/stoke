  .text
  .globl _ZNSt8numpunctIcEC2EPij
  .type _ZNSt8numpunctIcEC2EPij, @function

#! file-offset 0xbddc0
#! rip-offset  0x7ddc0
#! capacity    160 bytes

# Text                                                 #  Line  RIP      Bytes  Opcode              
._ZNSt8numpunctIcEC2EPij:                              #        0x7ddc0  0      OPC=<label>         
  pushq %rbx                                           #  1     0x7ddc0  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                      #  2     0x7ddc1  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                      #  3     0x7ddc3  2      OPC=movl_r32_r32    
  movl %esi, %esi                                      #  4     0x7ddc5  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                      #  5     0x7ddc7  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                     #  6     0x7ddc9  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                      #  7     0x7ddcc  3      OPC=addq_r64_r64    
  testl %edx, %edx                                     #  8     0x7ddcf  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                      #  9     0x7ddd1  2      OPC=movl_r32_r32    
  movl $0x1003afa8, (%r15,%rbx,1)                      #  10    0x7ddd3  8      OPC=movl_m32_imm32  
  setne %al                                            #  11    0x7dddb  3      OPC=setne_r8        
  xchgw %ax, %ax                                       #  12    0x7ddde  2      OPC=xchgw_ax_r16    
  movl %ebx, %ebx                                      #  13    0x7dde0  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rbx,1)                          #  14    0x7dde2  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                                      #  15    0x7ddeb  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                          #  16    0x7dded  5      OPC=movl_m32_r32    
  nop                                                  #  17    0x7ddf2  1      OPC=nop             
  nop                                                  #  18    0x7ddf3  1      OPC=nop             
  nop                                                  #  19    0x7ddf4  1      OPC=nop             
  nop                                                  #  20    0x7ddf5  1      OPC=nop             
  nop                                                  #  21    0x7ddf6  1      OPC=nop             
  nop                                                  #  22    0x7ddf7  1      OPC=nop             
  nop                                                  #  23    0x7ddf8  1      OPC=nop             
  nop                                                  #  24    0x7ddf9  1      OPC=nop             
  nop                                                  #  25    0x7ddfa  1      OPC=nop             
  callq ._ZNSt8numpunctIcE22_M_initialize_numpunctEPi  #  26    0x7ddfb  5      OPC=callq_label     
  addl $0x10, %esp                                     #  27    0x7de00  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                      #  28    0x7de03  3      OPC=addq_r64_r64    
  popq %rbx                                            #  29    0x7de06  1      OPC=popq_r64_1      
  popq %r11                                            #  30    0x7de07  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                              #  31    0x7de09  7      OPC=andl_r32_imm32  
  nop                                                  #  32    0x7de10  1      OPC=nop             
  nop                                                  #  33    0x7de11  1      OPC=nop             
  nop                                                  #  34    0x7de12  1      OPC=nop             
  nop                                                  #  35    0x7de13  1      OPC=nop             
  addq %r15, %r11                                      #  36    0x7de14  3      OPC=addq_r64_r64    
  jmpq %r11                                            #  37    0x7de17  3      OPC=jmpq_r64        
  nop                                                  #  38    0x7de1a  1      OPC=nop             
  nop                                                  #  39    0x7de1b  1      OPC=nop             
  nop                                                  #  40    0x7de1c  1      OPC=nop             
  nop                                                  #  41    0x7de1d  1      OPC=nop             
  nop                                                  #  42    0x7de1e  1      OPC=nop             
  nop                                                  #  43    0x7de1f  1      OPC=nop             
  nop                                                  #  44    0x7de20  1      OPC=nop             
  nop                                                  #  45    0x7de21  1      OPC=nop             
  nop                                                  #  46    0x7de22  1      OPC=nop             
  nop                                                  #  47    0x7de23  1      OPC=nop             
  nop                                                  #  48    0x7de24  1      OPC=nop             
  nop                                                  #  49    0x7de25  1      OPC=nop             
  nop                                                  #  50    0x7de26  1      OPC=nop             
  movl %ebx, %edi                                      #  51    0x7de27  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                 #  52    0x7de29  4      OPC=movl_m32_r32    
  nop                                                  #  53    0x7de2d  1      OPC=nop             
  nop                                                  #  54    0x7de2e  1      OPC=nop             
  nop                                                  #  55    0x7de2f  1      OPC=nop             
  nop                                                  #  56    0x7de30  1      OPC=nop             
  nop                                                  #  57    0x7de31  1      OPC=nop             
  nop                                                  #  58    0x7de32  1      OPC=nop             
  nop                                                  #  59    0x7de33  1      OPC=nop             
  nop                                                  #  60    0x7de34  1      OPC=nop             
  nop                                                  #  61    0x7de35  1      OPC=nop             
  nop                                                  #  62    0x7de36  1      OPC=nop             
  nop                                                  #  63    0x7de37  1      OPC=nop             
  nop                                                  #  64    0x7de38  1      OPC=nop             
  nop                                                  #  65    0x7de39  1      OPC=nop             
  nop                                                  #  66    0x7de3a  1      OPC=nop             
  nop                                                  #  67    0x7de3b  1      OPC=nop             
  nop                                                  #  68    0x7de3c  1      OPC=nop             
  nop                                                  #  69    0x7de3d  1      OPC=nop             
  nop                                                  #  70    0x7de3e  1      OPC=nop             
  nop                                                  #  71    0x7de3f  1      OPC=nop             
  nop                                                  #  72    0x7de40  1      OPC=nop             
  nop                                                  #  73    0x7de41  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                        #  74    0x7de42  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                 #  75    0x7de47  4      OPC=movl_r32_m32    
  movl %eax, %edi                                      #  76    0x7de4b  2      OPC=movl_r32_r32    
  nop                                                  #  77    0x7de4d  1      OPC=nop             
  nop                                                  #  78    0x7de4e  1      OPC=nop             
  nop                                                  #  79    0x7de4f  1      OPC=nop             
  nop                                                  #  80    0x7de50  1      OPC=nop             
  nop                                                  #  81    0x7de51  1      OPC=nop             
  nop                                                  #  82    0x7de52  1      OPC=nop             
  nop                                                  #  83    0x7de53  1      OPC=nop             
  nop                                                  #  84    0x7de54  1      OPC=nop             
  nop                                                  #  85    0x7de55  1      OPC=nop             
  nop                                                  #  86    0x7de56  1      OPC=nop             
  nop                                                  #  87    0x7de57  1      OPC=nop             
  nop                                                  #  88    0x7de58  1      OPC=nop             
  nop                                                  #  89    0x7de59  1      OPC=nop             
  nop                                                  #  90    0x7de5a  1      OPC=nop             
  nop                                                  #  91    0x7de5b  1      OPC=nop             
  nop                                                  #  92    0x7de5c  1      OPC=nop             
  nop                                                  #  93    0x7de5d  1      OPC=nop             
  nop                                                  #  94    0x7de5e  1      OPC=nop             
  nop                                                  #  95    0x7de5f  1      OPC=nop             
  nop                                                  #  96    0x7de60  1      OPC=nop             
  nop                                                  #  97    0x7de61  1      OPC=nop             
  callq ._Unwind_Resume                                #  98    0x7de62  5      OPC=callq_label     
                                                                                                    
.size _ZNSt8numpunctIcEC2EPij, .-_ZNSt8numpunctIcEC2EPij

