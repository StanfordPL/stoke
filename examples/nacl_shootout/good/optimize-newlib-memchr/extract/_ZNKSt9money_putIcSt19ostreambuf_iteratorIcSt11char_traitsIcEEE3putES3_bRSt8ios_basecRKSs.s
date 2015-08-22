  .text
  .globl _ZNKSt9money_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_bRSt8ios_basecRKSs
  .type _ZNKSt9money_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_bRSt8ios_basecRKSs, @function

#! file-offset 0xb7f20
#! rip-offset  0x77f20
#! capacity    96 bytes

# Text                                                                                       #  Line  RIP      Bytes  Opcode              
._ZNKSt9money_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_bRSt8ios_basecRKSs:  #        0x77f20  0      OPC=<label>         
  movl %edi, %edi                                                                            #  1     0x77f20  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                                            #  2     0x77f22  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                            #  3     0x77f25  3      OPC=addq_r64_r64    
  movl %ecx, %ecx                                                                            #  4     0x77f28  2      OPC=movl_r32_r32    
  movl %edi, %edi                                                                            #  5     0x77f2a  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                                   #  6     0x77f2c  4      OPC=movl_r32_m32    
  movzbl %dl, %edx                                                                           #  7     0x77f30  3      OPC=movzbl_r32_r8   
  movsbl %r8b, %r8d                                                                          #  8     0x77f33  4      OPC=movsbl_r32_r8   
  movl %eax, %eax                                                                            #  9     0x77f37  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rax,1), %eax                                                                #  10    0x77f39  5      OPC=movl_r32_m32    
  xchgw %ax, %ax                                                                             #  11    0x77f3e  2      OPC=xchgw_ax_r16    
  nop                                                                                        #  12    0x77f40  1      OPC=nop             
  nop                                                                                        #  13    0x77f41  1      OPC=nop             
  nop                                                                                        #  14    0x77f42  1      OPC=nop             
  nop                                                                                        #  15    0x77f43  1      OPC=nop             
  nop                                                                                        #  16    0x77f44  1      OPC=nop             
  nop                                                                                        #  17    0x77f45  1      OPC=nop             
  nop                                                                                        #  18    0x77f46  1      OPC=nop             
  nop                                                                                        #  19    0x77f47  1      OPC=nop             
  nop                                                                                        #  20    0x77f48  1      OPC=nop             
  nop                                                                                        #  21    0x77f49  1      OPC=nop             
  nop                                                                                        #  22    0x77f4a  1      OPC=nop             
  nop                                                                                        #  23    0x77f4b  1      OPC=nop             
  nop                                                                                        #  24    0x77f4c  1      OPC=nop             
  nop                                                                                        #  25    0x77f4d  1      OPC=nop             
  nop                                                                                        #  26    0x77f4e  1      OPC=nop             
  nop                                                                                        #  27    0x77f4f  1      OPC=nop             
  nop                                                                                        #  28    0x77f50  1      OPC=nop             
  nop                                                                                        #  29    0x77f51  1      OPC=nop             
  nop                                                                                        #  30    0x77f52  1      OPC=nop             
  nop                                                                                        #  31    0x77f53  1      OPC=nop             
  nop                                                                                        #  32    0x77f54  1      OPC=nop             
  nop                                                                                        #  33    0x77f55  1      OPC=nop             
  nop                                                                                        #  34    0x77f56  1      OPC=nop             
  nop                                                                                        #  35    0x77f57  1      OPC=nop             
  andl $0xffffffe0, %eax                                                                     #  36    0x77f58  6      OPC=andl_r32_imm32  
  nop                                                                                        #  37    0x77f5e  1      OPC=nop             
  nop                                                                                        #  38    0x77f5f  1      OPC=nop             
  nop                                                                                        #  39    0x77f60  1      OPC=nop             
  addq %r15, %rax                                                                            #  40    0x77f61  3      OPC=addq_r64_r64    
  callq %rax                                                                                 #  41    0x77f64  2      OPC=callq_r64       
  addl $0x8, %esp                                                                            #  42    0x77f66  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                            #  43    0x77f69  3      OPC=addq_r64_r64    
  popq %r11                                                                                  #  44    0x77f6c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                                    #  45    0x77f6e  7      OPC=andl_r32_imm32  
  nop                                                                                        #  46    0x77f75  1      OPC=nop             
  nop                                                                                        #  47    0x77f76  1      OPC=nop             
  nop                                                                                        #  48    0x77f77  1      OPC=nop             
  nop                                                                                        #  49    0x77f78  1      OPC=nop             
  addq %r15, %r11                                                                            #  50    0x77f79  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                  #  51    0x77f7c  3      OPC=jmpq_r64        
  nop                                                                                        #  52    0x77f7f  1      OPC=nop             
  nop                                                                                        #  53    0x77f80  1      OPC=nop             
  nop                                                                                        #  54    0x77f81  1      OPC=nop             
  nop                                                                                        #  55    0x77f82  1      OPC=nop             
  nop                                                                                        #  56    0x77f83  1      OPC=nop             
  nop                                                                                        #  57    0x77f84  1      OPC=nop             
  nop                                                                                        #  58    0x77f85  1      OPC=nop             
  nop                                                                                        #  59    0x77f86  1      OPC=nop             
  nop                                                                                        #  60    0x77f87  1      OPC=nop             
  nop                                                                                        #  61    0x77f88  1      OPC=nop             
  nop                                                                                        #  62    0x77f89  1      OPC=nop             
  nop                                                                                        #  63    0x77f8a  1      OPC=nop             
  nop                                                                                        #  64    0x77f8b  1      OPC=nop             
  nop                                                                                        #  65    0x77f8c  1      OPC=nop             
                                                                                                                                          
.size _ZNKSt9money_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_bRSt8ios_basecRKSs, .-_ZNKSt9money_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_bRSt8ios_basecRKSs

