  .text
  .globl _ZNKSt10moneypunctIwLb0EE16do_positive_signEv
  .type _ZNKSt10moneypunctIwLb0EE16do_positive_signEv, @function

#! file-offset 0xf7620
#! rip-offset  0xb7620
#! capacity    128 bytes

# Text                                               #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb0EE16do_positive_signEv:      #        0xb7620  0      OPC=<label>         
  pushq %rbx                                         #  1     0xb7620  1      OPC=pushq_r64_1     
  movl %esi, %esi                                    #  2     0xb7621  2      OPC=movl_r32_r32    
  movl %edi, %ebx                                    #  3     0xb7623  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                    #  4     0xb7625  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                   #  5     0xb7627  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                    #  6     0xb762a  3      OPC=addq_r64_r64    
  movl %esi, %esi                                    #  7     0xb762d  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rsi,1), %eax                        #  8     0xb762f  5      OPC=movl_r32_m32    
  leal 0xf(%rsp), %edx                               #  9     0xb7634  4      OPC=leal_r32_m16    
  movl %eax, %eax                                    #  10    0xb7638  2      OPC=movl_r32_r32    
  movl 0x24(%r15,%rax,1), %esi                       #  11    0xb763a  5      OPC=movl_r32_m32    
  nop                                                #  12    0xb763f  1      OPC=nop             
  nop                                                #  13    0xb7640  1      OPC=nop             
  nop                                                #  14    0xb7641  1      OPC=nop             
  nop                                                #  15    0xb7642  1      OPC=nop             
  nop                                                #  16    0xb7643  1      OPC=nop             
  nop                                                #  17    0xb7644  1      OPC=nop             
  nop                                                #  18    0xb7645  1      OPC=nop             
  nop                                                #  19    0xb7646  1      OPC=nop             
  nop                                                #  20    0xb7647  1      OPC=nop             
  nop                                                #  21    0xb7648  1      OPC=nop             
  nop                                                #  22    0xb7649  1      OPC=nop             
  nop                                                #  23    0xb764a  1      OPC=nop             
  nop                                                #  24    0xb764b  1      OPC=nop             
  nop                                                #  25    0xb764c  1      OPC=nop             
  nop                                                #  26    0xb764d  1      OPC=nop             
  nop                                                #  27    0xb764e  1      OPC=nop             
  nop                                                #  28    0xb764f  1      OPC=nop             
  nop                                                #  29    0xb7650  1      OPC=nop             
  nop                                                #  30    0xb7651  1      OPC=nop             
  nop                                                #  31    0xb7652  1      OPC=nop             
  nop                                                #  32    0xb7653  1      OPC=nop             
  nop                                                #  33    0xb7654  1      OPC=nop             
  nop                                                #  34    0xb7655  1      OPC=nop             
  nop                                                #  35    0xb7656  1      OPC=nop             
  nop                                                #  36    0xb7657  1      OPC=nop             
  nop                                                #  37    0xb7658  1      OPC=nop             
  nop                                                #  38    0xb7659  1      OPC=nop             
  nop                                                #  39    0xb765a  1      OPC=nop             
  callq ._ZNSbIwSt11char_traitsIwESaIwEEC1EPKwRKS1_  #  40    0xb765b  5      OPC=callq_label     
  movl %ebx, %eax                                    #  41    0xb7660  2      OPC=movl_r32_r32    
  addl $0x10, %esp                                   #  42    0xb7662  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                    #  43    0xb7665  3      OPC=addq_r64_r64    
  popq %rbx                                          #  44    0xb7668  1      OPC=popq_r64_1      
  popq %r11                                          #  45    0xb7669  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                            #  46    0xb766b  7      OPC=andl_r32_imm32  
  nop                                                #  47    0xb7672  1      OPC=nop             
  nop                                                #  48    0xb7673  1      OPC=nop             
  nop                                                #  49    0xb7674  1      OPC=nop             
  nop                                                #  50    0xb7675  1      OPC=nop             
  addq %r15, %r11                                    #  51    0xb7676  3      OPC=addq_r64_r64    
  jmpq %r11                                          #  52    0xb7679  3      OPC=jmpq_r64        
  nop                                                #  53    0xb767c  1      OPC=nop             
  nop                                                #  54    0xb767d  1      OPC=nop             
  nop                                                #  55    0xb767e  1      OPC=nop             
  nop                                                #  56    0xb767f  1      OPC=nop             
  nop                                                #  57    0xb7680  1      OPC=nop             
  nop                                                #  58    0xb7681  1      OPC=nop             
  nop                                                #  59    0xb7682  1      OPC=nop             
  nop                                                #  60    0xb7683  1      OPC=nop             
  nop                                                #  61    0xb7684  1      OPC=nop             
  nop                                                #  62    0xb7685  1      OPC=nop             
  nop                                                #  63    0xb7686  1      OPC=nop             
  movl %eax, %edi                                    #  64    0xb7687  2      OPC=movl_r32_r32    
  nop                                                #  65    0xb7689  1      OPC=nop             
  nop                                                #  66    0xb768a  1      OPC=nop             
  nop                                                #  67    0xb768b  1      OPC=nop             
  nop                                                #  68    0xb768c  1      OPC=nop             
  nop                                                #  69    0xb768d  1      OPC=nop             
  nop                                                #  70    0xb768e  1      OPC=nop             
  nop                                                #  71    0xb768f  1      OPC=nop             
  nop                                                #  72    0xb7690  1      OPC=nop             
  nop                                                #  73    0xb7691  1      OPC=nop             
  nop                                                #  74    0xb7692  1      OPC=nop             
  nop                                                #  75    0xb7693  1      OPC=nop             
  nop                                                #  76    0xb7694  1      OPC=nop             
  nop                                                #  77    0xb7695  1      OPC=nop             
  nop                                                #  78    0xb7696  1      OPC=nop             
  nop                                                #  79    0xb7697  1      OPC=nop             
  nop                                                #  80    0xb7698  1      OPC=nop             
  nop                                                #  81    0xb7699  1      OPC=nop             
  nop                                                #  82    0xb769a  1      OPC=nop             
  nop                                                #  83    0xb769b  1      OPC=nop             
  nop                                                #  84    0xb769c  1      OPC=nop             
  nop                                                #  85    0xb769d  1      OPC=nop             
  nop                                                #  86    0xb769e  1      OPC=nop             
  nop                                                #  87    0xb769f  1      OPC=nop             
  nop                                                #  88    0xb76a0  1      OPC=nop             
  nop                                                #  89    0xb76a1  1      OPC=nop             
  callq ._Unwind_Resume                              #  90    0xb76a2  5      OPC=callq_label     
                                                                                                  
.size _ZNKSt10moneypunctIwLb0EE16do_positive_signEv, .-_ZNKSt10moneypunctIwLb0EE16do_positive_signEv

