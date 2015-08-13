  .text
  .globl _ZNKSt9money_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_bRSt8ios_basecRKSs
  .type _ZNKSt9money_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_bRSt8ios_basecRKSs, @function

#! file-offset 0xb7500
#! rip-offset  0x77500
#! capacity    96 bytes

# Text                                                                                       #  Line  RIP      Bytes  Opcode              
._ZNKSt9money_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_bRSt8ios_basecRKSs:  #        0x77500  0      OPC=<label>         
  movl %edi, %edi                                                                            #  1     0x77500  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                                            #  2     0x77502  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                            #  3     0x77505  3      OPC=addq_r64_r64    
  movl %ecx, %ecx                                                                            #  4     0x77508  2      OPC=movl_r32_r32    
  movl %edi, %edi                                                                            #  5     0x7750a  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                                   #  6     0x7750c  4      OPC=movl_r32_m32    
  movzbl %dl, %edx                                                                           #  7     0x77510  3      OPC=movzbl_r32_r8   
  movsbl %r8b, %r8d                                                                          #  8     0x77513  4      OPC=movsbl_r32_r8   
  movl %eax, %eax                                                                            #  9     0x77517  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rax,1), %eax                                                                #  10    0x77519  5      OPC=movl_r32_m32    
  xchgw %ax, %ax                                                                             #  11    0x7751e  2      OPC=xchgw_ax_r16    
  nop                                                                                        #  12    0x77520  1      OPC=nop             
  nop                                                                                        #  13    0x77521  1      OPC=nop             
  nop                                                                                        #  14    0x77522  1      OPC=nop             
  nop                                                                                        #  15    0x77523  1      OPC=nop             
  nop                                                                                        #  16    0x77524  1      OPC=nop             
  nop                                                                                        #  17    0x77525  1      OPC=nop             
  nop                                                                                        #  18    0x77526  1      OPC=nop             
  nop                                                                                        #  19    0x77527  1      OPC=nop             
  nop                                                                                        #  20    0x77528  1      OPC=nop             
  nop                                                                                        #  21    0x77529  1      OPC=nop             
  nop                                                                                        #  22    0x7752a  1      OPC=nop             
  nop                                                                                        #  23    0x7752b  1      OPC=nop             
  nop                                                                                        #  24    0x7752c  1      OPC=nop             
  nop                                                                                        #  25    0x7752d  1      OPC=nop             
  nop                                                                                        #  26    0x7752e  1      OPC=nop             
  nop                                                                                        #  27    0x7752f  1      OPC=nop             
  nop                                                                                        #  28    0x77530  1      OPC=nop             
  nop                                                                                        #  29    0x77531  1      OPC=nop             
  nop                                                                                        #  30    0x77532  1      OPC=nop             
  nop                                                                                        #  31    0x77533  1      OPC=nop             
  nop                                                                                        #  32    0x77534  1      OPC=nop             
  nop                                                                                        #  33    0x77535  1      OPC=nop             
  nop                                                                                        #  34    0x77536  1      OPC=nop             
  nop                                                                                        #  35    0x77537  1      OPC=nop             
  andl $0xffffffe0, %eax                                                                     #  36    0x77538  6      OPC=andl_r32_imm32  
  nop                                                                                        #  37    0x7753e  1      OPC=nop             
  nop                                                                                        #  38    0x7753f  1      OPC=nop             
  nop                                                                                        #  39    0x77540  1      OPC=nop             
  addq %r15, %rax                                                                            #  40    0x77541  3      OPC=addq_r64_r64    
  callq %rax                                                                                 #  41    0x77544  2      OPC=callq_r64       
  addl $0x8, %esp                                                                            #  42    0x77546  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                            #  43    0x77549  3      OPC=addq_r64_r64    
  popq %r11                                                                                  #  44    0x7754c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                                    #  45    0x7754e  7      OPC=andl_r32_imm32  
  nop                                                                                        #  46    0x77555  1      OPC=nop             
  nop                                                                                        #  47    0x77556  1      OPC=nop             
  nop                                                                                        #  48    0x77557  1      OPC=nop             
  nop                                                                                        #  49    0x77558  1      OPC=nop             
  addq %r15, %r11                                                                            #  50    0x77559  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                  #  51    0x7755c  3      OPC=jmpq_r64        
  nop                                                                                        #  52    0x7755f  1      OPC=nop             
  nop                                                                                        #  53    0x77560  1      OPC=nop             
  nop                                                                                        #  54    0x77561  1      OPC=nop             
  nop                                                                                        #  55    0x77562  1      OPC=nop             
  nop                                                                                        #  56    0x77563  1      OPC=nop             
  nop                                                                                        #  57    0x77564  1      OPC=nop             
  nop                                                                                        #  58    0x77565  1      OPC=nop             
  nop                                                                                        #  59    0x77566  1      OPC=nop             
  nop                                                                                        #  60    0x77567  1      OPC=nop             
  nop                                                                                        #  61    0x77568  1      OPC=nop             
  nop                                                                                        #  62    0x77569  1      OPC=nop             
  nop                                                                                        #  63    0x7756a  1      OPC=nop             
  nop                                                                                        #  64    0x7756b  1      OPC=nop             
  nop                                                                                        #  65    0x7756c  1      OPC=nop             
                                                                                                                                          
.size _ZNKSt9money_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_bRSt8ios_basecRKSs, .-_ZNKSt9money_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_bRSt8ios_basecRKSs

