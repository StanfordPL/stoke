  .text
  .globl _ZNKSt10moneypunctIwLb0EE16do_positive_signEv
  .type _ZNKSt10moneypunctIwLb0EE16do_positive_signEv, @function

#! file-offset 0xf6f00
#! rip-offset  0xb6f00
#! capacity    128 bytes

# Text                                               #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb0EE16do_positive_signEv:      #        0xb6f00  0      OPC=<label>         
  pushq %rbx                                         #  1     0xb6f00  1      OPC=pushq_r64_1     
  movl %esi, %esi                                    #  2     0xb6f01  2      OPC=movl_r32_r32    
  movl %edi, %ebx                                    #  3     0xb6f03  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                    #  4     0xb6f05  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                   #  5     0xb6f07  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                    #  6     0xb6f0a  3      OPC=addq_r64_r64    
  movl %esi, %esi                                    #  7     0xb6f0d  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rsi,1), %eax                        #  8     0xb6f0f  5      OPC=movl_r32_m32    
  leal 0xf(%rsp), %edx                               #  9     0xb6f14  4      OPC=leal_r32_m16    
  movl %eax, %eax                                    #  10    0xb6f18  2      OPC=movl_r32_r32    
  movl 0x24(%r15,%rax,1), %esi                       #  11    0xb6f1a  5      OPC=movl_r32_m32    
  nop                                                #  12    0xb6f1f  1      OPC=nop             
  nop                                                #  13    0xb6f20  1      OPC=nop             
  nop                                                #  14    0xb6f21  1      OPC=nop             
  nop                                                #  15    0xb6f22  1      OPC=nop             
  nop                                                #  16    0xb6f23  1      OPC=nop             
  nop                                                #  17    0xb6f24  1      OPC=nop             
  nop                                                #  18    0xb6f25  1      OPC=nop             
  nop                                                #  19    0xb6f26  1      OPC=nop             
  nop                                                #  20    0xb6f27  1      OPC=nop             
  nop                                                #  21    0xb6f28  1      OPC=nop             
  nop                                                #  22    0xb6f29  1      OPC=nop             
  nop                                                #  23    0xb6f2a  1      OPC=nop             
  nop                                                #  24    0xb6f2b  1      OPC=nop             
  nop                                                #  25    0xb6f2c  1      OPC=nop             
  nop                                                #  26    0xb6f2d  1      OPC=nop             
  nop                                                #  27    0xb6f2e  1      OPC=nop             
  nop                                                #  28    0xb6f2f  1      OPC=nop             
  nop                                                #  29    0xb6f30  1      OPC=nop             
  nop                                                #  30    0xb6f31  1      OPC=nop             
  nop                                                #  31    0xb6f32  1      OPC=nop             
  nop                                                #  32    0xb6f33  1      OPC=nop             
  nop                                                #  33    0xb6f34  1      OPC=nop             
  nop                                                #  34    0xb6f35  1      OPC=nop             
  nop                                                #  35    0xb6f36  1      OPC=nop             
  nop                                                #  36    0xb6f37  1      OPC=nop             
  nop                                                #  37    0xb6f38  1      OPC=nop             
  nop                                                #  38    0xb6f39  1      OPC=nop             
  nop                                                #  39    0xb6f3a  1      OPC=nop             
  callq ._ZNSbIwSt11char_traitsIwESaIwEEC1EPKwRKS1_  #  40    0xb6f3b  5      OPC=callq_label     
  movl %ebx, %eax                                    #  41    0xb6f40  2      OPC=movl_r32_r32    
  addl $0x10, %esp                                   #  42    0xb6f42  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                    #  43    0xb6f45  3      OPC=addq_r64_r64    
  popq %rbx                                          #  44    0xb6f48  1      OPC=popq_r64_1      
  popq %r11                                          #  45    0xb6f49  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                            #  46    0xb6f4b  7      OPC=andl_r32_imm32  
  nop                                                #  47    0xb6f52  1      OPC=nop             
  nop                                                #  48    0xb6f53  1      OPC=nop             
  nop                                                #  49    0xb6f54  1      OPC=nop             
  nop                                                #  50    0xb6f55  1      OPC=nop             
  addq %r15, %r11                                    #  51    0xb6f56  3      OPC=addq_r64_r64    
  jmpq %r11                                          #  52    0xb6f59  3      OPC=jmpq_r64        
  nop                                                #  53    0xb6f5c  1      OPC=nop             
  nop                                                #  54    0xb6f5d  1      OPC=nop             
  nop                                                #  55    0xb6f5e  1      OPC=nop             
  nop                                                #  56    0xb6f5f  1      OPC=nop             
  nop                                                #  57    0xb6f60  1      OPC=nop             
  nop                                                #  58    0xb6f61  1      OPC=nop             
  nop                                                #  59    0xb6f62  1      OPC=nop             
  nop                                                #  60    0xb6f63  1      OPC=nop             
  nop                                                #  61    0xb6f64  1      OPC=nop             
  nop                                                #  62    0xb6f65  1      OPC=nop             
  nop                                                #  63    0xb6f66  1      OPC=nop             
  movl %eax, %edi                                    #  64    0xb6f67  2      OPC=movl_r32_r32    
  nop                                                #  65    0xb6f69  1      OPC=nop             
  nop                                                #  66    0xb6f6a  1      OPC=nop             
  nop                                                #  67    0xb6f6b  1      OPC=nop             
  nop                                                #  68    0xb6f6c  1      OPC=nop             
  nop                                                #  69    0xb6f6d  1      OPC=nop             
  nop                                                #  70    0xb6f6e  1      OPC=nop             
  nop                                                #  71    0xb6f6f  1      OPC=nop             
  nop                                                #  72    0xb6f70  1      OPC=nop             
  nop                                                #  73    0xb6f71  1      OPC=nop             
  nop                                                #  74    0xb6f72  1      OPC=nop             
  nop                                                #  75    0xb6f73  1      OPC=nop             
  nop                                                #  76    0xb6f74  1      OPC=nop             
  nop                                                #  77    0xb6f75  1      OPC=nop             
  nop                                                #  78    0xb6f76  1      OPC=nop             
  nop                                                #  79    0xb6f77  1      OPC=nop             
  nop                                                #  80    0xb6f78  1      OPC=nop             
  nop                                                #  81    0xb6f79  1      OPC=nop             
  nop                                                #  82    0xb6f7a  1      OPC=nop             
  nop                                                #  83    0xb6f7b  1      OPC=nop             
  nop                                                #  84    0xb6f7c  1      OPC=nop             
  nop                                                #  85    0xb6f7d  1      OPC=nop             
  nop                                                #  86    0xb6f7e  1      OPC=nop             
  nop                                                #  87    0xb6f7f  1      OPC=nop             
  nop                                                #  88    0xb6f80  1      OPC=nop             
  nop                                                #  89    0xb6f81  1      OPC=nop             
  callq ._Unwind_Resume                              #  90    0xb6f82  5      OPC=callq_label     
                                                                                                  
.size _ZNKSt10moneypunctIwLb0EE16do_positive_signEv, .-_ZNKSt10moneypunctIwLb0EE16do_positive_signEv

