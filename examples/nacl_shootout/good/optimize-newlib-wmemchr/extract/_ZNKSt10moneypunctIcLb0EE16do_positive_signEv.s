  .text
  .globl _ZNKSt10moneypunctIcLb0EE16do_positive_signEv
  .type _ZNKSt10moneypunctIcLb0EE16do_positive_signEv, @function

#! file-offset 0xbe4e0
#! rip-offset  0x7e4e0
#! capacity    128 bytes

# Text                                           #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIcLb0EE16do_positive_signEv:  #        0x7e4e0  0      OPC=<label>         
  pushq %rbx                                     #  1     0x7e4e0  1      OPC=pushq_r64_1     
  movl %esi, %esi                                #  2     0x7e4e1  2      OPC=movl_r32_r32    
  movl %edi, %ebx                                #  3     0x7e4e3  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                #  4     0x7e4e5  2      OPC=movl_r32_r32    
  subl $0x10, %esp                               #  5     0x7e4e7  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                #  6     0x7e4ea  3      OPC=addq_r64_r64    
  movl %esi, %esi                                #  7     0x7e4ed  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rsi,1), %eax                    #  8     0x7e4ef  5      OPC=movl_r32_m32    
  leal 0xf(%rsp), %edx                           #  9     0x7e4f4  4      OPC=leal_r32_m16    
  movl %eax, %eax                                #  10    0x7e4f8  2      OPC=movl_r32_r32    
  movl 0x1c(%r15,%rax,1), %esi                   #  11    0x7e4fa  5      OPC=movl_r32_m32    
  nop                                            #  12    0x7e4ff  1      OPC=nop             
  nop                                            #  13    0x7e500  1      OPC=nop             
  nop                                            #  14    0x7e501  1      OPC=nop             
  nop                                            #  15    0x7e502  1      OPC=nop             
  nop                                            #  16    0x7e503  1      OPC=nop             
  nop                                            #  17    0x7e504  1      OPC=nop             
  nop                                            #  18    0x7e505  1      OPC=nop             
  nop                                            #  19    0x7e506  1      OPC=nop             
  nop                                            #  20    0x7e507  1      OPC=nop             
  nop                                            #  21    0x7e508  1      OPC=nop             
  nop                                            #  22    0x7e509  1      OPC=nop             
  nop                                            #  23    0x7e50a  1      OPC=nop             
  nop                                            #  24    0x7e50b  1      OPC=nop             
  nop                                            #  25    0x7e50c  1      OPC=nop             
  nop                                            #  26    0x7e50d  1      OPC=nop             
  nop                                            #  27    0x7e50e  1      OPC=nop             
  nop                                            #  28    0x7e50f  1      OPC=nop             
  nop                                            #  29    0x7e510  1      OPC=nop             
  nop                                            #  30    0x7e511  1      OPC=nop             
  nop                                            #  31    0x7e512  1      OPC=nop             
  nop                                            #  32    0x7e513  1      OPC=nop             
  nop                                            #  33    0x7e514  1      OPC=nop             
  nop                                            #  34    0x7e515  1      OPC=nop             
  nop                                            #  35    0x7e516  1      OPC=nop             
  nop                                            #  36    0x7e517  1      OPC=nop             
  nop                                            #  37    0x7e518  1      OPC=nop             
  nop                                            #  38    0x7e519  1      OPC=nop             
  nop                                            #  39    0x7e51a  1      OPC=nop             
  callq ._ZNSsC1EPKcRKSaIcE                      #  40    0x7e51b  5      OPC=callq_label     
  movl %ebx, %eax                                #  41    0x7e520  2      OPC=movl_r32_r32    
  addl $0x10, %esp                               #  42    0x7e522  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                #  43    0x7e525  3      OPC=addq_r64_r64    
  popq %rbx                                      #  44    0x7e528  1      OPC=popq_r64_1      
  popq %r11                                      #  45    0x7e529  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                        #  46    0x7e52b  7      OPC=andl_r32_imm32  
  nop                                            #  47    0x7e532  1      OPC=nop             
  nop                                            #  48    0x7e533  1      OPC=nop             
  nop                                            #  49    0x7e534  1      OPC=nop             
  nop                                            #  50    0x7e535  1      OPC=nop             
  addq %r15, %r11                                #  51    0x7e536  3      OPC=addq_r64_r64    
  jmpq %r11                                      #  52    0x7e539  3      OPC=jmpq_r64        
  nop                                            #  53    0x7e53c  1      OPC=nop             
  nop                                            #  54    0x7e53d  1      OPC=nop             
  nop                                            #  55    0x7e53e  1      OPC=nop             
  nop                                            #  56    0x7e53f  1      OPC=nop             
  nop                                            #  57    0x7e540  1      OPC=nop             
  nop                                            #  58    0x7e541  1      OPC=nop             
  nop                                            #  59    0x7e542  1      OPC=nop             
  nop                                            #  60    0x7e543  1      OPC=nop             
  nop                                            #  61    0x7e544  1      OPC=nop             
  nop                                            #  62    0x7e545  1      OPC=nop             
  nop                                            #  63    0x7e546  1      OPC=nop             
  movl %eax, %edi                                #  64    0x7e547  2      OPC=movl_r32_r32    
  nop                                            #  65    0x7e549  1      OPC=nop             
  nop                                            #  66    0x7e54a  1      OPC=nop             
  nop                                            #  67    0x7e54b  1      OPC=nop             
  nop                                            #  68    0x7e54c  1      OPC=nop             
  nop                                            #  69    0x7e54d  1      OPC=nop             
  nop                                            #  70    0x7e54e  1      OPC=nop             
  nop                                            #  71    0x7e54f  1      OPC=nop             
  nop                                            #  72    0x7e550  1      OPC=nop             
  nop                                            #  73    0x7e551  1      OPC=nop             
  nop                                            #  74    0x7e552  1      OPC=nop             
  nop                                            #  75    0x7e553  1      OPC=nop             
  nop                                            #  76    0x7e554  1      OPC=nop             
  nop                                            #  77    0x7e555  1      OPC=nop             
  nop                                            #  78    0x7e556  1      OPC=nop             
  nop                                            #  79    0x7e557  1      OPC=nop             
  nop                                            #  80    0x7e558  1      OPC=nop             
  nop                                            #  81    0x7e559  1      OPC=nop             
  nop                                            #  82    0x7e55a  1      OPC=nop             
  nop                                            #  83    0x7e55b  1      OPC=nop             
  nop                                            #  84    0x7e55c  1      OPC=nop             
  nop                                            #  85    0x7e55d  1      OPC=nop             
  nop                                            #  86    0x7e55e  1      OPC=nop             
  nop                                            #  87    0x7e55f  1      OPC=nop             
  nop                                            #  88    0x7e560  1      OPC=nop             
  nop                                            #  89    0x7e561  1      OPC=nop             
  callq ._Unwind_Resume                          #  90    0x7e562  5      OPC=callq_label     
                                                                                              
.size _ZNKSt10moneypunctIcLb0EE16do_positive_signEv, .-_ZNKSt10moneypunctIcLb0EE16do_positive_signEv

