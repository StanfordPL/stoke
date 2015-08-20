  .text
  .globl _ZNSsD2Ev
  .type _ZNSsD2Ev, @function

#! file-offset 0xebfa0
#! rip-offset  0xabfa0
#! capacity    128 bytes

# Text                                   #  Line  RIP      Bytes  Opcode              
._ZNSsD2Ev:                              #        0xabfa0  0      OPC=<label>         
  movl %edi, %edi                        #  1     0xabfa0  2      OPC=movl_r32_r32    
  subl $0x18, %esp                       #  2     0xabfa2  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                        #  3     0xabfa5  3      OPC=addq_r64_r64    
  movl %edi, %edi                        #  4     0xabfa8  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %edi               #  5     0xabfaa  4      OPC=movl_r32_m32    
  subl $0xc, %edi                        #  6     0xabfae  3      OPC=subl_r32_imm8   
  cmpl $0x10073580, %edi                 #  7     0xabfb1  6      OPC=cmpl_r32_imm32  
  jne .L_abfe0                           #  8     0xabfb7  2      OPC=jne_label       
  nop                                    #  9     0xabfb9  1      OPC=nop             
  nop                                    #  10    0xabfba  1      OPC=nop             
  nop                                    #  11    0xabfbb  1      OPC=nop             
  nop                                    #  12    0xabfbc  1      OPC=nop             
  nop                                    #  13    0xabfbd  1      OPC=nop             
  nop                                    #  14    0xabfbe  1      OPC=nop             
  nop                                    #  15    0xabfbf  1      OPC=nop             
.L_abfc0:                                #        0xabfc0  0      OPC=<label>         
  addl $0x18, %esp                       #  16    0xabfc0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                        #  17    0xabfc3  3      OPC=addq_r64_r64    
  popq %r11                              #  18    0xabfc6  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                #  19    0xabfc8  7      OPC=andl_r32_imm32  
  nop                                    #  20    0xabfcf  1      OPC=nop             
  nop                                    #  21    0xabfd0  1      OPC=nop             
  nop                                    #  22    0xabfd1  1      OPC=nop             
  nop                                    #  23    0xabfd2  1      OPC=nop             
  addq %r15, %r11                        #  24    0xabfd3  3      OPC=addq_r64_r64    
  jmpq %r11                              #  25    0xabfd6  3      OPC=jmpq_r64        
  nop                                    #  26    0xabfd9  1      OPC=nop             
  nop                                    #  27    0xabfda  1      OPC=nop             
  nop                                    #  28    0xabfdb  1      OPC=nop             
  nop                                    #  29    0xabfdc  1      OPC=nop             
  nop                                    #  30    0xabfdd  1      OPC=nop             
  nop                                    #  31    0xabfde  1      OPC=nop             
  nop                                    #  32    0xabfdf  1      OPC=nop             
  nop                                    #  33    0xabfe0  1      OPC=nop             
  nop                                    #  34    0xabfe1  1      OPC=nop             
  nop                                    #  35    0xabfe2  1      OPC=nop             
  nop                                    #  36    0xabfe3  1      OPC=nop             
  nop                                    #  37    0xabfe4  1      OPC=nop             
  nop                                    #  38    0xabfe5  1      OPC=nop             
  nop                                    #  39    0xabfe6  1      OPC=nop             
.L_abfe0:                                #        0xabfe7  0      OPC=<label>         
  movl %edi, %edi                        #  40    0xabfe7  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax            #  41    0xabfe9  5      OPC=movl_r32_m32    
  leal -0x1(%rax), %edx                  #  42    0xabfee  3      OPC=leal_r32_m16    
  testl %eax, %eax                       #  43    0xabff1  2      OPC=testl_r32_r32   
  movl %edi, %edi                        #  44    0xabff3  2      OPC=movl_r32_r32    
  movl %edx, 0x8(%r15,%rdi,1)            #  45    0xabff5  5      OPC=movl_m32_r32    
  jg .L_abfc0                            #  46    0xabffa  2      OPC=jg_label        
  leal 0xf(%rsp), %esi                   #  47    0xabffc  4      OPC=leal_r32_m16    
  xchgw %ax, %ax                         #  48    0xac000  2      OPC=xchgw_ax_r16    
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  49    0xac002  5      OPC=callq_label     
  jmpq .L_abfc0                          #  50    0xac007  2      OPC=jmpq_label      
  nop                                    #  51    0xac009  1      OPC=nop             
  nop                                    #  52    0xac00a  1      OPC=nop             
  nop                                    #  53    0xac00b  1      OPC=nop             
  nop                                    #  54    0xac00c  1      OPC=nop             
  nop                                    #  55    0xac00d  1      OPC=nop             
  nop                                    #  56    0xac00e  1      OPC=nop             
  nop                                    #  57    0xac00f  1      OPC=nop             
  nop                                    #  58    0xac010  1      OPC=nop             
  nop                                    #  59    0xac011  1      OPC=nop             
  nop                                    #  60    0xac012  1      OPC=nop             
  nop                                    #  61    0xac013  1      OPC=nop             
  nop                                    #  62    0xac014  1      OPC=nop             
  nop                                    #  63    0xac015  1      OPC=nop             
  nop                                    #  64    0xac016  1      OPC=nop             
  nop                                    #  65    0xac017  1      OPC=nop             
  nop                                    #  66    0xac018  1      OPC=nop             
  nop                                    #  67    0xac019  1      OPC=nop             
  nop                                    #  68    0xac01a  1      OPC=nop             
  nop                                    #  69    0xac01b  1      OPC=nop             
  nop                                    #  70    0xac01c  1      OPC=nop             
  nop                                    #  71    0xac01d  1      OPC=nop             
  nop                                    #  72    0xac01e  1      OPC=nop             
  nop                                    #  73    0xac01f  1      OPC=nop             
  nop                                    #  74    0xac020  1      OPC=nop             
  nop                                    #  75    0xac021  1      OPC=nop             
  nop                                    #  76    0xac022  1      OPC=nop             
  nop                                    #  77    0xac023  1      OPC=nop             
  nop                                    #  78    0xac024  1      OPC=nop             
  nop                                    #  79    0xac025  1      OPC=nop             
  nop                                    #  80    0xac026  1      OPC=nop             
                                                                                      
.size _ZNSsD2Ev, .-_ZNSsD2Ev

