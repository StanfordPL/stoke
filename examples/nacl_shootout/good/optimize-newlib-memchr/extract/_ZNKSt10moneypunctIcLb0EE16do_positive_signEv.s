  .text
  .globl _ZNKSt10moneypunctIcLb0EE16do_positive_signEv
  .type _ZNKSt10moneypunctIcLb0EE16do_positive_signEv, @function

#! file-offset 0xbec00
#! rip-offset  0x7ec00
#! capacity    128 bytes

# Text                                           #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIcLb0EE16do_positive_signEv:  #        0x7ec00  0      OPC=<label>         
  pushq %rbx                                     #  1     0x7ec00  1      OPC=pushq_r64_1     
  movl %esi, %esi                                #  2     0x7ec01  2      OPC=movl_r32_r32    
  movl %edi, %ebx                                #  3     0x7ec03  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                #  4     0x7ec05  2      OPC=movl_r32_r32    
  subl $0x10, %esp                               #  5     0x7ec07  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                #  6     0x7ec0a  3      OPC=addq_r64_r64    
  movl %esi, %esi                                #  7     0x7ec0d  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rsi,1), %eax                    #  8     0x7ec0f  5      OPC=movl_r32_m32    
  leal 0xf(%rsp), %edx                           #  9     0x7ec14  4      OPC=leal_r32_m16    
  movl %eax, %eax                                #  10    0x7ec18  2      OPC=movl_r32_r32    
  movl 0x1c(%r15,%rax,1), %esi                   #  11    0x7ec1a  5      OPC=movl_r32_m32    
  nop                                            #  12    0x7ec1f  1      OPC=nop             
  nop                                            #  13    0x7ec20  1      OPC=nop             
  nop                                            #  14    0x7ec21  1      OPC=nop             
  nop                                            #  15    0x7ec22  1      OPC=nop             
  nop                                            #  16    0x7ec23  1      OPC=nop             
  nop                                            #  17    0x7ec24  1      OPC=nop             
  nop                                            #  18    0x7ec25  1      OPC=nop             
  nop                                            #  19    0x7ec26  1      OPC=nop             
  nop                                            #  20    0x7ec27  1      OPC=nop             
  nop                                            #  21    0x7ec28  1      OPC=nop             
  nop                                            #  22    0x7ec29  1      OPC=nop             
  nop                                            #  23    0x7ec2a  1      OPC=nop             
  nop                                            #  24    0x7ec2b  1      OPC=nop             
  nop                                            #  25    0x7ec2c  1      OPC=nop             
  nop                                            #  26    0x7ec2d  1      OPC=nop             
  nop                                            #  27    0x7ec2e  1      OPC=nop             
  nop                                            #  28    0x7ec2f  1      OPC=nop             
  nop                                            #  29    0x7ec30  1      OPC=nop             
  nop                                            #  30    0x7ec31  1      OPC=nop             
  nop                                            #  31    0x7ec32  1      OPC=nop             
  nop                                            #  32    0x7ec33  1      OPC=nop             
  nop                                            #  33    0x7ec34  1      OPC=nop             
  nop                                            #  34    0x7ec35  1      OPC=nop             
  nop                                            #  35    0x7ec36  1      OPC=nop             
  nop                                            #  36    0x7ec37  1      OPC=nop             
  nop                                            #  37    0x7ec38  1      OPC=nop             
  nop                                            #  38    0x7ec39  1      OPC=nop             
  nop                                            #  39    0x7ec3a  1      OPC=nop             
  callq ._ZNSsC1EPKcRKSaIcE                      #  40    0x7ec3b  5      OPC=callq_label     
  movl %ebx, %eax                                #  41    0x7ec40  2      OPC=movl_r32_r32    
  addl $0x10, %esp                               #  42    0x7ec42  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                #  43    0x7ec45  3      OPC=addq_r64_r64    
  popq %rbx                                      #  44    0x7ec48  1      OPC=popq_r64_1      
  popq %r11                                      #  45    0x7ec49  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                        #  46    0x7ec4b  7      OPC=andl_r32_imm32  
  nop                                            #  47    0x7ec52  1      OPC=nop             
  nop                                            #  48    0x7ec53  1      OPC=nop             
  nop                                            #  49    0x7ec54  1      OPC=nop             
  nop                                            #  50    0x7ec55  1      OPC=nop             
  addq %r15, %r11                                #  51    0x7ec56  3      OPC=addq_r64_r64    
  jmpq %r11                                      #  52    0x7ec59  3      OPC=jmpq_r64        
  nop                                            #  53    0x7ec5c  1      OPC=nop             
  nop                                            #  54    0x7ec5d  1      OPC=nop             
  nop                                            #  55    0x7ec5e  1      OPC=nop             
  nop                                            #  56    0x7ec5f  1      OPC=nop             
  nop                                            #  57    0x7ec60  1      OPC=nop             
  nop                                            #  58    0x7ec61  1      OPC=nop             
  nop                                            #  59    0x7ec62  1      OPC=nop             
  nop                                            #  60    0x7ec63  1      OPC=nop             
  nop                                            #  61    0x7ec64  1      OPC=nop             
  nop                                            #  62    0x7ec65  1      OPC=nop             
  nop                                            #  63    0x7ec66  1      OPC=nop             
  movl %eax, %edi                                #  64    0x7ec67  2      OPC=movl_r32_r32    
  nop                                            #  65    0x7ec69  1      OPC=nop             
  nop                                            #  66    0x7ec6a  1      OPC=nop             
  nop                                            #  67    0x7ec6b  1      OPC=nop             
  nop                                            #  68    0x7ec6c  1      OPC=nop             
  nop                                            #  69    0x7ec6d  1      OPC=nop             
  nop                                            #  70    0x7ec6e  1      OPC=nop             
  nop                                            #  71    0x7ec6f  1      OPC=nop             
  nop                                            #  72    0x7ec70  1      OPC=nop             
  nop                                            #  73    0x7ec71  1      OPC=nop             
  nop                                            #  74    0x7ec72  1      OPC=nop             
  nop                                            #  75    0x7ec73  1      OPC=nop             
  nop                                            #  76    0x7ec74  1      OPC=nop             
  nop                                            #  77    0x7ec75  1      OPC=nop             
  nop                                            #  78    0x7ec76  1      OPC=nop             
  nop                                            #  79    0x7ec77  1      OPC=nop             
  nop                                            #  80    0x7ec78  1      OPC=nop             
  nop                                            #  81    0x7ec79  1      OPC=nop             
  nop                                            #  82    0x7ec7a  1      OPC=nop             
  nop                                            #  83    0x7ec7b  1      OPC=nop             
  nop                                            #  84    0x7ec7c  1      OPC=nop             
  nop                                            #  85    0x7ec7d  1      OPC=nop             
  nop                                            #  86    0x7ec7e  1      OPC=nop             
  nop                                            #  87    0x7ec7f  1      OPC=nop             
  nop                                            #  88    0x7ec80  1      OPC=nop             
  nop                                            #  89    0x7ec81  1      OPC=nop             
  callq ._Unwind_Resume                          #  90    0x7ec82  5      OPC=callq_label     
                                                                                              
.size _ZNKSt10moneypunctIcLb0EE16do_positive_signEv, .-_ZNKSt10moneypunctIcLb0EE16do_positive_signEv

