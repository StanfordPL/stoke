  .text
  .globl _ZNSt8numpunctIwEC1EPij
  .type _ZNSt8numpunctIwEC1EPij, @function

#! file-offset 0xf6840
#! rip-offset  0xb6840
#! capacity    160 bytes

# Text                                                 #  Line  RIP      Bytes  Opcode              
._ZNSt8numpunctIwEC1EPij:                              #        0xb6840  0      OPC=<label>         
  pushq %rbx                                           #  1     0xb6840  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                      #  2     0xb6841  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                      #  3     0xb6843  2      OPC=movl_r32_r32    
  movl %esi, %esi                                      #  4     0xb6845  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                      #  5     0xb6847  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                     #  6     0xb6849  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                      #  7     0xb684c  3      OPC=addq_r64_r64    
  testl %edx, %edx                                     #  8     0xb684f  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                      #  9     0xb6851  2      OPC=movl_r32_r32    
  movl $0x1003c228, (%r15,%rbx,1)                      #  10    0xb6853  8      OPC=movl_m32_imm32  
  setne %al                                            #  11    0xb685b  3      OPC=setne_r8        
  xchgw %ax, %ax                                       #  12    0xb685e  2      OPC=xchgw_ax_r16    
  movl %ebx, %ebx                                      #  13    0xb6860  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rbx,1)                          #  14    0xb6862  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                                      #  15    0xb686b  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                          #  16    0xb686d  5      OPC=movl_m32_r32    
  nop                                                  #  17    0xb6872  1      OPC=nop             
  nop                                                  #  18    0xb6873  1      OPC=nop             
  nop                                                  #  19    0xb6874  1      OPC=nop             
  nop                                                  #  20    0xb6875  1      OPC=nop             
  nop                                                  #  21    0xb6876  1      OPC=nop             
  nop                                                  #  22    0xb6877  1      OPC=nop             
  nop                                                  #  23    0xb6878  1      OPC=nop             
  nop                                                  #  24    0xb6879  1      OPC=nop             
  nop                                                  #  25    0xb687a  1      OPC=nop             
  callq ._ZNSt8numpunctIwE22_M_initialize_numpunctEPi  #  26    0xb687b  5      OPC=callq_label     
  addl $0x10, %esp                                     #  27    0xb6880  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                      #  28    0xb6883  3      OPC=addq_r64_r64    
  popq %rbx                                            #  29    0xb6886  1      OPC=popq_r64_1      
  popq %r11                                            #  30    0xb6887  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                              #  31    0xb6889  7      OPC=andl_r32_imm32  
  nop                                                  #  32    0xb6890  1      OPC=nop             
  nop                                                  #  33    0xb6891  1      OPC=nop             
  nop                                                  #  34    0xb6892  1      OPC=nop             
  nop                                                  #  35    0xb6893  1      OPC=nop             
  addq %r15, %r11                                      #  36    0xb6894  3      OPC=addq_r64_r64    
  jmpq %r11                                            #  37    0xb6897  3      OPC=jmpq_r64        
  nop                                                  #  38    0xb689a  1      OPC=nop             
  nop                                                  #  39    0xb689b  1      OPC=nop             
  nop                                                  #  40    0xb689c  1      OPC=nop             
  nop                                                  #  41    0xb689d  1      OPC=nop             
  nop                                                  #  42    0xb689e  1      OPC=nop             
  nop                                                  #  43    0xb689f  1      OPC=nop             
  nop                                                  #  44    0xb68a0  1      OPC=nop             
  nop                                                  #  45    0xb68a1  1      OPC=nop             
  nop                                                  #  46    0xb68a2  1      OPC=nop             
  nop                                                  #  47    0xb68a3  1      OPC=nop             
  nop                                                  #  48    0xb68a4  1      OPC=nop             
  nop                                                  #  49    0xb68a5  1      OPC=nop             
  nop                                                  #  50    0xb68a6  1      OPC=nop             
  movl %ebx, %edi                                      #  51    0xb68a7  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                 #  52    0xb68a9  4      OPC=movl_m32_r32    
  nop                                                  #  53    0xb68ad  1      OPC=nop             
  nop                                                  #  54    0xb68ae  1      OPC=nop             
  nop                                                  #  55    0xb68af  1      OPC=nop             
  nop                                                  #  56    0xb68b0  1      OPC=nop             
  nop                                                  #  57    0xb68b1  1      OPC=nop             
  nop                                                  #  58    0xb68b2  1      OPC=nop             
  nop                                                  #  59    0xb68b3  1      OPC=nop             
  nop                                                  #  60    0xb68b4  1      OPC=nop             
  nop                                                  #  61    0xb68b5  1      OPC=nop             
  nop                                                  #  62    0xb68b6  1      OPC=nop             
  nop                                                  #  63    0xb68b7  1      OPC=nop             
  nop                                                  #  64    0xb68b8  1      OPC=nop             
  nop                                                  #  65    0xb68b9  1      OPC=nop             
  nop                                                  #  66    0xb68ba  1      OPC=nop             
  nop                                                  #  67    0xb68bb  1      OPC=nop             
  nop                                                  #  68    0xb68bc  1      OPC=nop             
  nop                                                  #  69    0xb68bd  1      OPC=nop             
  nop                                                  #  70    0xb68be  1      OPC=nop             
  nop                                                  #  71    0xb68bf  1      OPC=nop             
  nop                                                  #  72    0xb68c0  1      OPC=nop             
  nop                                                  #  73    0xb68c1  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                        #  74    0xb68c2  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                 #  75    0xb68c7  4      OPC=movl_r32_m32    
  movl %eax, %edi                                      #  76    0xb68cb  2      OPC=movl_r32_r32    
  nop                                                  #  77    0xb68cd  1      OPC=nop             
  nop                                                  #  78    0xb68ce  1      OPC=nop             
  nop                                                  #  79    0xb68cf  1      OPC=nop             
  nop                                                  #  80    0xb68d0  1      OPC=nop             
  nop                                                  #  81    0xb68d1  1      OPC=nop             
  nop                                                  #  82    0xb68d2  1      OPC=nop             
  nop                                                  #  83    0xb68d3  1      OPC=nop             
  nop                                                  #  84    0xb68d4  1      OPC=nop             
  nop                                                  #  85    0xb68d5  1      OPC=nop             
  nop                                                  #  86    0xb68d6  1      OPC=nop             
  nop                                                  #  87    0xb68d7  1      OPC=nop             
  nop                                                  #  88    0xb68d8  1      OPC=nop             
  nop                                                  #  89    0xb68d9  1      OPC=nop             
  nop                                                  #  90    0xb68da  1      OPC=nop             
  nop                                                  #  91    0xb68db  1      OPC=nop             
  nop                                                  #  92    0xb68dc  1      OPC=nop             
  nop                                                  #  93    0xb68dd  1      OPC=nop             
  nop                                                  #  94    0xb68de  1      OPC=nop             
  nop                                                  #  95    0xb68df  1      OPC=nop             
  nop                                                  #  96    0xb68e0  1      OPC=nop             
  nop                                                  #  97    0xb68e1  1      OPC=nop             
  callq ._Unwind_Resume                                #  98    0xb68e2  5      OPC=callq_label     
                                                                                                    
.size _ZNSt8numpunctIwEC1EPij, .-_ZNSt8numpunctIwEC1EPij

