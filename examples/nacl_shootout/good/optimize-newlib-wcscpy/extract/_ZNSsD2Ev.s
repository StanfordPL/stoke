  .text
  .globl _ZNSsD2Ev
  .type _ZNSsD2Ev, @function

#! file-offset 0xebca0
#! rip-offset  0xabca0
#! capacity    128 bytes

# Text                                   #  Line  RIP      Bytes  Opcode              
._ZNSsD2Ev:                              #        0xabca0  0      OPC=<label>         
  movl %edi, %edi                        #  1     0xabca0  2      OPC=movl_r32_r32    
  subl $0x18, %esp                       #  2     0xabca2  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                        #  3     0xabca5  3      OPC=addq_r64_r64    
  movl %edi, %edi                        #  4     0xabca8  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %edi               #  5     0xabcaa  4      OPC=movl_r32_m32    
  subl $0xc, %edi                        #  6     0xabcae  3      OPC=subl_r32_imm8   
  cmpl $0x10073580, %edi                 #  7     0xabcb1  6      OPC=cmpl_r32_imm32  
  jne .L_abce0                           #  8     0xabcb7  2      OPC=jne_label       
  nop                                    #  9     0xabcb9  1      OPC=nop             
  nop                                    #  10    0xabcba  1      OPC=nop             
  nop                                    #  11    0xabcbb  1      OPC=nop             
  nop                                    #  12    0xabcbc  1      OPC=nop             
  nop                                    #  13    0xabcbd  1      OPC=nop             
  nop                                    #  14    0xabcbe  1      OPC=nop             
  nop                                    #  15    0xabcbf  1      OPC=nop             
.L_abcc0:                                #        0xabcc0  0      OPC=<label>         
  addl $0x18, %esp                       #  16    0xabcc0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                        #  17    0xabcc3  3      OPC=addq_r64_r64    
  popq %r11                              #  18    0xabcc6  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                #  19    0xabcc8  7      OPC=andl_r32_imm32  
  nop                                    #  20    0xabccf  1      OPC=nop             
  nop                                    #  21    0xabcd0  1      OPC=nop             
  nop                                    #  22    0xabcd1  1      OPC=nop             
  nop                                    #  23    0xabcd2  1      OPC=nop             
  addq %r15, %r11                        #  24    0xabcd3  3      OPC=addq_r64_r64    
  jmpq %r11                              #  25    0xabcd6  3      OPC=jmpq_r64        
  nop                                    #  26    0xabcd9  1      OPC=nop             
  nop                                    #  27    0xabcda  1      OPC=nop             
  nop                                    #  28    0xabcdb  1      OPC=nop             
  nop                                    #  29    0xabcdc  1      OPC=nop             
  nop                                    #  30    0xabcdd  1      OPC=nop             
  nop                                    #  31    0xabcde  1      OPC=nop             
  nop                                    #  32    0xabcdf  1      OPC=nop             
  nop                                    #  33    0xabce0  1      OPC=nop             
  nop                                    #  34    0xabce1  1      OPC=nop             
  nop                                    #  35    0xabce2  1      OPC=nop             
  nop                                    #  36    0xabce3  1      OPC=nop             
  nop                                    #  37    0xabce4  1      OPC=nop             
  nop                                    #  38    0xabce5  1      OPC=nop             
  nop                                    #  39    0xabce6  1      OPC=nop             
.L_abce0:                                #        0xabce7  0      OPC=<label>         
  movl %edi, %edi                        #  40    0xabce7  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax            #  41    0xabce9  5      OPC=movl_r32_m32    
  leal -0x1(%rax), %edx                  #  42    0xabcee  3      OPC=leal_r32_m16    
  testl %eax, %eax                       #  43    0xabcf1  2      OPC=testl_r32_r32   
  movl %edi, %edi                        #  44    0xabcf3  2      OPC=movl_r32_r32    
  movl %edx, 0x8(%r15,%rdi,1)            #  45    0xabcf5  5      OPC=movl_m32_r32    
  jg .L_abcc0                            #  46    0xabcfa  2      OPC=jg_label        
  leal 0xf(%rsp), %esi                   #  47    0xabcfc  4      OPC=leal_r32_m16    
  xchgw %ax, %ax                         #  48    0xabd00  2      OPC=xchgw_ax_r16    
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  49    0xabd02  5      OPC=callq_label     
  jmpq .L_abcc0                          #  50    0xabd07  2      OPC=jmpq_label      
  nop                                    #  51    0xabd09  1      OPC=nop             
  nop                                    #  52    0xabd0a  1      OPC=nop             
  nop                                    #  53    0xabd0b  1      OPC=nop             
  nop                                    #  54    0xabd0c  1      OPC=nop             
  nop                                    #  55    0xabd0d  1      OPC=nop             
  nop                                    #  56    0xabd0e  1      OPC=nop             
  nop                                    #  57    0xabd0f  1      OPC=nop             
  nop                                    #  58    0xabd10  1      OPC=nop             
  nop                                    #  59    0xabd11  1      OPC=nop             
  nop                                    #  60    0xabd12  1      OPC=nop             
  nop                                    #  61    0xabd13  1      OPC=nop             
  nop                                    #  62    0xabd14  1      OPC=nop             
  nop                                    #  63    0xabd15  1      OPC=nop             
  nop                                    #  64    0xabd16  1      OPC=nop             
  nop                                    #  65    0xabd17  1      OPC=nop             
  nop                                    #  66    0xabd18  1      OPC=nop             
  nop                                    #  67    0xabd19  1      OPC=nop             
  nop                                    #  68    0xabd1a  1      OPC=nop             
  nop                                    #  69    0xabd1b  1      OPC=nop             
  nop                                    #  70    0xabd1c  1      OPC=nop             
  nop                                    #  71    0xabd1d  1      OPC=nop             
  nop                                    #  72    0xabd1e  1      OPC=nop             
  nop                                    #  73    0xabd1f  1      OPC=nop             
  nop                                    #  74    0xabd20  1      OPC=nop             
  nop                                    #  75    0xabd21  1      OPC=nop             
  nop                                    #  76    0xabd22  1      OPC=nop             
  nop                                    #  77    0xabd23  1      OPC=nop             
  nop                                    #  78    0xabd24  1      OPC=nop             
  nop                                    #  79    0xabd25  1      OPC=nop             
  nop                                    #  80    0xabd26  1      OPC=nop             
                                                                                      
.size _ZNSsD2Ev, .-_ZNSsD2Ev

