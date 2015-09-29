  .text
  .globl _ZNKSt5ctypeIcE10do_tolowerEPcPKc
  .type _ZNKSt5ctypeIcE10do_tolowerEPcPKc, @function

#! file-offset 0x1255c0
#! rip-offset  0xe55c0
#! capacity    128 bytes

# Text                               #  Line  RIP      Bytes  Opcode              
._ZNKSt5ctypeIcE10do_tolowerEPcPKc:  #        0xe55c0  0      OPC=<label>         
  pushq %r13                         #  1     0xe55c0  2      OPC=pushq_r64_1     
  movl %edx, %r13d                   #  2     0xe55c2  3      OPC=movl_r32_r32    
  pushq %r12                         #  3     0xe55c5  2      OPC=pushq_r64_1     
  movl %edi, %r12d                   #  4     0xe55c7  3      OPC=movl_r32_r32    
  pushq %rbx                         #  5     0xe55ca  1      OPC=pushq_r64_1     
  movl %esi, %ebx                    #  6     0xe55cb  2      OPC=movl_r32_r32    
  cmpl %r13d, %ebx                   #  7     0xe55cd  3      OPC=cmpl_r32_r32    
  jae .L_e5620                       #  8     0xe55d0  2      OPC=jae_label       
  nop                                #  9     0xe55d2  1      OPC=nop             
  nop                                #  10    0xe55d3  1      OPC=nop             
  nop                                #  11    0xe55d4  1      OPC=nop             
  nop                                #  12    0xe55d5  1      OPC=nop             
  nop                                #  13    0xe55d6  1      OPC=nop             
  nop                                #  14    0xe55d7  1      OPC=nop             
  nop                                #  15    0xe55d8  1      OPC=nop             
  nop                                #  16    0xe55d9  1      OPC=nop             
  nop                                #  17    0xe55da  1      OPC=nop             
  nop                                #  18    0xe55db  1      OPC=nop             
  nop                                #  19    0xe55dc  1      OPC=nop             
  nop                                #  20    0xe55dd  1      OPC=nop             
  nop                                #  21    0xe55de  1      OPC=nop             
  nop                                #  22    0xe55df  1      OPC=nop             
.L_e55e0:                            #        0xe55e0  0      OPC=<label>         
  movl %r12d, %r12d                  #  23    0xe55e0  3      OPC=movl_r32_r32    
  movl (%r15,%r12,1), %eax           #  24    0xe55e3  4      OPC=movl_r32_m32    
  movl %ebx, %ebx                    #  25    0xe55e7  2      OPC=movl_r32_r32    
  movsbl (%r15,%rbx,1), %esi         #  26    0xe55e9  5      OPC=movsbl_r32_m8   
  movl %r12d, %edi                   #  27    0xe55ee  3      OPC=movl_r32_r32    
  movl %eax, %eax                    #  28    0xe55f1  2      OPC=movl_r32_r32    
  movl 0x10(%r15,%rax,1), %eax       #  29    0xe55f3  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax             #  30    0xe55f8  6      OPC=andl_r32_imm32  
  nop                                #  31    0xe55fe  1      OPC=nop             
  nop                                #  32    0xe55ff  1      OPC=nop             
  nop                                #  33    0xe5600  1      OPC=nop             
  addq %r15, %rax                    #  34    0xe5601  3      OPC=addq_r64_r64    
  callq %rax                         #  35    0xe5604  2      OPC=callq_r64       
  movl %ebx, %ebx                    #  36    0xe5606  2      OPC=movl_r32_r32    
  movb %al, (%r15,%rbx,1)            #  37    0xe5608  4      OPC=movb_m8_r8      
  addl $0x1, %ebx                    #  38    0xe560c  3      OPC=addl_r32_imm8   
  cmpl %ebx, %r13d                   #  39    0xe560f  3      OPC=cmpl_r32_r32    
  ja .L_e55e0                        #  40    0xe5612  2      OPC=ja_label        
  nop                                #  41    0xe5614  1      OPC=nop             
  nop                                #  42    0xe5615  1      OPC=nop             
  nop                                #  43    0xe5616  1      OPC=nop             
  nop                                #  44    0xe5617  1      OPC=nop             
  nop                                #  45    0xe5618  1      OPC=nop             
  nop                                #  46    0xe5619  1      OPC=nop             
  nop                                #  47    0xe561a  1      OPC=nop             
  nop                                #  48    0xe561b  1      OPC=nop             
  nop                                #  49    0xe561c  1      OPC=nop             
  nop                                #  50    0xe561d  1      OPC=nop             
  nop                                #  51    0xe561e  1      OPC=nop             
  nop                                #  52    0xe561f  1      OPC=nop             
  nop                                #  53    0xe5620  1      OPC=nop             
  nop                                #  54    0xe5621  1      OPC=nop             
  nop                                #  55    0xe5622  1      OPC=nop             
  nop                                #  56    0xe5623  1      OPC=nop             
  nop                                #  57    0xe5624  1      OPC=nop             
  nop                                #  58    0xe5625  1      OPC=nop             
.L_e5620:                            #        0xe5626  0      OPC=<label>         
  popq %rbx                          #  59    0xe5626  1      OPC=popq_r64_1      
  popq %r12                          #  60    0xe5627  2      OPC=popq_r64_1      
  movl %r13d, %eax                   #  61    0xe5629  3      OPC=movl_r32_r32    
  popq %r13                          #  62    0xe562c  2      OPC=popq_r64_1      
  popq %r11                          #  63    0xe562e  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d            #  64    0xe5630  7      OPC=andl_r32_imm32  
  nop                                #  65    0xe5637  1      OPC=nop             
  nop                                #  66    0xe5638  1      OPC=nop             
  nop                                #  67    0xe5639  1      OPC=nop             
  nop                                #  68    0xe563a  1      OPC=nop             
  addq %r15, %r11                    #  69    0xe563b  3      OPC=addq_r64_r64    
  jmpq %r11                          #  70    0xe563e  3      OPC=jmpq_r64        
  nop                                #  71    0xe5641  1      OPC=nop             
  nop                                #  72    0xe5642  1      OPC=nop             
  nop                                #  73    0xe5643  1      OPC=nop             
  nop                                #  74    0xe5644  1      OPC=nop             
  nop                                #  75    0xe5645  1      OPC=nop             
  nop                                #  76    0xe5646  1      OPC=nop             
  nop                                #  77    0xe5647  1      OPC=nop             
  nop                                #  78    0xe5648  1      OPC=nop             
  nop                                #  79    0xe5649  1      OPC=nop             
  nop                                #  80    0xe564a  1      OPC=nop             
  nop                                #  81    0xe564b  1      OPC=nop             
  nop                                #  82    0xe564c  1      OPC=nop             
                                                                                  
.size _ZNKSt5ctypeIcE10do_tolowerEPcPKc, .-_ZNKSt5ctypeIcE10do_tolowerEPcPKc

