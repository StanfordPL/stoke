  .text
  .globl __cxa_call_terminate
  .type __cxa_call_terminate, @function

#! file-offset 0x1216c0
#! rip-offset  0xe16c0
#! capacity    128 bytes

# Text                                       #  Line  RIP      Bytes  Opcode              
.__cxa_call_terminate:                       #        0xe16c0  0      OPC=<label>         
  pushq %rbx                                 #  1     0xe16c0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                            #  2     0xe16c1  2      OPC=movl_r32_r32    
  testq %rbx, %rbx                           #  3     0xe16c3  3      OPC=testq_r64_r64   
  je .L_e1700                                #  4     0xe16c6  2      OPC=je_label        
  movl %ebx, %edi                            #  5     0xe16c8  2      OPC=movl_r32_r32    
  xchgw %ax, %ax                             #  6     0xe16ca  2      OPC=xchgw_ax_r16    
  nop                                        #  7     0xe16cc  1      OPC=nop             
  nop                                        #  8     0xe16cd  1      OPC=nop             
  nop                                        #  9     0xe16ce  1      OPC=nop             
  nop                                        #  10    0xe16cf  1      OPC=nop             
  nop                                        #  11    0xe16d0  1      OPC=nop             
  nop                                        #  12    0xe16d1  1      OPC=nop             
  nop                                        #  13    0xe16d2  1      OPC=nop             
  nop                                        #  14    0xe16d3  1      OPC=nop             
  nop                                        #  15    0xe16d4  1      OPC=nop             
  nop                                        #  16    0xe16d5  1      OPC=nop             
  nop                                        #  17    0xe16d6  1      OPC=nop             
  nop                                        #  18    0xe16d7  1      OPC=nop             
  nop                                        #  19    0xe16d8  1      OPC=nop             
  nop                                        #  20    0xe16d9  1      OPC=nop             
  nop                                        #  21    0xe16da  1      OPC=nop             
  callq .__cxa_begin_catch                   #  22    0xe16db  5      OPC=callq_label     
  movq $0xb8b1aabcbcd4d500, %rax             #  23    0xe16e0  10     OPC=movq_r64_imm64  
  movl %ebx, %ebx                            #  24    0xe16ea  2      OPC=movl_r32_r32    
  addq (%r15,%rbx,1), %rax                   #  25    0xe16ec  4      OPC=addq_r64_m64    
  cmpq $0x1, %rax                            #  26    0xe16f0  4      OPC=cmpq_r64_imm8   
  jbe .L_e1720                               #  27    0xe16f4  2      OPC=jbe_label       
  nop                                        #  28    0xe16f6  1      OPC=nop             
  nop                                        #  29    0xe16f7  1      OPC=nop             
  nop                                        #  30    0xe16f8  1      OPC=nop             
  nop                                        #  31    0xe16f9  1      OPC=nop             
  nop                                        #  32    0xe16fa  1      OPC=nop             
  nop                                        #  33    0xe16fb  1      OPC=nop             
  nop                                        #  34    0xe16fc  1      OPC=nop             
  nop                                        #  35    0xe16fd  1      OPC=nop             
  nop                                        #  36    0xe16fe  1      OPC=nop             
  nop                                        #  37    0xe16ff  1      OPC=nop             
.L_e1700:                                    #        0xe1700  0      OPC=<label>         
  nop                                        #  38    0xe1700  1      OPC=nop             
  nop                                        #  39    0xe1701  1      OPC=nop             
  nop                                        #  40    0xe1702  1      OPC=nop             
  nop                                        #  41    0xe1703  1      OPC=nop             
  nop                                        #  42    0xe1704  1      OPC=nop             
  nop                                        #  43    0xe1705  1      OPC=nop             
  nop                                        #  44    0xe1706  1      OPC=nop             
  nop                                        #  45    0xe1707  1      OPC=nop             
  nop                                        #  46    0xe1708  1      OPC=nop             
  nop                                        #  47    0xe1709  1      OPC=nop             
  nop                                        #  48    0xe170a  1      OPC=nop             
  nop                                        #  49    0xe170b  1      OPC=nop             
  nop                                        #  50    0xe170c  1      OPC=nop             
  nop                                        #  51    0xe170d  1      OPC=nop             
  nop                                        #  52    0xe170e  1      OPC=nop             
  nop                                        #  53    0xe170f  1      OPC=nop             
  nop                                        #  54    0xe1710  1      OPC=nop             
  nop                                        #  55    0xe1711  1      OPC=nop             
  nop                                        #  56    0xe1712  1      OPC=nop             
  nop                                        #  57    0xe1713  1      OPC=nop             
  nop                                        #  58    0xe1714  1      OPC=nop             
  nop                                        #  59    0xe1715  1      OPC=nop             
  nop                                        #  60    0xe1716  1      OPC=nop             
  nop                                        #  61    0xe1717  1      OPC=nop             
  nop                                        #  62    0xe1718  1      OPC=nop             
  nop                                        #  63    0xe1719  1      OPC=nop             
  nop                                        #  64    0xe171a  1      OPC=nop             
  callq ._ZSt9terminatev                     #  65    0xe171b  5      OPC=callq_label     
.L_e1720:                                    #        0xe1720  0      OPC=<label>         
  subl $0x30, %ebx                           #  66    0xe1720  3      OPC=subl_r32_imm8   
  movl %ebx, %ebx                            #  67    0xe1723  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rbx,1), %edi                #  68    0xe1725  5      OPC=movl_r32_m32    
  xchgw %ax, %ax                             #  69    0xe172a  2      OPC=xchgw_ax_r16    
  nop                                        #  70    0xe172c  1      OPC=nop             
  nop                                        #  71    0xe172d  1      OPC=nop             
  nop                                        #  72    0xe172e  1      OPC=nop             
  nop                                        #  73    0xe172f  1      OPC=nop             
  nop                                        #  74    0xe1730  1      OPC=nop             
  nop                                        #  75    0xe1731  1      OPC=nop             
  nop                                        #  76    0xe1732  1      OPC=nop             
  nop                                        #  77    0xe1733  1      OPC=nop             
  nop                                        #  78    0xe1734  1      OPC=nop             
  nop                                        #  79    0xe1735  1      OPC=nop             
  nop                                        #  80    0xe1736  1      OPC=nop             
  nop                                        #  81    0xe1737  1      OPC=nop             
  nop                                        #  82    0xe1738  1      OPC=nop             
  nop                                        #  83    0xe1739  1      OPC=nop             
  nop                                        #  84    0xe173a  1      OPC=nop             
  callq ._ZN10__cxxabiv111__terminateEPFvvE  #  85    0xe173b  5      OPC=callq_label     
                                                                                          
.size __cxa_call_terminate, .-__cxa_call_terminate

